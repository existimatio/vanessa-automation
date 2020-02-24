# language: ru
# encoding: utf-8
#parent uf:
@UF3_формирование_features
#parent ua:
@UA33_преобразование_XML_в_Gherkin

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839

@tree

Функционал: Запись действий пользователя
 

Сценарий: Запись действий пользователя
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе
	
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я устанавливаю флаг с именем 'DebugLog2'
	И я перехожу к закладке с именем "ГруппаДополнительно"
	И я нажимаю на кнопку с именем 'ОткрытьПодключитьTestClient'

	Затем я жду, что в сообщениях пользователю будет подстрока "TestClient подключен" в течение 60 секунд

	И я нажимаю на кнопку с именем 'кнНачатьЗаписьДействийПользователя'
	И пауза 1
	И я нажимаю на кнопку с именем 'кнПриостановитьЗаписьДействийПользователя'
	И пауза 1
	И я нажимаю на кнопку с именем 'кнПродолжитьЗаписьДействийПользователя'
	И пауза 1
	И я нажимаю на кнопку с именем 'кнЗавершитьЗаписьДействийПользователя'
	И пауза 1

	Тогда элемент формы с именем "СгенерированныйСценарий" стал равен 
		| '#language: ru'                                                                |
		| ''                                                                             |
		| 'Функционал: <описание фичи>'                                                  |
		| ''                                                                             |
		| 'Как <Роль>'                                                                   |
		| 'Я хочу <описание функционала> '                                               |
		| 'Чтобы <бизнес-эффект> '                                                       |
		| ''                                                                             |
		| 'Контекст: '                                                                   |
		| '	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий' |
		| ''                                                                             |
		| ''                                                                             |
		| 'Сценарий: <описание сценария>'                                                |
		| ''                                                                             |
		| ''                                                                             |

	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"

	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

Сценарий: Закрыть TestClient
	И я закрываю TestClient "TM"	
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'