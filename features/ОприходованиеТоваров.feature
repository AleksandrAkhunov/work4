﻿# encoding: utf-8
# language: ru

Функционал: Оприходование товаров
	Как Оператор
	Хочу Оприходовать товар
	Чтобы Увеличились остатки на складе

Сценарий: Оприходование товара "Товар1" с количеством 10 шт
	Допустим в справочнике Товары есть товар "Товар1" и в справочнике "Контрагенты" есть контрагент "Поставщик"
	Когда я создаю новую приходную накладную
	Когда я выбираю контрагента поставщик
	Когда я добавляю в Товары строку 
	Когда я выбираю в новой строке "Товар1"
	Когда я ввожу в новой строке количество 10
	Когда я провожу документ
	Когда я открываю движения по регистру товары на складах
	Тогда Остаток на складе корректно увличился. в регистре есть движение с видом приход, товаром Товар1 и Количеством 10
