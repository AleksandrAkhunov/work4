﻿
&НаКлиенте
Процедура ДатаПриИзменении(Элемент)
	Объект.Акция = ПолучитьАкциюНаДату(Объект.Дата);
КонецПроцедуры


&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	Если Объект.Ссылка.Пустая() Тогда
		Объект.Акция = ПолучитьАкциюНаДату(Объект.Дата);
	КонецЕсли;
КонецПроцедуры

&НаСервере
Функция ПолучитьАкциюНаДату(ДатаАкции)
	Запрос = Новый Запрос;
	Запрос.УстановитьПараметр("ДатаАкции", ДатаАкции);
	Запрос.Текст = "
	|ВЫБРАТЬ
	|Акция
	|ИЗ РегистрСведений.ДействующаяАкция.СрезПоследних(&ДатаАкции)
	|";
	Выборка = Запрос.Выполнить().Выбрать();
	Если Выборка.Следующий() Тогда
		Возврат Выборка.Акция;
	Иначе
		Возврат Справочники.Акции.ПустаяСсылка();
	КонецЕсли;
КонецФункции

