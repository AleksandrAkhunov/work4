﻿# encoding: utf-8
# language: ru

@tree
Функционал: Работа с контрагентами
	Как программист
	Хочу чтобы обрабатывались контрагенты
	Чтобы поменялся справочник

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
Сценарий: Если нет элемента справочника с наименованием "Контрагент2", создает элемент с таким наименованием, а потом переименовывает его в "контрагент1"
	Допустим в справочнике нет элемента с наименованием "Контрагент2"
	Когда создаем элемент справочника с наименованием "Контрагент2"
	Тогда есть элемент справочника с наименованием "Контрагент2"
	Когда переименовываем элемент справочника с наименованием "Контрагент2" в "Контрагент1"
	Тогда есть элемент справочника с наименованием "Контрагент1"
Сценарий: если элементов справочника с наименованием "Контрагент1" больше 3, то удаляет все элементы с таким наименованием.
	Допустим в справочнике элементов с наименованием "Контрагент1" больше 3
	Когда удаляем все элементы с наименованием "Контрагент1"
	Тогда в справочнике нет элементов с наименованием "Контрагент1"
