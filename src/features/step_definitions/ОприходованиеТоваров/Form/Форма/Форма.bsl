﻿//начало текста модуля

///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯПодготоваливаюВспомогательныеДанные()","ЯПодготоваливаюВспомогательныеДанные","Допустим я подготоваливаю вспомогательные данные");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСправочникеЕстьТоварИВСправочникеЕстьКонтрагент(Парам01,Парам02,Парам03,Парам04)","ВСправочникеЕстьТоварИВСправочникеЕстьКонтрагент","Допустим в справочнике ""Товары"" есть товар ""Товар1"" и в справочнике ""Контрагенты"" есть контрагент ""Поставщик""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯСоздаюНовуюПриходнуюНакладную()","ЯСоздаюНовуюПриходнуюНакладную","Когда я создаю новую приходную накладную");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыбираюКонтрагентаПоставщик()","ЯВыбираюКонтрагентаПоставщик","Когда я выбираю контрагента поставщик");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯДобавляюВТоварыСтроку()","ЯДобавляюВТоварыСтроку","Когда я добавляю в Товары строку");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыбираюВНовойСтроке(Парам01)","ЯВыбираюВНовойСтроке","Когда я выбираю в новой строке ""Товар1""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВвожуВНовойСтрокеКоличество(Парам01)","ЯВвожуВНовойСтрокеКоличество","Когда я ввожу в новой строке количество 10");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯПровожуДокумент()","ЯПровожуДокумент","Когда я провожу документ");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯОткрываюДвиженияПоРегиструТоварыНаСкладах()","ЯОткрываюДвиженияПоРегиструТоварыНаСкладах","Когда я открываю движения по регистру товары на складах");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ОстатокНаСкладеКорректноУвличилсяВРегистреЕстьДвижениеСВидомПриходТоваромТовар1ИКоличеством(Парам01)","ОстатокНаСкладеКорректноУвличилсяВРегистреЕстьДвижениеСВидомПриходТоваромТовар1ИКоличеством","Тогда Остаток на складе корректно увличился. в регистре есть движение с видом приход, товаром Товар1 и Количеством 10");

	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//Допустим в справочнике "Товары" есть товар "Товар1" и в справочнике "Контрагенты" есть контрагент "Поставщик"
//@ВСправочникеЕстьТоварИВСправочникеЕстьКонтрагент(Парам01,Парам02,Парам03,Парам04)
Процедура ВСправочникеЕстьТоварИВСправочникеЕстьКонтрагент(Парам01,Парам02,Парам03,Парам04) Экспорт
	ЭлементТовары = утвПолучитьЭлементГруппуСправочника(Парам01,,Парам02);
	Ванесса.ПосмотретьЗначение(ЭлементТовары,Истина);
	ЭлементКонтрагенты = утвПолучитьЭлементГруппуСправочника(Парам03,,Парам04);
	Ванесса.ПосмотретьЗначение(ЭлементКонтрагенты,Истина);
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
//	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

&НаКлиенте
//Когда я создаю новую приходную накладную
//@ЯСоздаюНовуюПриходнуюНакладную()
Процедура ЯСоздаюНовуюПриходнуюНакладную() Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

&НаКлиенте
//Когда я выбираю контрагента поставщик
//@ЯВыбираюКонтрагентаПоставщик()
Процедура ЯВыбираюКонтрагентаПоставщик() Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

&НаКлиенте
//Когда я добавляю в Товары строку
//@ЯДобавляюВТоварыСтроку()
Процедура ЯДобавляюВТоварыСтроку() Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

&НаКлиенте
//Когда я выбираю в новой строке "Товар1"
//@ЯВыбираюВНовойСтроке(Парам01)
Процедура ЯВыбираюВНовойСтроке(Парам01) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

&НаКлиенте
//Когда я ввожу в новой строке количество 10
//@ЯВвожуВНовойСтрокеКоличество(Парам01)
Процедура ЯВвожуВНовойСтрокеКоличество(Парам01) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

&НаКлиенте
//Когда я провожу документ
//@ЯПровожуДокумент()
Процедура ЯПровожуДокумент() Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

&НаКлиенте
//Когда я открываю движения по регистру товары на складах
//@ЯОткрываюДвиженияПоРегиструТоварыНаСкладах()
Процедура ЯОткрываюДвиженияПоРегиструТоварыНаСкладах() Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

&НаКлиенте
//Тогда Остаток на складе корректно увличился. в регистре есть движение с видом приход, товаром Товар1 и Количеством 10
//@ОстатокНаСкладеКорректноУвличилсяВРегистреЕстьДвижениеСВидомПриходТоваромТовар1ИКоличеством(Парам01)
Процедура ОстатокНаСкладеКорректноУвличилсяВРегистреЕстьДвижениеСВидомПриходТоваромТовар1ИКоличеством(Парам01) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

//окончание текста модуля

&НаСервере
Функция утвПолучитьЭлементГруппуСправочника(ИмяСправочника, Код = "", Наименование = "", ИскатьГруппу = Ложь)
	ПредставлениеПоиска = "";
	
	Если Истина
		И ПустаяСтрока(Код)                      
		И ПустаяСтрока(Наименование)
		Тогда
		
		ВызватьИсключение "Не заполнено ни одно свойство поиска";
		
	ИначеЕсли Истина
		И ЗначениеЗаполнено(Код)
		И ЗначениеЗаполнено(Наименование)
		Тогда
		
		ПредставлениеПоиска = "коду """ + Код + """ и наименованию """ + Наименование + """";
		
	ИначеЕсли ЗначениеЗаполнено(Код) Тогда
		ПредставлениеПоиска = "коду """ + Код + """";
		
	ИначеЕсли ЗначениеЗаполнено(Наименование) Тогда
		ПредставлениеПоиска = "наименованию """ + Наименование + """";
		
	КонецЕсли;
	
	ТекстИсключения = "Не нашли #ГруппуИлиЭлемент справочника #ИмяСправочника по #ПредставлениеПоиска";
	
	ТекстИсключения = СтрЗаменить(ТекстИсключения, "#ГруппуИлиЭлемент", ?(ИскатьГруппу, "группу", "элемент"));
	ТекстИсключения = СтрЗаменить(ТекстИсключения, "#ИмяСправочника", ИмяСправочника);
	ТекстИсключения = СтрЗаменить(ТекстИсключения, "#ПредставлениеПоиска", ПредставлениеПоиска);
	
	Запрос = Новый Запрос;
	Запрос.Текст = 
	"ВЫБРАТЬ
	|	Справочник.Ссылка
	|ИЗ
	|	Справочник." + ИмяСправочника + " КАК Справочник
	|ГДЕ
	|	Справочник.ЭтоГруппа = &ИскатьГруппу
	|	" + ?(ПустаяСтрока(Код), "", "И Справочник.Код = &Код") + "
	|	" + ?(ПустаяСтрока(Наименование), "", "И Справочник.Наименование = &Наименование") + "
	|";
	
	Запрос.УстановитьПараметр("ИскатьГруппу", ИскатьГруппу);
	Запрос.УстановитьПараметр("Код", Код);
	Запрос.УстановитьПараметр("Наименование", Наименование);
	
	РезультатЗапроса = Запрос.Выполнить();
	Если РезультатЗапроса.Пустой() Тогда
		ВызватьИсключение ТекстИсключения;

	КонецЕсли;
	
	ВыборкаДетальныеЗаписи = РезультатЗапроса.Выбрать();
	ВыборкаДетальныеЗаписи.Следующий();

	Возврат ВыборкаДетальныеЗаписи.Ссылка;
КонецФункции
 
&НаКлиенте
Функция ПолучитьПутьКФайлОтносительноКаталогоFeatures(ИмяФайлаСРасширением)
	ПутьКФайлу = "";
	
	СостояниеVanessaBehavior = Ванесса.ПолучитьСостояниеVanessaBehavior();
	
	ПутьКТекущемуFeatureФайлу = СостояниеVanessaBehavior.ТекущаяФича.ПолныйПуть;
	
	ПутьКФайлу = Лев(ПутьКТекущемуFeatureФайлу, СтрНайти(ПутьКТекущемуFeatureФайлу, "features") - 1) + ИмяФайлаСРасширением;
	
	Возврат ПутьКФайлу;
КонецФункции

&НаКлиенте
Процедура ЗагрузитьFixtureИзМакета(ИмяМакета)
	Ванесса.ЗапретитьВыполнениеШагов();
	
	НачальноеИмяФайла = ПолучитьПутьКФайлОтносительноКаталогоFeatures("tools\Выгрузка и загрузка данных XML.epf");
	
	Адрес = "";
	
	НачатьПомещениеФайла(Новый ОписаниеОповещения("ЗагрузитьFixtureИзМакетаЗавершение", ЭтотОбъект, ИмяМакета), Адрес, НачальноеИмяФайла, Ложь);
КонецПроцедуры

&НаКлиенте
Процедура ЗагрузитьFixtureИзМакетаЗавершение(УдалосьПоместитьФайл, Адрес, ВыбранноеИмяФайла, ИмяМакета) Экспорт
	ЗагрузитьFixtureИзМакетаЗавершениеНаСервере(Адрес, ИмяМакета);
	
	Ванесса.ПродолжитьВыполнениеШагов();
КонецПроцедуры

&НаСервере
Процедура ЗагрузитьFixtureИзМакетаЗавершениеНаСервере(Адрес, ИмяМакета)
	ИмяВременногоФайла = ПолучитьИмяВременногоФайла();
	
	ДвоичныеДанные = ПолучитьИзВременногоХранилища(Адрес);
	ДвоичныеДанные.Записать(ИмяВременногоФайла);
	
	ВнешняяОбработка = ВнешниеОбработки.Создать(ИмяВременногоФайла, Ложь);
	
	ИмяВременногоФайла = ПолучитьИмяВременногоФайла();
	
	Текст = РеквизитФормыВЗначение("Объект").ПолучитьМакет(ИмяМакета).ПолучитьТекст();
	
	ВременныйДокумент = Новый ТекстовыйДокумент;
	ВременныйДокумент.УстановитьТекст(Текст);
	ВременныйДокумент.Записать(ИмяВременногоФайла, КодировкаТекста.UTF8);

	ВнешняяОбработка.ВыполнитьЗагрузку(ИмяВременногоФайла);
КонецПроцедуры

&НаКлиенте
//Допустим я подготоваливаю вспомогательные данные
//@ЯПодготоваливаюВспомогательныеДанные()
Процедура ЯПодготоваливаюВспомогательныеДанные() Экспорт
	ЗагрузитьFixtureИзМакета("Товары");
	ЗагрузитьFixtureИзМакета("Контрагенты");
КонецПроцедуры
