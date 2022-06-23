import argparse
from PyQt5 import QtWidgets

from backend import MainWindow_backend


def parse_args():
    parser = argparse.ArgumentParser(description='DBMS Final Project')
    parser.add_argument('-u', type=str, help='the username of the database')
    parser.add_argument('-p', type=str, help='the password of the database')
    parser.add_argument('-db', type=str, help='the name of the database')

    return parser.parse_args()


if __name__ == "__main__":
    import sys

    args = parse_args()
    if args.u is None:
        print('Please enter the username of database.')
    elif args.p is None:
        print('Please enter the password of database.')
    elif args.db is None:
        print('Please enter the name of database.')
    else:
        app = QtWidgets.QApplication(sys.argv)
        window = MainWindow_backend(args.u, args.p, args.db)
        window.show()
        sys.exit(app.exec_())
