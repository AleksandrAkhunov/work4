﻿# encoding: utf-8
# language: ru

Функционал: Работа с контрагентами
	Как программист
	Хочу чтобы обрабатывались контрагенты
	Чтобы поменялся справочник

Сценарий: Если нет элемента справочника с наименованием "контрагент2", создает элемент с таким наименованием, а потом переименовывает его в "контрагент1"
	Допустим в справочнике нет элемента с наименованием "контрагент2"
	Когда 
	Тогда создаем элемент справочника с наименованием "Контрагент2"
	ТОгда переименовываем элемент справочника с наименованием "Контрагент" в "Контрагент1"
