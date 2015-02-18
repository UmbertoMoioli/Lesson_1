**Generali**
*Trattare TAs come dei colleghi. Essere specifici e dettagliati nelle domande.*
*La perseveranza nel debugging e nel test è la cosa più importante.*
*Quando si hanno dubbi, provare con irb*
*Imparare bene differenze tra metodi importanti come .each o .select o .pop o .uniq o .unshift, con eventuali uso di ! *
*Usare le soluzione per sbloccarsi quando hai problema.*
*Usare lo "pseudo code" per fare ipotesi su problemi che magari non si sa risolvere sintatticamente*
*Utilizzare un file di supporto per verificare la portata delle variabili dentro e fuori dai loop do, dagli if, dai metodi...*

**Code Review**
*Scegliere nomi lunghi e descrittivi per le variabili*
*I metodi dovrebbero fare una cosa per volta, devono essere corti.
  *decidere se deve ritornare un valore oppure se deve moficare qualcosa. Non tutti e due.
  *Meglio se ritornano un valore, questo è ideale*
  *Meglio dividere dove possibile, rende le cose più semplici e riutilizzabili*
  *Se un metodo mostra qualcosa e basta, magari usare diplay_... o print_...* 
*Quando si usa "when...do" bisogna ricordarsi di inizializzare la variabile fuori dal loop se la usiamo come condizione*
  *oppure si pul usare "begin...end while"*