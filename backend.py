from PyQt5 import QtWidgets, QtGui
import pymysql

from frontend import Ui_MainWindow

class MainWindow_backend(QtWidgets.QMainWindow):
    def __init__(self, db_user, db_password, db_name):
        super().__init__()
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
        self.db = pymysql.connect(user=f'{db_user}', password=f'{db_password}', database=f'{db_name}')

        self.ui.barBox.currentIndexChanged.connect(self.show_barBox)
        self.ui.inputText.textChanged.connect(self.show_inputText)
        self.ui.serachButton.clicked.connect(self.db_query)


    def show_barBox(self):
        if self.ui.barBox.currentText() == 'SELECT-FROM-WHERE':
            self.ui.textBrowser.setText("SELECT * FROM sells WHERE shopID=10;")
        elif self.ui.barBox.currentText() == 'DELETE':
            self.ui.textBrowser.setText("DELETE FROM sells WHERE ShopID=10 AND TeaID=4;")
        elif self.ui.barBox.currentText() == 'INSERT':
            self.ui.textBrowser.setText("INSERT INTO sells (ShopID, TeaID, Date, Number) VALUES (10, 4, '2022-02-02', 20);")
        elif self.ui.barBox.currentText() == 'UPDATE':
            self.ui.textBrowser.setText("UPDATE sells SET Number=28 WHERE ShopID=10 AND TeaID=4 AND Date='2022-02-02';")
        elif self.ui.barBox.currentText() == 'IN':
            self.ui.textBrowser.setText("SELECT * FROM sells WHERE Date IN ('2022-02-01');")
        elif self.ui.barBox.currentText() == 'NOT IN':
            self.ui.textBrowser.setText("SELECT * FROM sells WHERE ShopID NOT IN (SELECT ShopID FROM buys_from WHERE SupplierID=1);")
        elif self.ui.barBox.currentText() == 'EXISTS':
            self.ui.textBrowser.setText("SELECT * FROM sells WHERE EXISTS (SELECT * FROM buys_from WHERE SupplierID=1 AND ShopID=sells.ShopID);")
        elif self.ui.barBox.currentText() == 'NOT EXISTS':
            self.ui.textBrowser.setText("SELECT * FROM sells WHERE NOT EXISTS (SELECT ShopID FROM buys_from WHERE SupplierID=1 AND ShopID=sells.ShopID);")
        elif self.ui.barBox.currentText() == 'COUNT':
            self.ui.textBrowser.setText("SELECT COUNT(*) FROM sells WHERE Date='2022-02-01' AND ShopID=10;")
        elif self.ui.barBox.currentText() == 'SUM':
            self.ui.textBrowser.setText("SELECT SUM(Number) FROM sells WHERE Date='2022-02-01' AND ShopID=10;")
        elif self.ui.barBox.currentText() == 'MAX':
            self.ui.textBrowser.setText("SELECT MAX(Number) FROM sells WHERE Date='2022-02-01' AND ShopID=10;")
        elif self.ui.barBox.currentText() == 'MIN':
            self.ui.textBrowser.setText("SELECT MIN(Number) FROM sells WHERE Date='2022-02-01' AND ShopID=10;")
        elif self.ui.barBox.currentText() == 'AVG':
            self.ui.textBrowser.setText("SELECT AVG(Number) FROM sells WHERE Date='2022-02-01' AND ShopID=10;")
        elif self.ui.barBox.currentText() == 'HAVING':
            self.ui.textBrowser.setText("SELECT TeaID, SUM(Number) FROM sells GROUP BY TeaID HAVING SUM(Number)>300;")

    def show_inputText(self):
        self.ui.textBrowser.setText(self.ui.inputText.toPlainText())

    def db_query(self):
        cursor = self.db.cursor()
        sql = self.ui.textBrowser.toPlainText()

        try:
            cursor.execute(sql)

            # DELETE, INSERT, and UPDATE need to commit
            if (sql.find('DELETE') != -1) or (sql.find('INSERT') != -1) or (sql.find('UPDATE') != -1):
                self.db.commit()
                display_db_message(f'{sql[:6]} query successfully, now we will show the new table.')
                if sql.split()[2].islower() == True:
                    new_sql = f"SELECT * FROM {sql.split()[2]}"
                else:
                    new_sql = f"SELECT * FROM {sql.split()[1]}"
                cursor.execute(new_sql)

            results = cursor.fetchall()

            # Table settings
            self.ui.tableWidget.setRowCount(len(results))
            self.ui.tableWidget.setColumnCount(len(results[0]))
            columns = [desc[0] for desc in cursor.description]
            self.ui.tableWidget.setHorizontalHeaderLabels(columns)
            self.ui.tableWidget.horizontalHeader().setSectionResizeMode(QtWidgets.QHeaderView.Stretch)
            for c in range(len(columns)):
                self.ui.tableWidget.horizontalHeader().setSectionResizeMode(c, QtWidgets.QHeaderView.ResizeToContents)
            self.ui.tableWidget.setEditTriggers(QtWidgets.QAbstractItemView.NoEditTriggers)
            self.ui.tableWidget.setSortingEnabled(True)

            for r, row in enumerate(results):
                for c, item in enumerate(row):
                    self.ui.tableWidget.setItem(r, c, QtWidgets.QTableWidgetItem(str(item)))

        except:
            display_error_message('No data found for this query!')


def display_error_message(message):
    msgbox = QtWidgets.QMessageBox()
    icon = QtGui.QIcon()
    icon.addPixmap(QtGui.QPixmap('static/error.png'), QtGui.QIcon.Normal, QtGui.QIcon.Off)
    msgbox.setWindowIcon(icon)
    msgbox.setWindowTitle('SQL Information')
    msgbox.setText(message)
    msgbox.setStandardButtons(QtWidgets.QMessageBox.StandardButton.Yes)
    button = msgbox.button(QtWidgets.QMessageBox.StandardButton.Yes)
    button.setText('OK')
    msgbox.exec()


def display_db_message(message):
    msgbox = QtWidgets.QMessageBox()
    icon = QtGui.QIcon()
    icon.addPixmap(QtGui.QPixmap('static/database.png'), QtGui.QIcon.Normal, QtGui.QIcon.Off)
    msgbox.setWindowIcon(icon)
    msgbox.setWindowTitle('SQL Information')
    msgbox.setText(message)
    msgbox.setStandardButtons(QtWidgets.QMessageBox.StandardButton.Yes)
    button = msgbox.button(QtWidgets.QMessageBox.StandardButton.Yes)
    button.setText('OK')
    msgbox.exec()