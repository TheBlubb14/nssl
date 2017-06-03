import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

final _keepAnalysisHappy = Intl.defaultLocale;

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'de';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => {
    "options" : MessageLookupByLibrary.simpleMessage("Optionen"),
    "changeTheme" : MessageLookupByLibrary.simpleMessage("Theme ändern"),
    "scanPB" : MessageLookupByLibrary.simpleMessage("SCANNEN"),
    "addPB" : MessageLookupByLibrary.simpleMessage("ADD"), //TODO find good german word
    "searchPB" : MessageLookupByLibrary.simpleMessage("SUCHEN"),
    "deleteCrossedOutPB" : MessageLookupByLibrary.simpleMessage("LÖSCHE MAKIERTE"),
    "addListPB" : MessageLookupByLibrary.simpleMessage("LISTE HINZUFÜGEN"),
    "contributors" : MessageLookupByLibrary.simpleMessage("Teilnehmer"),
    "rename" : MessageLookupByLibrary.simpleMessage("Umbenennen"),
    "remove" : MessageLookupByLibrary.simpleMessage("Entfernen"),
    "addProduct" : MessageLookupByLibrary.simpleMessage("Artikel hinzufügen"),
    "addProductWithoutSearch" : MessageLookupByLibrary.simpleMessage("Name des Artikels"),
    "productName" : MessageLookupByLibrary.simpleMessage("Artikelname"),
    "messageDeleteAllCrossedOut" : MessageLookupByLibrary.simpleMessage("Alle durchgestrichenen Artikel wurden gelöscht"),
    "undo" : MessageLookupByLibrary.simpleMessage("RÜCKG."),
    "removedShoppingListMessage" : MessageLookupByLibrary.simpleMessage(" entfernt "), //\${User.shoppingLists}
    "noListsInDrawerMessage" : MessageLookupByLibrary.simpleMessage(" Hier werden deine Listen angezeigt"),
    "notLoggedInYet" : MessageLookupByLibrary.simpleMessage("Noch nicht eingeloggt"),
    "newNameOfListHint" : MessageLookupByLibrary.simpleMessage("Neuer Listenname"),
    "listName" : MessageLookupByLibrary.simpleMessage("Listenname"),
    "renameListTitle" : MessageLookupByLibrary.simpleMessage("Liste umbenennen"),
    "renameListHint" : MessageLookupByLibrary.simpleMessage("Der neue Name der Liste"),
    "addNewListTitle" : MessageLookupByLibrary.simpleMessage("Füge eine neue Liste hinzu"),
    "youHaveActionItemMessage" : MessageLookupByLibrary.simpleMessage('Du hast '), //\$action \$item
    "archived" : MessageLookupByLibrary.simpleMessage('archiviert'),
    "deleted" : MessageLookupByLibrary.simpleMessage('gelöscht'),
    "actionsForMessage" : MessageLookupByLibrary.simpleMessage("archiviert" "gelöscht"),
    "youHaveActionNameMessage" : MessageLookupByLibrary.simpleMessage("Du hast "),//\${s.name} \$action
    "demoteMenu" : MessageLookupByLibrary.simpleMessage("Degradieren"),
    "promoteMenu" : MessageLookupByLibrary.simpleMessage("Befördern"),
    "contributorUser" : MessageLookupByLibrary.simpleMessage(" - User"),
    "contributorAdmin" : MessageLookupByLibrary.simpleMessage(" - Admin"),
    "genericErrorMessageSnackbar" : MessageLookupByLibrary.simpleMessage("Etwas unerwartetes ist passiert!\n "), //\${z.error}
    "nameOfNewContributorHint" : MessageLookupByLibrary.simpleMessage("Name des neuen Teilnehmers"),
    "wasRemovedSuccessfullyMessage" : MessageLookupByLibrary.simpleMessage(" wurde erfolgreich gelöscht"),
    "loginSuccessfulMessage" : MessageLookupByLibrary.simpleMessage("Login erfolgreich"),
    "nameEmailRequiredError" : MessageLookupByLibrary.simpleMessage("Name oder EMail wird benötigt."),
    "usernameToShortError" : MessageLookupByLibrary.simpleMessage("Der Benutzername muss auf mindestens 4 Zeichen bestehen"),
    "emailRequiredError" : MessageLookupByLibrary.simpleMessage("EMail ist erforderlich"),
    "emailIncorrectFormatError" : MessageLookupByLibrary.simpleMessage("Die EMail-Adresse scheint ein falsches Format zu haben"),
    "chooseAPassword" : MessageLookupByLibrary.simpleMessage("Bitte ein Passwort eingeben"),
    "login" : MessageLookupByLibrary.simpleMessage("Login"),
    "usernameOrEmailForLoginHint" : MessageLookupByLibrary.simpleMessage("Benutzername oder EMail kann für's einloggen genutzt werden"),
    "usernameOrEmailTitle" : MessageLookupByLibrary.simpleMessage("Benutzername oder EMail"),
    "emailTitle" : MessageLookupByLibrary.simpleMessage('EMail'),
    "choosenPasswordHint" : MessageLookupByLibrary.simpleMessage("Dein gewähltes Passwort"),
    "password" : MessageLookupByLibrary.simpleMessage("Passwort"),
    "loginButton" : MessageLookupByLibrary.simpleMessage("LOGIN"),
    "registerTextOnLogin" : MessageLookupByLibrary.simpleMessage("Du hast noch keinen Account? Erstelle jetzt einen."),
    "usernameEmptyError" : MessageLookupByLibrary.simpleMessage("Benutzername muss ausgefüllt sein"),
    "passwordEmptyError" : MessageLookupByLibrary.simpleMessage("Passwort muss ausgefüllt sein"),
    "emailEmptyError" : MessageLookupByLibrary.simpleMessage("EMail muss ausgefüllt sein"),
    "reenterPasswordError" : MessageLookupByLibrary.simpleMessage("Die Passwörter stimmen nicht überein oder sind leer"),
    "unknownUsernameError" : MessageLookupByLibrary.simpleMessage("Es stimmt etwas mit deinem Benutzername nicht"),
    "unknownEmailError" : MessageLookupByLibrary.simpleMessage("Es stimmt etwas mit deiner EMail nicht"),
    "unknownPasswordError" : MessageLookupByLibrary.simpleMessage("Es stimmt etwas mit deinem Passwort nicht"),
    "unknownReenterPasswordError" : MessageLookupByLibrary.simpleMessage("Es stimmt etwas mit dem wiederholten Passwort nicht"),
    "registrationSuccessfulMessage" : MessageLookupByLibrary.simpleMessage("Registrierung erfolgreich"),
    "registrationTitle" : MessageLookupByLibrary.simpleMessage("Registrierung"),
    "nameEmptyError" : MessageLookupByLibrary.simpleMessage("Name ist erforderlich"),
    "chooseAPasswordPrompt" : MessageLookupByLibrary.simpleMessage("Bitte gib ein Passwort ein"),
    "reenterPasswordPrompt" : MessageLookupByLibrary.simpleMessage("Bitte gib dein Passwort erneut ein"),
    "passwordsDontMatchError" : MessageLookupByLibrary.simpleMessage("Die Passwörter stimmen nicht überein"),
    "usernameRegisterHint" : MessageLookupByLibrary.simpleMessage("Kann zum einloggen und zum gefunden werden genutzt werden"),
    "username" : MessageLookupByLibrary.simpleMessage("Benutzername"),
    "emailRegisterHint" : MessageLookupByLibrary.simpleMessage("Kann zum einloggen und zum gefunden werden genutzt werden"),
    "passwordRegisterHint" : MessageLookupByLibrary.simpleMessage("Das Passwort schützt deinen Account"),
    "retypePasswordHint" : MessageLookupByLibrary.simpleMessage("Bitte wiederhole dein Passwort um Fehler zu vermeiden"),
    "retypePasswordTitle" : MessageLookupByLibrary.simpleMessage("Passwortwiederholung"),
    "registerButton" : MessageLookupByLibrary.simpleMessage("REGISTRIEREN"),
    "discardNewProduct" : MessageLookupByLibrary.simpleMessage("Änderungen verwerfen?"),
    "cancelButton" : MessageLookupByLibrary.simpleMessage("ABBRECHEN"),
    "acceptButton" : MessageLookupByLibrary.simpleMessage('ANNEHMEN'),
    "discardButton" : MessageLookupByLibrary.simpleMessage("VERWERFEN"),
    "fixErrorsBeforeSubmittingPrompt" : MessageLookupByLibrary.simpleMessage("Bitte behebe die Fehler, gekennzeichnet in Rot"),
    "newProductTitle" : MessageLookupByLibrary.simpleMessage("Neues Produkt"),
    "saveButton" : MessageLookupByLibrary.simpleMessage("SPEICHERN"),
    "newProductName" : MessageLookupByLibrary.simpleMessage("Produktname *"),
    "newProductNameHint" : MessageLookupByLibrary.simpleMessage("Was steht auf der Verpackung?"),
    "newProductBrandName" : MessageLookupByLibrary.simpleMessage("Markenname"),
    "newProductBrandNameHint" : MessageLookupByLibrary.simpleMessage("Von welcher Marke ist das Produkt?"),
    "newProductWeight" : MessageLookupByLibrary.simpleMessage("Menge mit Einheit"),
    "newProductWeightHint" : MessageLookupByLibrary.simpleMessage("Zum Beispiel: 1,5l oder 100g"),
    "newProductAddToList" : MessageLookupByLibrary.simpleMessage("Füge es der aktuellen Liste hinzu"),
    "newProductStarExplanation" : MessageLookupByLibrary.simpleMessage("* kennzeichnet die benötigten Felder"),
    "fieldRequiredError" : MessageLookupByLibrary.simpleMessage("Dieses Feld wird benötigt!"),
    "newProductNameToShort" : MessageLookupByLibrary.simpleMessage("Dieser Name scheint zu kurz zu sein"),
    "addedProduct" : MessageLookupByLibrary.simpleMessage(' hinzugefügt'), //"\$name"
    "productWasAlreadyInList" : MessageLookupByLibrary.simpleMessage(' ist bereits in der Liste. Die Menge wurde um 1 erhöht'), //"\$name" ist
    "searchProductHint" : MessageLookupByLibrary.simpleMessage("Produktsuche"),
    "noMoreProductsMessage" : MessageLookupByLibrary.simpleMessage("Es konnten keine weiteren Produkte mit dem Namen gefunden werden"),
    "codeText" : MessageLookupByLibrary.simpleMessage("Code: "),
    "removed" : MessageLookupByLibrary.simpleMessage("entfernt"),
  };
}