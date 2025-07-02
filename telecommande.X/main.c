/* 
programme décodeur télécommande protocole NICE FLOR-S / CAME / Somfy RTS
NICE FLOR-S / CAME / Somfy protocol receiver remote control decoder program
MPLAB X IDE v6.25
   
Processeur pic 18F26K80 
  Mémoire programme 64Ko
  Mémoire RAM 3648 octets
  Mémoire EPROM int 1ko : contient le fichier KI / contains KI file
Mémoire EPROM ext de 128Ko 24LC1026 I2C / contient le fichier de codes nice flors-s / contains nice flor-s file codes

Pour ne pas écraser l'eprom interne à chaque programmation du pic:
To avoid overwriting the internal EPROM each time the pic is programmed:
dans Option/pickit5 : Memories to programm
allow pickit5 to select memory
preserve eprom memory
memory range : 0-3ff
 
liaison UART : 9600,n,8,1 / 230240,n,8,1
Config dans MCC: 
 UART :
 aync_noninverted_sync_inverted
 DataReceive Polarity : non_inverted  à vérifier
 HS mode car c'est un quartz (16MHz)
 SOSC = oscillateur secondaire, non utilisé
 FOSC = oscillateur primaire à quartz, utiisé
  LP : quartz de 32 kHz
  XT : quartz de 4 MHz
  HS : quartz >4 MHz
  
UART :             230400    115200      9600
SPBRGH1/SPBRG1 = 0x00/0x44  0x00/0x8A  0x06/0x82
la vitesse de 230400 est presque ok pour le debug, en dessous, on mesure mal
éviter d'utiliser l'UART pendant l'acquisition du signal radio même en 230400 bauds, ca fausse l'acquisition.

A speed of 230400 is nearly ok for debugging ; below this speed, the measurement is poor.
Avoid using the UART during radio signal acquisition, even at 230400 baud, as this will distort the acquisition.
 
Bus I2C à 400 kHz
EPROM 24LC1026 = 2x64Ko: Adresse I2C 1010 A2 A1 B RW  = 1010 0000 = 0xA0  

Le contenu de l'eprom des codes nice flor-s est ici:
the eprom-codes nice flor-s is here:
https://github.com/Jev1337/NiceFlor-Encoder/blob/main/C%20Version/ArduinoC/codes.h
ou dans ce projet : codes.bin

En eprom interne / in internal eprom
un bloc de 256 octets : nice_flor_s_table_ki[256]
ki.bin
 
Plan d'adressage de l'eeprom interne:
Internal EEPROM mapping:
 0x000 - 0x0ff : codes KI de niceflor-s / KI codes niceflor-s
 0x100       : numéro série télécommande n=1 (32 bits) / serial #, remote 1 / low to high bytes
 0x104       : télécommande n=2 : serial #, remote 2
 0x108       : 3
 0x10C       : 4
 0x110       : 5
 0x114       : 6
 0x118       : 7
 0x11C       : 8
 0x120       : 9
 0x124       ; 
 
 0x128       ; 11
 0x12c       ; 12 
 .....
 0x14c       ; 20    = (n-1) * 4 + 0x100
 .. jusque 12 télécommandes / up to 12 remotes
 
Récepteurs testés / Tested receivers :
modulations ASK et OOK / both ASK and OOK
RFM210LCF 
RBX6 
RX500                   ASK   -108dBm
RFM02 (chip CMT2210LC)  OOK only

Récepteurs FSK : 
HM-R-433 ??? marche pas sur cardin  (5?) Sensibilité : -109 dBm, ne décode rien....!
RC-RFSK1-433N  Radiocontrolli (8?) Sensibilité : -118 dBm
RXB15                         (2?) Sensibilité : -108 dBm ou -118dBm suivant sources. Introuvable au détail. Unavailable on retail
Dickert HQFM433P-50           (30?) récepteur cardin "officiel" à 15 broches - works with fobloqf
1=5V 2=0V 3=ANT 10,12,15=au 5V  7,11=0V  13=PDO peak detector output, ne pas relier.  14=data
 
----------------------------------------------------------
Protocole Nice-flors (radio ASK) : protocole assez sophistiqué qui nécessite une table de 
décodage de 65535 mots, et une table de 256 octets.
Quite sophisticated protocol, requires a 65535 words decoding table and a 256 bytes table.
fonctionne avec les récepteurs RXB6 / works with receivers : RXB6 & RFM210LCF
https://github.com/Jev1337/NiceFlor-Encoder/tree/main

  code roulant de 52 bits / 52 bits rolling code
  1 bit silence de 18500 µs (37 x 500µs)
  2 bits début de 1500 µs  (3 x 500 µs)
  les bits du message:
  1 bit à 1 est constitué de deux signaux :  500µs puis 1000µs
  1 bit à 0 est constitué de deux signaux : 1000µs puis  500µs
  1 bit 1500 µs de fin
 
exemples de codes
transmis par télécommande 52 bits / 7 octets décodés brut (b0 b6)
remote transmits 52 bits / 7 bytes raw decoded (b0-b6)
  E3052 39A7FA15 Decode=1/CF/AD/C6/58/5/EA
  E2052 39A7FA15 Decode=1/DF/AD/C6/58/5/EA
  E5052 39A7FA15 Decode=1/AF/AD/C6/58/5/EA
  E4052 39A7FA15 Decode=1/BF/AD/C6/58/5/EA

B2-B3 est le code courant envoyé par la télécommande. Ce code se trouve dans l'eprom 128Ko. Son index sert de clé de décodage.
B2-B3 is the current code sent by the remote device. This code is within the 128kb eprom. The code index is the decoding key.

7 octets décodés bruts / numéro de série / bouton / index code / répétition
(b0-b6)                  télécommande
7 raw decoded bytes    / serial remote  / button / index code / repeat
ok  1/db/52/cc/4c/11/fe/ Serial=0295C827,Bouton=1,Code=1946,repete=3
ok  1/c8/38/e7/cf/92/7d/ Serial=0295C827,Bouton=1,Code=1947,repete=2
ok  2/c3/61/62/14/49/a6/ Serial=0295C827,Bouton=2,Code=1948,repete=1
ok  2/83/61/62/14/49/a6/ Serial=0295C827,Bouton=2,Code=1948,repete=5

Exemples d'erreurs / Error examples :
EZ41     : bit start ou stop mal placé, inattendu en position 41
         : unexpected start or stop bit in position 41
EF101    : erreur de longueur de bit reçu pendant les données en position 101
         : length duration bit error during datas in position 101
EA=1250  : erreur A de symétrie dans le motif des données (rencontré 500/500 µs au lieu de 500/1000µs)
         : 1250 est la valeur du TMR0
         : error A symétrical frame in data (encountered 500/500 µs instead of 500/1000µs)
         : 1250 is the TMR0 value
EB=2500  : erreur B de symétrie dans les données (rencontré 1000/1000 au lieu de 1000/500µs)
         : error B symétrical frame in data (encountered 1000/1000 µs instead of 1000/500µs)

Décodage correct / correct decoding :
NumSer=0295C827,Bouton=1 T1 ok  <-- télécommande 1 reconnue car enregistrée / remote 1 recognized
NumSer=027588B4,Bouton=2 T0     <-- télécommande 0 inconnue reçue / remote 0 unknown

documentation télécommandes:
https://www.cliffsnotes.com/study-notes/23860179 
 
Pour Nice flors: pour lire les 128ko de l'eprom ext (quand on cherche le code de décodage), il faut jusque 7s , trop long pour un décodage.
donc on utilise l'ancien code transmis (par télécommande) pour "prévoir" le suivant qui est incrémenté de 1, qui doit
se trouver dans les 128 octets suivants.
For nice flors: reading the 128kB of the ext eprom (when fetching the decoding code) takes up to 7s, too long for decoding.
So we use the previous transmitted code (per remote) to "predict" the next one, which is incremented by 1, 
and have to be inside the next 128 ones.
 
---------------------------------------------------
Protocole (radio FM) CARDIN S449 :
cardin S449 utilise le protocole FSK /  cardin S449 uses the FSK protocol
64 bits keeloq
utiliser le récepteur Dickert HQFM433P-50 
https://cargeek.live/docs/Sec_Analysis_Garage_Door_XXxiOwB.pdf
https://github.com/merbanan/rtl_433/blob/master/src/devices/cardin.c
 
---------------------------------------------------
Protocole CAME (radio OOK) protocol: 
fonctionne avec les récepteurs / work with receivers : RXB6 & RFM210LCF-A 
Code fixe 26 bits / Static 26 bits code
https://github.com/jehy/arduino-came-reader
https://github.com/psa-jforestier/rtl_433_tests/tree/master/tests/Came/TOP432
https://github.com/merbanan/rtl_433/issues/1452

-------------------------------------------------
Protocole Somfy RTS
Code roulant simple de 56 bits.
Simple 56 bits rolling code.
https://github.com/Legion2/Somfy_Remote_Lib
https://pushstack.wordpress.com/somfy-rts-protocol/

--------------------------------------------------
Protocole FoBloqf (FM) de rfsolutions.co.uk
Utilise un Keeloq
utiliser le récepteur Dickert HQFM433P-50
code à 56 bits
-------------------------------------------------- 
  
Pour apprendre une nouvelle télécommande : 
  appui court sur le bouton (la led clignote) et activer la télécommande dans les 5s.
Pour supprimer toutes les télécommandes :
  appui long de 5s : la led s'allume 3s.

To learn a new remote :
  short press (led is blinking) then press on remote button within 5s.
To delete all remotes ;
  5s long press : led light for 3s.
*/

#include "mcc_generated_files/system/system.h"
#include <string.h>
#include "stdlib.h"

#define debugxmodem 0
#define francais    1    // choisissez votre langue
#define english     0    // choose your language

#define led     RC0     // sortie
#define rts     RC1     // sortie - not used : UART protocole rts/cts - vers CTS PC : bloque l'envoi du PC
#define cts     RC2     // entrée - not used : UART protocole rts/cts - de PC : bloque l'envoi vers le PC
#define enable  RA3     // enable récepteur HM-R-433
#define rel1    RA5     // commande bobine du relais / relay coil command
#define MAX_COMMAND_LEN       (8U)
#define LINEFEED_CHAR         ((uint8_t)'\n')
#define CARRIAGERETURN_CHAR   ((uint8_t)'\r')
#define EpromI2C 0xA0 >>1     // Adresse I2C - BO en bit 1 (avant décalage) pour le bloc 0/1
#define maxtel  20       // nombre de télécommandes maxi

#define KeeLoq_NLF    0x3A5C742E  // clé de 32 bits
#define bit(x,n) (((x)>>(n))&1)
#define g5(x,a,b,c,d,e)	(bit(x,a)+bit(x,b)*2+bit(x,c)*4+bit(x,d)*8+bit(x,e)*16)
// KEY for keeloq algorithme must be same as transmiter key, 64bit LSB-first
uint8_t key[] = { 0x56, 0x4a, 0xbc, 0x07, 0x57, 0x1e, 0x62, 0x94 };

// CAME éléments radio / radio items
// modulation HF AM-OOK (tout ou rien AM)
const uint32_t silenceC=29690;  // 14845 µs silent
//const uint32_t debutbitC=2660;  // 1280 µs start
const uint32_t bit0C=640;       // 320 µs  
const uint32_t bit1C=1280;      // 640 µs
const uint32_t toleranceC=170;

// CARDIN non finalisé, nécessite un récepteur FM-FSK
// requires a FM-FSK receiver
const uint32_t silenceD=135400; //16520µs; 
const uint32_t debutbitD=8020;  // 4000µs
const uint32_t bit0D=856;       // 730 µs   
const uint32_t bit1D=1560;      // 500 µs 
const uint32_t toleranceD=250;  // 250 grande dispersion sur cardin

// Fobloqf pas encore traité, nécessite un récepteur FM-FSK
// requires a FM-FSK receiver
const uint32_t silenceF=6800;   //3x3400µs silence
const uint32_t debutbitF=3140;  // start 1570µs
const uint32_t bit0F=790;       // 390 µs     
const uint32_t bit1F=1570;      // 785 µs 
const uint32_t toleranceF=150;

// NiceFLors éléments radio / radio items
// modulation HF AM-ASK (Amplitude shift keying)
const uint32_t silence=37776;   // 18888 µs silent
const uint32_t debutbit=2979;   // 1500 µs start
const uint32_t bit0=958;        // 500 µs  
const uint32_t bit1=1962;       // 1000 µs
const uint32_t tolerance=280;

// Somfy RTS
const uint32_t silenceS=5084;   // 2416 µs silent
const uint32_t debutbitS=9600;  // 4550 µs start
const uint32_t bit0S=1317;      // 604 µs
const uint32_t bit1S=2614;      // 1208 µs 
const uint32_t toleranceS=220;


// protocoles
const uint8_t  prot_niceflors=1;
const uint8_t  prot_came=2;
const uint8_t  prot_cardin=3;
const uint8_t  prot_somfy=4;
const uint8_t  prot_fobloqf=5;

uint8_t b0,b1,b2,b3,b4,b5,b6;  // codes bruts de la télécommande niceflors et somfy / raw remote niceflors and somfy codes
char          chaine[50];
uint8_t       i2cdata[130];
uint8_t       debug=0,protocole;
uint8_t       i2cread[130] = {};
uint32_t      vitesse[2]={9600,230400};
uint8_t       bufferRx[130] ={};
uint32_t      mesure_bits[200];
uint8_t       mesure_error[200];  // 1=bit mal placé  2=erreur de symétrie  3=longueur inconnue bit 
uint8_t       compteur,timeout,erreur,erreurI2C,repete,BoutonActif=0;
uint8_t       rien,Rx_prec,waitCounter,pak,pakcom,pvitesse,bouton,nbreSync;
uint16_t      compt,crc,crcrecu,indexcode,dureeS,dureeStart1;
uint64_t      code,tpsvalidetelecom,serial;
uint32_t      duree=0,deborde=0,anc_duree,i,trame,tpsbouton;
static uint8_t command[MAX_COMMAND_LEN];
static uint8_t index=0;
static uint8_t readMessage;
bool          recu=LOW,bitDebut=LOW,bitSilence=LOW,bitPrec=LOW,AncBp,telegram=LOW,tramebits=LOW;
bool          aff_enr=LOW,rx,SilenceSomfy,consecutif;
uint16_t      NbreBits,NbreBitsMsg,nb,Nb0;
uint16_t      valt0;
uint16_t      indexCodeRecu[maxtel+1];  // codes recus des télécommandes 1 à maxtel

// debug mode xmodem
#if debugxmodem
  uint16_t adresses[1024];
  uint8_t numpak[700];
#endif
  
  
void raz_bits()
{
  telegram=LOW;
  bitDebut=LOW;
  tramebits=LOW;
  bitSilence=LOW;  
}

void fin_came()
{
  raz_bits();
  nb=NbreBits;
  telegram=LOW;
  bitDebut=LOW;
  tramebits=LOW;
  bitSilence=LOW;
  recu=HIGH;
}

void fin_cardin()
{
  raz_bits();
  nb=NbreBits;
  recu=HIGH;
}

void fin_somfy()
{
  raz_bits();
  nb=NbreBitsMsg;
  telegram=LOW;
  bitDebut=LOW;
  tramebits=LOW;
  bitSilence=LOW;
  recu=HIGH;  
}
  
void fin_fobloqf()
{
  raz_bits();
  nb=NbreBits;
  telegram=LOW;
  bitDebut=LOW;
  tramebits=LOW;
  bitSilence=LOW;
  recu=HIGH;  
}


// https://www.youtube.com/watch?v=dy9GlerX_NE
// interruption IOC (interrupt on change) port B4
void __interrupt(high_priority) ISR_high()
{
  // interruption tmr0 déborde
  if (INTCONbits.TMR0IF==1)
  {
    //  printf("T");
    deborde=deborde+0x10000;
    INTCONbits.TMR0IF=0; 
  }
    
  // interruption IOC rx récepteur radio
  if(INTCONbits.RBIE==1 && INTCONbits.RBIF==1)
  {        
    rx=!RB4; //PORTB;  // lire le port B, même si on utilise pas la valeur B4 / read portB even if we don't need the B4 value
    //if (RB4==0) printf("0"); else printf("1");
    //goto fin;
    //led=rx;
    anc_duree=duree;
    duree=((uint32_t)TMR0H<<8)+(uint32_t)TMR0L;  // car duree est uint32_t
    duree=duree+deborde;
    //if (deborde>0) printf("%lu",duree);
    deborde=0;
    TMR0H=0;     // raz timer pour mesure créneau suivant
    TMR0L=0;
    
    NbreBits++;
    
    
    // ------traitement signal télécommande -----
    if (debug==3)  // test des transitions du signal brut debugage de bas niveau - test for raw transitions signal. low level debugging
    {
      // afficher par UART prend du temps
      // display through UART takes time
      if (duree>300) {printf("T=%lu\n\r",duree);}
      if (NbreBits==20) debug=0;
      goto fin;   // sortie rapide - quick exit
    }
       
    if (debug==4)  // enregistrement brut, puis affichage
    {
      if (NbreBits<200) 
      {
        mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;
        goto fin;
      }  
      debug=0;
      nb=200;
      raz_bits();
      aff_enr=HIGH;
      goto fin;
    }
    
    //if (telegram) printf("%d\r\n",duree);
    
    // silence fobloqf  
    if ( (!bitSilence) && (!telegram) && ((duree>(silenceF-300)) && (duree<(silenceF+300))))  
    {
      NbreBits=1;
      mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;
     // debug=4;
      if (debug==2) 
      printf("Fobloqf");
      protocole=prot_fobloqf;
      code=0;
      bitSilence=HIGH;
      bitDebut=LOW;
      telegram=LOW;
      goto fin;
    }
    // début flobloqf
    if ( (protocole==prot_fobloqf) && (bitSilence) && ((duree>(debutbitF-toleranceF)) && (duree<(debutbitF+toleranceF))))  
    { 
      if (NbreBits!=45) {raz_bits();goto fin;}
      NbreBits=0;
      mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;
      //if (debug==2)   printf("Fobloqf");
      //debug=4;goto fin;
      bitDebut=LOW;
      protocole=prot_fobloqf;
      telegram=HIGH;
      code=0;
      goto fin;
    }
  
    // silence cardin 
    if ((!bitSilence) && (!telegram) && ((duree>(silenceD-550)) && (duree<(silenceD+550))))  
   // if ((!bitDebut) && ((duree>(debutbitD-toleranceD)) && (duree<(debutbitD+toleranceD))))  
    {
      NbreBits=1;
      mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;
      protocole=prot_cardin;
      // if (debug==2) 
      //printf("Cardin=%lu\r\n",duree); 
      //   goto fin;
      //debug=4;goto fin;
      code=0;
      bitSilence=HIGH;
      bitDebut=LOW;
      telegram=LOW;
      goto fin;
    }
    
    // début cardin, après les 11 ou 12 crénaux de sync
    if ((protocole==prot_cardin) && (bitSilence) && ((duree>(debutbitD-toleranceD)) && (duree<(debutbitD+toleranceD))))  
    {
      //nbreSync=NbreBits; 
      NbreBits=0;
      mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;
      protocole=prot_cardin;
      //if (debug==2) printf("Cardin S449");
      //debug=4;goto fin;
      bitDebut=LOW;
      telegram=HIGH;
      code=0;
      goto fin;
    }
    
    // silence nice flors
    if ((!telegram) && ((duree>(silence-tolerance)) && (duree<(silence+tolerance))))  
    {
      NbreBits=1;
      bitDebut=HIGH;
      dureeS=duree;
      if (debug==2) printf("NiceFS=%u\r\n",duree);
      protocole=prot_niceflors;
      code=0;
      bitSilence=HIGH;
      goto fin;
    }
   
    // silence - came     
    if ((!telegram) &&(duree>(silenceC-200)) && (duree<(silenceC+200)))
    {
      NbreBits=1;
      protocole=prot_came;
      mesure_bits[NbreBits]=duree;
      if (debug==2) printf("came");
      telegram=HIGH; 
      code=0;
      bitSilence=LOW;
      goto fin;
    }
    
    // Somfy RTS : x bits silence et un bit start
    // le bit de start est précédé de x bits silences, on contrôle seulement que le précédent est un silence
    // et que l'état du start est à 1 (rx)
    // Somfy : x silent bits and one start bit.
    // The start bit is preceded by x silence bits, we only check that the previous one is a silence one
    // and start bit is 1 (rx)
    if ((anc_duree>(silenceS-toleranceS)) && (anc_duree<(silenceS+toleranceS)) && rx && (!telegram) && (duree>(debutbitS-toleranceS)) && (duree<(debutbitS+toleranceS)) )   
    {
      NbreBits=1;
      SilenceSomfy=HIGH;
      protocole=prot_somfy;
      if (debug==2) printf("Somfy=%u\r\n",duree);
      mesure_bits[NbreBits]=duree;
      NbreBitsMsg=0;
      Nb0=0;   // nombre de demi bits 0 successifs
      telegram=HIGH; 
      code=0;
      goto fin;
    }

    // SOMFY RTS ----------------------------------------------------------------------------
    // le codage radio du protocole somfy est manchester: changement sur fronts
    // somfy radio coding is manchester : check edges
    if ((protocole==prot_somfy) & telegram)
    {
      //printf(" %d",NbreBits);
      if (NbreBits<150) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;}  
       
      // cas bit 1 -> bit 0  ou   bit 0 -> bit 1
      if ((duree>(bit1S-toleranceS)) && (duree<(bit1S+toleranceS)))
      {
        Nb0=0;  
        if (rx)
        {
          //printf("0");
          NbreBitsMsg++;           
          code=code*2;  
        }
        else
        {
          //printf("1");
          NbreBitsMsg++;           
          code=code*2;    // décaler à gauche sur 64 bits ne pas utiliser << qui ne fonctionne que sur 32 bits
          code=code | 1;  // bit 0 à 1 c'est un bit à 1
        }
        if (NbreBitsMsg==56) fin_somfy();
        goto fin;
      }
      
      // cas bit 0 -> bit 0  ou   bit 1 -> bit 1
      if ((duree>(bit0S-toleranceS)) && (duree<(bit0S+toleranceS)))
      {
        Nb0++;   // incrémenter nombre de bits à 0 consécutifs
        if (Nb0==1) goto fin;   // si c'est le 1er ne rien faire
        Nb0=0;
        if (!rx) 
        {
          //printf("B1");
          NbreBitsMsg++;           
          code=code * 2;  // décaler à gauche sur 64 bits ne pas utiliser << qui ne fonctionne que sur 32 bits
          code=code | 1;  // bit 0 à 1 c'est un bit à 1
        }
        else
        { 
          //printf("B0");
          NbreBitsMsg++;           
          code=code * 2;  // décaler à gauche sur 64 bits ne pas utiliser << qui ne fonctionne que sur 32 bits
        }   
        if (NbreBitsMsg==56) fin_somfy();
        goto fin;
      }
      // erreur durée hors tolérance
      if (debug==1) printf("E");
      raz_bits();
      goto fin;
    }  
    
    // cardin S449 ------------------------------
    // https://github.com/merbanan/rtl_433/blob/master/src/devices/cardin.c
    if (telegram && (protocole==prot_cardin))
    {
      //  1  
      //if ((NbreBits-1) %8==0) printf(" ");
      if ((duree>(bit1D-toleranceD)) && (duree<(bit1D+toleranceD)))
      {
        //printf("1");
        //printf("/1 %d",NbreBits);
        code=code * 2; // décaler à gauche
        code=code | 1;
        if (NbreBits<200) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;}   
        if (NbreBits>=64) fin_cardin();
        goto fin;
        if (NbreBits % 2==0) // bit impair : mémoriser son état - even bit : store it
        {
          bitPrec=HIGH;
        }
        else
        // évaluation sur bits pairs
        {
          if (bitPrec==LOW) 
          {
            NbreBitsMsg++;           
            code=code * 2;  // décaler à gauche sur 64 bits ne pas utiliser << qui ne fonctionne que sur 32 bits
            code=code | 1;  // bit 0 à 1
          }
          else 
          {
            NbreBits=0;raz_bits();
            if (debug==1) 
            {mesure_error[NbreBits]=2;printf("EAA D=%u\r\n",duree);}  // erreur symétrie données
          }
        }
        goto fin;
      }
      //if (telegram) printf("%d\r\n",duree);  
      if ((duree>(bit0D-toleranceD)) && (duree<(bit0D+toleranceD)))
      {
        //printf("0");
        //printf("/0 %d",NbreBits);
        code=code * 2;  // décaler à gauche 
        if (NbreBits<200) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;} 
        if (NbreBits>=64) fin_cardin();
        goto fin;
        if (NbreBits % 2==0)
        {
          bitPrec=LOW;
        }
        else
        // évaluation sur bits pairs
        {
          if (bitPrec==HIGH) 
          {
            NbreBitsMsg++;
            code=code*2; // décaler à gauche
          }
          else 
          {
            if (debug==1) printf("EBA D=%u\r\n",duree);
            nb=NbreBits;
            mesure_error[NbreBits]=2;  // erreur symétrie données
            NbreBits=0;raz_bits();         
          }
        }
        goto fin; 
      } 
      //if (debug==1) 
      printf("E%d\r\n",duree);
      mesure_error[NbreBits]=3; 
      nb=NbreBits;
      raz_bits();
      goto fin;
    }
    
    
    // Fobloqf ----------------------------------------------------------------------------
    if (telegram && (protocole==prot_fobloqf))
    {   
        //printf("%d\r\n",duree);
      if (telegram)
      {  
        if ((duree>(bit1F-toleranceF)) && (duree<(bit1F+toleranceF)))
        {
          //printf("1");
          code=code * 2; // décaler à gauche
          code=code | 1;
          if (NbreBits<150) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;}   
          if (NbreBits==56) fin_fobloqf();
          goto fin;
          if (NbreBits % 2==0) // bit impair : mémoriser son état - even bit : store it
          {
            bitPrec=HIGH;
          }
          else
          // évaluation sur bits pairs
          {
            if (bitPrec==LOW) 
            {
              NbreBitsMsg++;           
              code=code * 2;  // décaler à gauche sur 64 bits ne pas utiliser << qui ne fonctionne que sur 32 bits
              code=code | 1;  // bit 0 à 1
            }
            else 
            {
              NbreBits=0;raz_bits();
              if (debug==1) 
              {mesure_error[NbreBits]=2;printf("EAA D=%u\r\n",duree);}  // erreur symétrie données
            }
          }
          goto fin;
        }
        //if (telegram) printf("%d\r\n",duree);  
        if ((duree>(bit0F-toleranceF)) && (duree<(bit0F+toleranceF)))
        {
          //printf("0");
          code=code * 2;  // décaler à gauche 
          if (NbreBits<150) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;} 
          if (NbreBits==56) fin_fobloqf();
          goto fin;
          if (NbreBits % 2==0)
          {
            bitPrec=LOW;
          }
          else
          // évaluation sur bits pairs
          {
            if (bitPrec==HIGH) 
            {
              NbreBitsMsg++;
              code=code*2; // décaler à gauche
            }
            else 
            {
              NbreBits=0;raz_bits();
              if (debug==1) 
              {mesure_error[NbreBits]=2;printf("EBA D=%u\r\n",duree);}  // erreur symétrie données
            }
          }
          goto fin;
        }
        else
        {
          raz_bits();
          nb=NbreBits;  // pour affichage
          //if (debug==1) 
              printf("EFA%d\r\n",NbreBits); // erreur bit inconnu dans les données
          goto fin;
        }       
      }       
    }   
    
    // CAME ----------------------------------------------------------------------------
    if (protocole==prot_came)
    {   
      //printf("%d\r\n",duree);
      if (telegram)
      {
        if ((duree>(bit1C-toleranceC)) && (duree<(bit1C+toleranceC)))
        {
          //printf("1");
          code=code * 2; // décaler à gauche
          code=code | 1;
          if (NbreBits<150) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;}   
          if (NbreBits==26) fin_came();
          goto fin;
          if (NbreBits % 2==0) // bit impair : mémoriser son état - even bit : store it
          {
            bitPrec=HIGH;
          }
          else
          // évaluation sur bits pairs
          {
            if (bitPrec==LOW) 
            {
              NbreBitsMsg++;           
              code=code * 2;  // décaler à gauche sur 64 bits ne pas utiliser << qui ne fonctionne que sur 32 bits
              code=code | 1;  // bit 0 à 1
            }
            else 
            {
              NbreBits=0;raz_bits();
              if (debug==1) 
              {mesure_error[NbreBits]=2;printf("EAA D=%u\r\n",duree);}  // erreur symétrie données
            }
          }
          goto fin;
        }
        //if (telegram) printf("%d\r\n",duree);  
        if ((duree>(bit0C-toleranceC)) && (duree<(bit0C+toleranceC)))
        {
          //printf("0");
          code=code * 2;  // décaler à gauche 
          if (NbreBits<150) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;} 
          if (NbreBits==26) fin_came();
          goto fin;
          if (NbreBits % 2==0)
          {
            bitPrec=LOW;
          }
          else
          // évaluation sur bits pairs
          {
            if (bitPrec==HIGH) 
            {
              NbreBitsMsg++;
              code=code*2; // décaler à gauche
            }
            else 
            {
              NbreBits=0;raz_bits();
              if (debug==1) 
              {mesure_error[NbreBits]=3;printf("EBA D=%u\r\n",duree);}  // erreur symétrie données
            }
          }
          goto fin;
        }
        else
        {
          raz_bits();
          nb=NbreBits;  // pour affichage
          if (debug==1) printf("ECA%d\r\n",NbreBits); // erreur bit inconnu dans les données
          goto fin;
        }       
      }       
    }   
    
    
    // -------------------------------------------------------------------   
    if (protocole==prot_niceflors)
    {
       // printf("J");
        // trouvé bit début (ou fin), peut être l'un des deux débuts ou le dernier
      // found a start bit, might be one of the 2 firsts or the last
      if ((duree>(debutbit-tolerance)) && (duree<(debutbit+tolerance))) 
      { 
        //if (debug==1) {printf("S%u",NbreBits);printf(" %d\r\n",duree);}
        // bit de fin, fin du message radio télécommande
        // end bit, end of radio remote message
        if (NbreBits==108)
        {     
          bitDebut=LOW;bitSilence=LOW;     
          mesure_bits[NbreBits]=duree;
          mesure_error[NbreBits]=0; 
          nb=NbreBits;  // mémoriser le nombre de bits reçus pour affichage
          telegram=LOW;
          bitDebut=LOW;
          tramebits=LOW;
          bitSilence=LOW;
          recu=HIGH;  // info pour prog principal / send to do for main
          goto fin;
        }
        if ((NbreBits==2) | (NbreBits==3)) // on a eu le silence
        {
          if (NbreBits==2)
          {         
            dureeStart1=duree; 
            //printf("D1 %u",duree);
            //printf(" Nb %d \r\n",NbreBits);   
            goto fin;
          }
          // 2eme bit de début
          if (NbreBits==3)
          {
            mesure_bits[NbreBits-2]=dureeS;mesure_error[NbreBits-2]=0;  
            mesure_bits[NbreBits-1]=dureeStart1;mesure_error[NbreBits-1]=0;
            mesure_bits[NbreBits]=duree;
            mesure_error[NbreBits]=0;
            //printf(" Nb %d \r\n",NbreBits);   
            tramebits=HIGH;
            //printf("D2 %u",duree);
            NbreBitsMsg=0;
            bitSilence=LOW;
            goto fin;
          }  
        }
        // bit inconnu ou stop mal placé, inattendu
        // unexepected start or stop bit
        // erreur
        if (NbreBits<108) 
        {
          mesure_bits[NbreBits]=duree;
          mesure_error[NbreBits]=1;  // bit inconnu
        }   
        raz_bits(); 
        nb=NbreBits;  // mémoriser le nombre de bits reçus pour affichage
        if (debug==1) printf("EZ%u\r\n",NbreBits); // erreur de séquencement
        goto fin;      
      }
    
      if (tramebits)  // données 
      {
        //printf("D%d\r\n",NbreBits);
        if ((duree>(bit1-tolerance)) && (duree<(bit1+tolerance)))
        {
          //Serial.print("1");
          if (NbreBits<150) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;}   
          if (NbreBits % 2==0) // bit pair : mémoriser son état - even bit : store it
          {
            bitPrec=HIGH;
          }
          else
          // évaluation sur bits impairs
          {
            if (bitPrec==LOW) 
            {
              NbreBitsMsg++;           
              code=code * 2;  // décaler à gauche sur 64 bits ne pas utiliser << qui ne fonctionne que sur 32 bits
              code=code | 1;  // bit 0 à 1
            }
            else 
            {
              NbreBits=0;raz_bits();
              if (debug==1) {mesure_error[NbreBits]=2;printf("EA D=%u\r\n",duree);}  // erreur symétrie données
            }
          }
        }
        else  
        if ((duree>(bit0-tolerance)) && (duree<(bit0+tolerance)))
        {
          //Serial.print("0");
          if (NbreBits<150) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;} 
          if (NbreBits % 2==0)
          {
            bitPrec=LOW;
          }
          else
          // évaluation sur bits impairs
          {
            if (bitPrec==HIGH) 
            {
              NbreBitsMsg++;
              code=code*2; // décaler à gauche
            }
            else 
            {
              NbreBits=0;raz_bits();
              if (debug==1) {mesure_error[NbreBits]=2;printf("EBB D=%u\r\n",duree);}  // erreur symétrie données
            }
          }  
        }
        else
        {
          raz_bits();
          nb=NbreBits;  // pour affichage
          if (debug==1) printf("EFB%d\r\n",NbreBits); // erreur de données
        }
      }    
    }
    
    fin:
    //NOP();    // il faut exécuter au moins une instruction entre la lecture du port B et le RAZ de RBIF: §11.3 sauf dans ce cas
    INTCONbits.RBIF=0;
  }
}  


// lecture d'un octet de l'eprom int
// read one byte from int eprom
uint8_t lit_eprom_int(uint16_t adresse)
{
  EEADRH=adresse >> 8;  // adresse haute
  EEADR=adresse & 0xff; // adresse basse 	
  EECON1bits.EEPGD=0 ;  // pointe data mémoire
  EECON1bits.CFGS=0;    // accès eprom
  EECON1bits.RD=1;      // lecture
  NOP();
  return (EEDATA);
}

 
 // https://github.com/marc-invalid/chipwhisperer-marc/blob/master/doc/marc/keeloq/keeloq_algorithm/keeloq_algorithm.md   
// applique l'algo keyloq à data avec la clé key 
uint32_t KeeLoq_Decrypt(uint64_t data, const uint64_t key) 
 {
   uint32_t x = data, r;
   for (r = 0; r < 528; r++) 
   {
      x = (x<<1)^bit(x,31)^bit(x,15)^(uint32_t)bit(key,(15-r)&63)^bit(KeeLoq_NLF,g5(x,0,8,19,25,30));
   }
   return x;
 }
 
// https://github.com/liyanboy74/arduino-rolling-code-keeloq-receiver/blob/main/main/keeloq.c
uint8_t nlf(uint8_t d) 
{
  return (((uint32_t)(KeeLoq_NLF) >> d) & 0x1);
}

// entrée/sortie dans data
 void KeeLoq_Decrypt2(uint8_t *key, uint64_t data, const uint16_t nrounds) 
 {
  uint32_t x;
  uint16_t r;
  uint8_t o,nlf_input,k,ki;

  for (r=0;r<nrounds;r++) 
  {
    nlf_input=(((data >> 30) & 0x1) << 4) | (((data >> 25) & 0x1) << 3) | (((data >> 19) & 0x1) << 2) | (((data >> 8) & 0x1) << 1) | (data & 0x1);

    o=nlf(nlf_input); // o = 0 ou 1
    ki=(uint16_t)(15 - r) % 64;
    k=key[ki / 8] >> (ki % 8);
    x=k^(data >> 31)^(data >> 15)^o;
    data=(data << 1) | x & 1;
  }
}


void menu()
{
   #if francais
   printf("       ** MENU **\n\r\n\r");
   printf("?....Affiche ce menu\r\n");
   printf("1....Change mode debug \r\n");
   printf("2....UART9600/230400 bauds\r\n");
   printf("3....Envoyer à l'eprom ext le fichier 128Ko de codes NiceFlorS (protocole Xmodem CRC)\r\n");
   printf("4....Envoyer à l'eprom int le fichier 256o de ki NiceFlorS (protocole Xmodem CRC)\r\n");
   printf("5....Affiche télégramme reçu de la télécommande\r\n");
   printf("6....Affiche la dernière erreur\r\n");
   printf("7....Octets recus par xmodem\r\n");
   printf("8....Affiche les 200 premiers octets de l'EPROM externe\r\n");
   printf("9....Affiche EPROM interne\r\n");
   printf("A....Vérifie checksum eprom ext\r\n");
   printf("B....Lit les 64Ko de l'eprom ext (long) par bloc de 128 octets\r\n");
   printf("C....Liste des télécommandes connues\r\n");  
   #if debugxmodem
     printf("K....Affiche le tableau adresses[]");
    #endif
    
   #endif
   #if english
   printf("       ** MENU **\n\r\n\r");
   printf("?....Display this menu\r\n");
   printf("1....Change debug mode \r\n");
   printf("2....UART9600/230400 bauds\r\n");
   printf("3....Send Niceflors 128kb codes file to ext eprom (Xmodem CRC protocol)\r\n");
   printf("4....Send Niceflors 256b ki-codes to int eprom (Xmodem CRC protocol)\r\n");
   printf("5....Display remote telegram\r\n");
   printf("6....Display last error\r\n");
   printf("7....Bytes received from xmodem\r\n");
   printf("8....Display 200 first bytes of external EPROM\r\n");
   printf("9....Display internal EPROM\r\n");
   printf("A....Check ext checksum eprom\r\n");
   printf("B....Display ext 64Kb eprom (long) by 128 range bytes\r\n");
   printf("C....List of known remotes\r\n");   
   #if debugxmodem
     printf("K....Display array adresses[]");
     #endif
   #endif

   
   
   printf("\r\n");
   #if francais
   printf("Votre choix suivi de ENTREE\r\n");
   #endif 
   #if english
   printf("Your choice then ENTER\r\n");  
   #endif  
}

// écriture directe uart
void UART_WriteByte(uint8_t b)
{
   while(!UART1.IsTxReady())
   {
   };
   UART1.Write(b);
}

// écrit le bloc de 128 octets dans l'eprom externe à l'adresse
// les données à transmettre sont dans bufferRx[1...]
void ecrit_bloc_eprom_ext(uint32_t adresse)
{
  int i;
  uint32_t mask;
   
  if (adresse>0xffff) mask=1; else mask=0;  // adresse basse ou haute de l'eprom à mettre dans son adresse i2c
  
  i2cdata[0]=adresse >> 8; // adresse haute
  i2cdata[1]=adresse & 0xff; // adresse basse  
  // copier les données du bloc lu de xmodem dans le buffer i2c
  for (i=1;i<=128;i++)
  {
    i2cdata[i+1]=bufferRx[i];    
  }
   
  if (I2C1_Host.Write(EpromI2C | mask,i2cdata,130))  
  {  
    waitCounter = 100; // This value depends on the system clock, I2C clock and data length                                                                                    
    while (I2C1_Host.IsBusy())
    {
      I2C1_Host.Tasks();
      //__delay_ms(12);        // attente écriture eprom
      __delay_ms(5);
      waitCounter--;              
    }
    /*I2C_ERROR_NONE,         *< No error 
    I2C_ERROR_ADDR_NACK,        *< Client returned address NACK 
    I2C_ERROR_DATA_NACK,        *< Client returned data NACK 
    I2C_ERROR_BUS_COLLISION*/
    erreurI2C=I2C1_Host.ErrorGet();
   
    if (erreurI2C == I2C_ERROR_NONE)
    {
      // Write operation is successful
    }
    else
    {
      // Error handling
     erreur=8;
    }
  }	
}


// envoie 'C' pour x_modem et attend 30s un caractère de l'uart
// send 'C' for x-modem and wait 30s for a char from uart
uint8_t attend_rx_30()
{
  uint32_t Compte=200000; //  15000=16s
  EUSART1_Read();          // vide le tampon Rx UART
  while ((PIR1bits.RC1IF==0) && (Compte!=0))
  {  
    __delay_us(50);
    Compte--;
    if ((Compte % 2000)==0) 
    {
      led=!led;  
      UART_WriteByte('C'); // code ascii de C
    }
  }
  led=1;   // éteint la led
  timeout=(Compte==0); 
  return EUSART1_Read();
  //return UART1.Read();
}
  
// attend un caractère UART pour le protocole xmodem
// si timeout, renvoye NACK
uint8_t attend_rx()
{
  int nbtimeout=0;
  compt=15000;   // à 9600 bauds le compteur est à 8800
  
  while ((PIR1bits.RC1IF==0) && (compt!=0) && (nbtimeout<3))
  {  
    compt--;        
    timeout=(compt==0);
    if (timeout) {UART_WriteByte(0x15);nbtimeout++;compt=15000;}  // envoyer NACK
  }
  timeout=nbtimeout>=3;
  return EUSART1_Read();
}

// http://ee6115.mit.edu/amulet/xmodem.htm
// CRC Xmodem
uint16_t calccrc(int count)
{
  uint16_t  crc;
  char i;
  uint8_t index;
  index=1;
   
  crc=0;
  while (--count >= 0)
  {
    crc=crc^(uint16_t)(bufferRx[index] << 8);
    index++;
    i=8;
    do
    {
      if (crc & 0x8000)
      crc=crc<<1^0x1021;
      else
      crc=crc<<1;
    }
    while(--i);
  }
  return (crc);
}

// écrit un octet à l'éprom interne
// write a bute to internal eprom
void ecrit_eprom_int(uint16_t adresse,uint8_t valeur)
{
  bool ancgie=INTCONbits.GIE;
  EEADRH=adresse >> 8;  // adresse haute
  EEADR=adresse & 0xff; // adresse basse
  EEDATA=valeur;        // valeur à écrire
  
  EECON1bits.EEPGD=0 ;  // pointe data mémoire
  EECON1bits.CFGS=0;    // accès eprom
  EECON1bits.WREN=1;    // écriture
  INTCONbits.GIE=0;     // pas d'irq
  
  EECON2=0x55;
  EECON2=0xAA;
  
  EECON1bits.WR=1;     // commence à écrire
  
  while (EECON1bits.WR);
 
  EECON1bits.WREN=0;   // fin de l'écriture
  INTCONbits.GIE=ancgie;
}

// écrit 128 octets dans l'eprom interne à l'adresse 
// write 128 butes to the internal eprom
void ecrit_bloc_eprom_int(uint16_t adresse)
{
  for (i=1;i<=128;i++)
  {    
    ecrit_eprom_int(adresse+i-1,bufferRx[i]);
  }
}

// erreur survenue dans le protocole xmodem
// error occured in xmodem protocol
void erreur_xmodem(uint8_t num)
{
  erreur=num;
  INTCONbits.GIE=1;
  UART_WriteByte(18); // demande cancel mais ne marche pas
}

// lecture d'un flux UART au format Xmodem
// read a UART file with xmodem format
// mode 1 = fichier principal de codes = main code file
// mode 2 = fichier ki = ki codes
void recoit_xmodem(int mode)
{
   uint8_t b,ancienpak,delta;
   uint16_t padr;
   bool demande=HIGH;
   
   led=1;
   ancienpak=0;padr=0;pak=0;pakcom=0;
   INTCONbits.GIE=0;      // interdit les irq
    __delay_ms(500);
    
   trame=0;
   do
   {
     ancienpak=pak;
     refaire:
     if (demande) b=attend_rx_30();  // envoie C
       else b=attend_rx();
     demande=LOW;
	 if (timeout) {erreur_xmodem(1);return;} 
     // on reçoit SOH ou autre
     // read SOH or anything else
     if ((b!=1) & (b!=4) & (b!=0x17)) {erreur_xmodem(2);return;}
     
     if (b==1) // si SOH
     {
       pak=attend_rx();  // numéro de paquet   
           
       if (timeout) {erreur_xmodem(4);return;}
       // voir s'il y a un intervalle de 1 entre 2 paquets
       if (ancienpak==255) ancienpak=-1;
       
       #if debugxmodem
         delta=pak-ancienpak;
         if (delta!=1)  // si différence de <>1, corriger le numéro de trame qui va servir à calculer l'adresse à stocker dans l'eprom
         {
           adresses[padr]=trame;
           if (padr<700) numpak[padr]=delta; 
           if (padr<1023) padr++;
           //if (delta==0) trame--;  // décrémenter numéro de trame à voir
         }
       #endif
       
       pakcom=attend_rx();    // numéro de paquet complémenté
       if (timeout) {erreur_xmodem(5);return;}
       if (pak!=255-pakcom) {UART_WriteByte(0x15);goto refaire;}  // redemander par NAK
      
       // lecture des 128 octets de données du paquet et stockage dans bufferRx
       // read 128 data bytes packet
       i=1;
       while (i<=130)
       {
         b=attend_rx();
         if (timeout) {erreur_xmodem(6);return;}
         bufferRx[i]=b;
         i++;
       }
       crc=calccrc(128);
       crcrecu=(bufferRx[129]<<8)+bufferRx[130];
       if (crc!=crcrecu) {erreur_xmodem(7);return;}
           
       // crc ok, écrire le bloc dans l'eprom suivant le mode
       // crc ok, write bloc into ext/int eprom according to the mode
       if (mode==1) ecrit_bloc_eprom_ext(trame*128L);  // écrire dans eprom ext trame doit être uint32_t
       if (mode==2) ecrit_bloc_eprom_int(trame*128);  // écrire dans eprom int
     }   
     //envoyer ack
     trame++;
     UART_WriteByte(6);
     led=!led;
   }  //while (b!=0x4);  // EOT  : fin de transmission
    while (trame<1024);
     
   INTCONbits.GIE=1;      // valide les irq
   led=0;     
}

// lit un octet l'eprom (lecture aléatoire - random read) à l'adresse adresse, met la valeur dans i2cread[0]
// read 1 byte from ext eprom, data is in i2cread[0]
void lit_eprom_ext(uint32_t adresse)
{
  uint32_t mask;
  
  if (adresse>0xffff) mask=1; else mask=0;  // adresse basse ou haute de l'eprom à mettre dans son adresse i2c
  
  i2cdata[0]=(uint8_t)(adresse >> 8); // adresse haute
  i2cdata[1]=(uint8_t)(adresse & 0xff); // adresse basse  
    
  I2C1_Host.WriteRead(EpromI2C | mask,i2cdata,2,i2cread,1);
  int err;  
  waitCounter = 1000; // This value depends on the system clock, I2C clock and data length.                                                                                          
  while ( I2C1_Host.IsBusy())
  {
    I2C1_Host.Tasks();
    waitCounter--; 
    __delay_ms(1);
  }
  err=I2C1_Host.ErrorGet();
  if (  err == I2C_ERROR_NONE)
  {
    // WriteRead operation is successful
  }
  else
  {
    printf("erreur I2C WriteRead=%d\r\n",err);
    // Error handling
  }
}

// lit "nombre" octet l'eprom ext (lecture séquentielle - random read) à l'adresse adresse, met la valeur dans i2cread[]
// read "nombre" byte(s) from ext eprom
void lit_bloc_eprom_ext(uint32_t adresse,uint8_t nombre)
{
  uint32_t mask;
   
  if (adresse>0xffff) mask=1; else mask=0;  // adresse basse ou haute de l'eprom à mettre dans son adresse i2c
  
  i2cdata[0]=(uint8_t)(adresse >> 8); // adresse haute
  i2cdata[1]=(uint8_t)(adresse & 0xff); // adresse basse  
    
  I2C1_Host.WriteRead(EpromI2C | mask,i2cdata,2,i2cread,nombre);
  int err;  
  waitCounter=1000; // This value depends on the system clock, I2C clock and data length.                                                                                          
  while (I2C1_Host.IsBusy())
  {
    I2C1_Host.Tasks();
    waitCounter--; 
    // __delay_ms(1);   fonctionne sans 
   }
   err=I2C1_Host.ErrorGet();
   if (err==I2C_ERROR_NONE)
   {
     // WriteRead operation is successful
   }
   else
   {
     printf("erreur I2C WriteRead=%d\r\n",err);
    // Error handling
   }
}


void affiche_enregistrement()
{
  uint8_t x,y; 
  INTCONbits.GIE=0;  // arrete mesure radio / disable radio acquisition
  aff_enr=LOW;   
  
  printf("NbreBits=%d",nb);
  
  
  if (protocole==prot_came) printf(" Protocole Came");
  if (protocole==prot_somfy) printf(" Protocole Somfy");
  if (protocole==prot_cardin) printf(" Protocole Cardin S449");
  if (protocole==prot_fobloqf) printf(" Protocole Fobloqf");
  if (protocole==prot_niceflors) printf(" Protocole NiceFlorS");
 
 
  printf("\r\n");
  for (y=1;y<=20;y++)
  {
    for (x=1;x<=9;x++)
    {
      i=((y-1) % 20)+1  + ((x-1) * 20);
      if (i<=nb)
      {
        printf("%3d",i);
        duree=mesure_bits[i];
       // printf(" %5lu",duree);
         printf(" %6lu",duree);
  
        if (protocole==prot_niceflors)
        {    
          if ((duree>(silence-1000)) && (duree<(silence+1000)))     printf(" S");
          else
          if ((duree>(bit0-tolerance)) && (duree<(bit0+tolerance))) printf(" 0");
          else
          if ((duree>(bit1-tolerance)) && (duree<(bit1+tolerance))) printf(" 1");  
          else
          if ((duree>(debutbit-tolerance)) && (duree<(debutbit+tolerance))) printf(" D");
          else
          printf(" ?");
          if (mesure_error[i]!=0)  printf( " Err %d",mesure_error[i]);
        }
        if (protocole==prot_came)
        {    
          if ((duree>(silenceC-1000)) && (duree<(silenceC+1000)))     printf(" S");
          else
          if ((duree>(bit0C-toleranceC)) && (duree<(bit0C+toleranceC))) printf(" 0");
          else
          if ((duree>(bit1C-toleranceC)) && (duree<(bit1C+toleranceC))) printf(" 1");  
          else
          printf(" ?");
          if (mesure_error[i]!=0)  printf( " Err %d",mesure_error[i]);
        }
        if (protocole==prot_somfy)
        {    
          if ((duree>(silenceS-1000)) && (duree<(silenceS+1000)))     printf(" S");
          else
          if ((duree>(bit0S-toleranceS)) && (duree<(bit0S+toleranceS))) printf(" 0");
          else
          if ((duree>(bit1S-toleranceS)) && (duree<(bit1S+toleranceS))) printf(" 1");  
          else
          if ((duree>(debutbitS-toleranceS)) && (duree<(debutbitS+toleranceS))) printf(" D");
          else
          printf(" ?");
          if (mesure_error[i]!=0)  printf( " Err %d",mesure_error[i]);
        }
        if (protocole==prot_cardin)
        {    
          if ((duree>(silenceD-550)) && (duree<(silenceD+550)))     printf(" S");
          else
          if ((duree>(debutbitD-tolerance)) && (duree<(debutbitD+tolerance))) printf(" D");
          else
          if ((duree>(bit0D-toleranceD)) && (duree<(bit0D+toleranceD))) printf(" 0");
          else
          if ((duree>(bit1D-toleranceD)) && (duree<(bit1D+toleranceD))) printf(" 1");  
          else
          printf(" ?");
          if (mesure_error[i]!=0)  printf( " Err %d",mesure_error[i]);
        }
        if (protocole==prot_fobloqf)
        {    
          if ((duree>(silenceF-550)) && (duree<(silenceF+550)))     printf(" S");
          else
          if ((duree>(debutbitF-tolerance)) && (duree<(debutbitF+tolerance))) printf(" D");
          else
          if ((duree>(bit0D-toleranceF)) && (duree<(bit0D+toleranceF))) printf(" 0");
          else
          if ((duree>(bit1D-toleranceF)) && (duree<(bit1D+toleranceF))) printf(" 1");  
          else
          printf(" ?");
          if (mesure_error[i]!=0)  printf( " Err %d",mesure_error[i]);
        }
        printf("| ");
      }
      else printf("        ");
    }
    printf("\r\n");
  }
  raz_bits();
  INTCONbits.GIE=1; 
}

// affiche un nombre en 32 bits en hexa
// display 32 bits hexa : XXXXX
void Affiche5(uint32_t codex)
{
  uint32_t p=codex & 0xFFFFFFFF;
  printf("%08lX",p);
}

// affiche un nombre en 32 bits en hexa
void Affiche4(uint64_t codex)
{
  uint32_t p=codex & 0xFFFFFFFF;
  printf("%08lX",p);
}

void UART_ExecuteCommand(char *command)
{
  uint64_t ep;
  if(strcmp(command,"?") == 0)
  {
    menu();
  }
  else
  if(strcmp(command,"1") == 0)
  {
    debug++;
    if (debug>3) debug=0;
    printf("Debug %d ",debug);
    #if francais
    if (debug==0) printf("pas de debug\r\n");
    if (debug==1) printf("Affichages supplémentaires et les erreurs\r\n");
    if (debug==2) printf("Affiche silence\r\n");
    if (debug==3) printf("Affiche les durées reçues en direct\r\n");
    #endif   
    #if english
    if (debug==0) printf("No debug\r\n");
    if (debug==1) printf("Additional display and errors\r\n");
    if (debug==2) printf("Display silent\r\n");
    if (debug==3) printf("Display length durations live\r\n");
    #endif   
  }
  else
  if(strcmp(command,"2") == 0)
  {
    pvitesse++;
    if (pvitesse==2) pvitesse=0;
    printf("Vitesse UART=%lu bauds ",vitesse[pvitesse]);
    if (pvitesse==0) {printf("pour transfert xmodem\r\n");SPBRGH1=0x06;SPBRG1=0x82;}  // 9600 bauds pour transfert xmodem
    if (pvitesse==1) {printf("pour debug\r\n");SPBRGH1=0x00;SPBRG1=0x44;}             // 230400 bauds si on fait du debug
  }
  else
  if (strcmp(command,"3") == 0)
  {
    #if francais
    if (pvitesse!=0) printf("Utilisez la vitesse de 9600 bauds pour utiliser Xmodem\r\n");
    printf("Dans TeraTerm, sélectionner le fichier 128Ko de codes en protocole Xmodem CRC dans les 20s\r\n");  
   #endif  
   #if english
   if (pvitesse!=0) printf("Use 9600 bauds to use Xmodem\r\n");
   printf("Using TeraTerm, select the 128Kb file to transmit (Xmodem CRC protocol) within 20s\r\n");  
   #endif  
   recoit_xmodem(1);
 }		
 else
 if (strcmp(command,"4") == 0)
 {
   #if francais
   if (pvitesse!=0) printf("Utilisez la vitesse de 9600 bauds pour utiliser Xmodem\r\n");
   printf("Dans TeraTerm, sélectionner le fichier 256o de codes en protocole Xmdem CRC dans les 20s\r\n");  
   #endif  
   #if english
   if (pvitesse!=0) printf("Use 9600 bauds to use Xmodem\r\n");
   printf("Using TeraTerm, select the 256b file to transmit (Xmodem CRC protocol) within 20s\r\n");  
   #endif  
   recoit_xmodem(2);
 }
 else
  // if (command=="5")
 if (strcmp(command,"5") == 0)
 {
   affiche_enregistrement();
 }
 else    
 if(strcmp(command,"6") == 0)
 {
   INTCONbits.GIE=0;
   #if francais
   printf("Dernière erreur : ");
   #endif
   #if english
   printf("Last error : ");
   #endif
      
   #if francais
   switch (erreur)
   {
     case 0: {printf("Aucune");break;}
     case 1: {printf("Timeout trame %d",trame);break;}
     case 2: {printf("Pas recu SOH (1) trame %d",trame);break;}
     case 3: {printf("Erreur complémentation numéro paquet");break;}
     case 4: {printf("Timeout sur numéro de paquet");break;}
     case 5: {printf("Timeout sur numéro de paquet complémenté");break;}
     case 6: {printf("Timeout données");break;}
     case 7: {printf("Erreur crc");break;}
     case 8: {printf("Erreur écriture EPROM ext");break;}
     default:  printf(" %d",erreur);
   }
   #endif 
   #if english
   switch (erreur)
   {
     case 0: {printf("No error");break;}
     case 1: {printf("Timeout frame %d",trame);break;}
     case 2: {printf("Didn't receive SOH (1) trame %d",trame);break;}
     case 3: {printf("Error inverted byte packet number");break;}
     case 4: {printf("Timeout packet number");break;}
     case 5: {printf("Timeout inverted byte packet number");break;}
     case 6: {printf("Timeout data");break;}
     case 7: {printf("Crc error");break;}
     case 8: {printf("Error writing ext EPROM");break;}
     default:  printf(" %d",erreur);
   }
   #endif 
     
   #if francais
   printf(" Dernière erreur I2C=%d",erreurI2C);
   #endif
   #if english
   printf(" Last I2C error=%d",erreurI2C);
   #endif
   printf("\r\n");
   INTCONbits.GIE=1;
 }
 else 
 if (strcmp(command,"7") == 0)
 {
   INTCONbits.GIE=0;
   printf("n° paquet=%d\r\n",pak);
   printf("n° paquet compl=%d\r\n",pakcom);
   printf("Valeur compt=%d\r\n",compt);
        
   for (i=1;i<=130;i++)
   {
     printf("%d:",i);
     printf("%d,",bufferRx[i]);
   }
   printf("\r\n");
   printf("Crc calculé=%x\r\n",crc);
   printf("Crc recu=%x\r\n",crcrecu);    
   INTCONbits.GIE=1;
  }
  else
  if (strcmp(command,"8") == 0)
  {
    // lire et afficher 200 octets eprom ext
    // read and display 200 bytes ext eprom
    INTCONbits.GIE=0;
    for (i=0;i<200;i++)
    {    
      lit_eprom_ext(i);
      printf("%d:",i);  
      printf("%x, ",i2cread[0]);
      if (((i+1) % 16)==0) printf("\r\n");
    }
    INTCONbits.GIE=1;
  }  
  else
  if (strcmp(command,"9") == 0)
  {
    // lire et afficher eprom int
    // read and display int eprom
    INTCONbits.GIE=0;
    for (i=0;i<1023;i++)
    {   
      uint8_t v=lit_eprom_int(i);
      if ((i % 16)==0) printf("%x:",i);  
      printf("%x, ",v);
      if (((i+1) % 16)==0) printf("\r\n");
    }
    INTCONbits.GIE=1;
  }   
  else
  if (strcmp(command,"A") == 0)
  {
    // vérifie checksum eprom ext
    uint8_t chk=0;
    uint32_t j;
    INTCONbits.GIE=0;   // disable IRQ avoid display error from IRQ
    #if francais
    printf("Patientez 10s..\r\n");
    #endif
    #if english
    printf("Wait 10s..\r\n");
    #endif  
    i=0;
    while (i<0x1ffff) //(i<0x1ffff)
    {   
      lit_bloc_eprom_ext(i,128);
      i=i+128;
      for (j=0;j<=127;j++)
      {
        chk=chk ^ i2cread[j];
      }
    } 
    lit_eprom_ext(0);
    i=i2cread[0];
    if (i!=3) 
    {
      #if francais
      printf("Eprom ext contient de mauvaises valeurs\r\n");
      #endif
      #if english
      printf("Ext eprom contains wrong values\r\n")
      #endif  
    }
    printf("Checksum eprom ext = %x ",chk);
    if (chk==0) printf("Ok\r\n"); else printf("Non ok\r\n");
    INTCONbits.GIE=1;
  }   
  else
  if (strcmp(command,"B") == 0)
  {
    // lit l'eprom ext complètement par bloc de 128o - long
    // reads the full ext eprom, 128b blocs of ext eprom - takes a long time     
    uint32_t k,j=0; 
    INTCONbits.GIE=0;   // disable IRQ avoid display error from IRQ
    while (j<0x1ffff)
    {       
      lit_bloc_eprom_ext(j,128);
     
      for (i=0;i<=127;i++)
      {   
        k=i+j;  
        if ((i % 16)==0) {Affiche5(k);printf(" ");} 
        printf("%x,",i2cread[i]);
        if (((i+1) % 16)==0) printf("\r\n");
        __delay_us(100);
      }
      j=j+128;
      }  
    INTCONbits.GIE=1;
  } 
  else
  if (strcmp(command,"C") == 0)
  {
    i=0;
    do
    {
       ep=(uint32_t)lit_eprom_int(0x100+i*4);
       ep=ep+((uint32_t)lit_eprom_int(0x101+i*4) << 8);
       ep=ep+((uint32_t)lit_eprom_int(0x102+i*4) << 16);
       ep=ep+((uint32_t)lit_eprom_int(0x103+i*4) << 24);
       #if francais
       printf("Télécommande %2d ",i+1);
       #endif
       #if english
       printf("Remote %2d ",i+1);
       #endif
       Affiche4(ep);
       printf("\r\n"); 
       i++;           
    } while (i<maxtel); 
    i--;   
  }
  else
  if (strcmp(command,"K") == 0)
  {
    /*
    INTCONbits.GIE=0;
    for (i=0;i<1024;i++)
   {
      printf("%x ",i);
      printf(" %x",adresses[i]);
      if (i<700) printf(" %d /",numpak[i]);
      if (((i+1) % 16)==0) printf("\r\n");
      __delay_us(100);
     INTCONbits.GIE=1;
    } */ 
  } 
    
  else
  {
    #if francais
      printf("Commande incorrecte.\r\n");
    #endif
    #if english
      printf("Incorrect command.\r\n");
    #endif
  }
}

void UART_ProcessCommand(void)
{
  if(UART1.IsRxReady())
  {
    readMessage=UART1.Read();
    if ( (readMessage!=LINEFEED_CHAR) & (readMessage != CARRIAGERETURN_CHAR) ) 
    {
      command[index++]=readMessage;
      if (index>MAX_COMMAND_LEN) index=0;
    }
    if (readMessage==CARRIAGERETURN_CHAR) 
    {
      command[index]='\0';
      index=0;
      UART_ExecuteCommand(command);
    }
  }
}

void UART1_WriteString(const char *message)
{
  for (int i=0;i<(int)strlen(message); i++)
  {
    while (!UART1.IsTxReady())
    {
    };
    (void) UART1.Write(message[i]);
  }
}

void uart1_champ(char* message,int valeur)
{
  UART1_WriteString(message);
  sprintf(chaine," %d\r\n",123);
  UART1_WriteString(chaine);
}


// I2C écrit 1 octet eprom ext adresse et valeur
// adresse : adresse de 0 à 0x1ffff
// I2C write 1 byte to ext eprom
void ecrit_eprom_ext(uint32_t adresse,uint8_t valeur) 
{
  int err ; 
  uint32_t mask;
   
  if (adresse>0xffff) mask=1; else mask=0;  // adresse basse ou haute de l'eprom à mettre dans son adresse i2c
  
  i2cdata[0]=adresse >> 8; // adresse haute
  i2cdata[1]=adresse & 0xff; // adresse basse  
  i2cdata[2]=valeur; // octet à écrire  
  
  if (I2C1_Host.Write(EpromI2C,i2cdata,3))  
  {  
    waitCounter = 100; // This value depends on the system clock, I2C clock and data length.                                                                                          
    while (I2C1_Host.IsBusy())
    {
      I2C1_Host.Tasks();
      __delay_ms(10);
      waitCounter--;              
    }
    /*I2C_ERROR_NONE,         *< No error 
    I2C_ERROR_ADDR_NACK,        *< Client returned address NACK 
    I2C_ERROR_DATA_NACK,        *< Client returned data NACK 
    I2C_ERROR_BUS_COLLISION*/
    err=I2C1_Host.ErrorGet();
   
    if (err==I2C_ERROR_NONE)
    {
      // Write operation is successful
      // printf("écrit ok\r\n");
    }
    else
    {
      // Error handling
      printf("erreur I2C Write=%d\r\n",err);
    }
  }
}

// affiche un nombre en 64 bits en hexa
void Affiche(uint64_t codex)
{
  uint64_t p=codex >> 32;  
  printf("%08lX",p);
  p=codex & 0xFFFFFFFF;
  printf("%08lX",p);
}


bool code_b0b6_nice_valide()
{
  return !((b1==0) | (b1==255) | (b0==0) | (b0==0xf));
}

// décode le code 64 bits de la télécommande en 7 octets dans b0-b6
// decode "code" 64 bits from remote to 7 bytes b0-b6
// (remise des quartets dans l'ordre)
bool decode_nice_b0b6()     // type 64 bits
{
  uint64_t decoded;
  int64_t pr;
  
  decoded=(code << 4);
  decoded=decoded ^ 0xFFFFFFFFFFFFF0;

  // ligne 48
  pr=decoded / 0x1000000000000;
  b1=(pr << 4) & 0xF0;
  b0=(pr >> 4) & 0x0F; 
  // ligne 40
  pr=decoded / 0x10000000000;
  b1=b1 | ((pr >> 4) & 0x0F);
  b2=((pr << 4) & 0xF0);
  // ligne 32
  pr=decoded / 0x100000000;
  b2=b2 | ((pr >> 4) & 0x0F);
  b3=(pr << 4) & 0xF0; 
  // ligne 24
  pr=decoded /0x1000000;
  b3=b3 | ((pr >> 4) & 0x0F);
  b4=(pr << 4) & 0xF0;
  // ligne 16
  pr=decoded /0x10000;
  b4=b4 | ((pr >> 4) & 0x0F);
  b5=(pr << 4) & 0xF0;
  // ligne 8
  pr=decoded /0x100;
  b5=b5 | ((pr >> 4) & 0x0f);
  b6=(pr << 4) & 0xF0;
  // ligne 0
  pr=decoded;
  b6=b6 | ((pr >>4) & 0x0F); 

  bool ok=code_b0b6_nice_valide();
  
  if (debug>=1)
  {
    if (ok) printf("ok  "); else printf("nok "); 
    printf("%x",b0);printf("/");printf("%x",b1);printf("/");
    printf("%x",b2);printf("/");printf("%x",b3);printf("/");
    printf("%x",b4);printf("/");printf("%x",b5);printf("/");
    printf("%x",b6);printf("/ ");
    if (!ok) printf("\r\n");
  } 
  return (ok);
}
  
// trouve le code "c" en EPROM ext - renvoie son adresse
// ca prend 7s si le code à trouver est en 0x1FFFE (dernière adresse)
// fetch with raw method code "c" in external eprom - send back address
// takes 7s to find if the code to be found is at 0x1FFFE (last address)
uint16_t trouve_code_nice(uint16_t c)
{
  bool trouve=LOW;  
  uint16_t cr;  
  uint32_t i;
  uint8_t j;
  i=0;
  do
  {   
    lit_bloc_eprom_ext(i,128);  // lecture de l'eprom ext I2C par bloc de 128 octets
    i=i+128;
    j=0;
    do
    { //    poids faible   poids fort
      trouve=(i2cread[j]+(i2cread[j+1] << 8))==c;
      j=j+2;
    }
    while ((!trouve) && (j<=127)) ;
  }
  while ((!trouve) && (i<0x20000)); 
  return((i-128+j-2)/2);  // divisé par 2 car c'est l'adresse du mot de 16 bits qu'il faut renvoyer
}

// c = code dans le fichier, envoyé par la télécommande octets b2 b3
// trouve l'adresse de code "c" en eprom ext suivant algorithme du code précédent.
// trouver par le dernier index transmis par la télécommande, et pointer sur le +1
// find "c" code in ext eprom, using algorithm previous code
uint16_t trouve_code_algo_nice(uint16_t c) // trouver l'adresse de encode dans l'eprom ext
{
  bool trouve;
  uint8_t bal_telecom=1,increment;   // index télécommande de 1 à 10
  uint16_t i,lu_ext;
  //printf("trouver %x\r\n",c);
  do
  {
    // boucle par télécommande : on lit 128 octets
    // by remote loop : we read 128 bytes
    i=indexCodeRecu[bal_telecom];  // index (en mots) du code recu précédemment - previous index remote code (in words)
    lit_bloc_eprom_ext(i*2,128);   // lire les 128 octets après l'index, en mots donc *2 - read next 128 bytes; in words so *2
    increment=0;  // explorer le bloc de 128 octets        
    do
    {
      //printf("trouver à l'index %d\r\n",i);
      // essayer de touver "c" dans le bloc de 128 octets lu de l'eprom ext
      // try to find out "c" in the 128 bytes memory bloc read out from ext eprom	  
      lu_ext=i2cread[increment];
      lu_ext=lu_ext + (i2cread[increment+1] << 8);
      //printf("code eprom=%x\r\n",lu_ext);
      trouve=c==lu_ext;
      if (!trouve) increment=increment+2;
    } while ((!trouve) & (increment<128)); 
    bal_telecom++;
  } while ((!trouve) & (bal_telecom<10));   
  // si pas trouvé, le trouver par le méthode directe linéraire de lecture tous les octets
  // if not find, fetch it with straight linear all bytes read 
  if (!trouve) i=trouve_code_nice(c);else i=i+(increment/2);
  //if (trouve) printf(" Trouvé code dans télécommande %d ",bal_telecom-1);
  return (i); 
}

// inverse poids faibles et fort
uint16_t inverse16(int16_t mot)
{
  uint16_t r;
  r=mot >> 8;
  r=r | ((mot & 0xff) << 8) ;
  return r;
}

uint32_t inverse24(int32_t mot)
{
  uint32_t r;
  r=mot >> 16;  // poids fort vers faible
  r=r | (mot & 0xff00);  // milieu inchangé
  r=r | ((mot & 0xffL) << 16); // faible vers fort
  return r;
}

bool decode_fobloqf()
{
  uint32_t temp;
  // code à 64 bits, soit 4 octets 
    //if (debug==1) 
  {
   Affiche(code);
  }
  
  temp=KeeLoq_Decrypt(code,KeeLoq_NLF);
  printf(" Decode1=");Affiche(temp);
  
  temp=code;
  KeeLoq_Decrypt2(key, temp, 528);
  printf(" Decode2=");
  Affiche(temp);
  printf("\r\n");   
  return LOW;   
}

bool decode_cardin()  // https://github.com/merbanan/rtl_433/blob/master/src/devices/cardin.c
{
  uint32_t temp;
  // code à 64 bits, soit 4 octets 
    //if (debug==1) 
  {
   Affiche(code);
  }
  
  temp=KeeLoq_Decrypt(code,KeeLoq_NLF);
  printf(" Decode1=");Affiche(temp);
  
  temp=code;
  KeeLoq_Decrypt2(key, temp, 528);
  printf(" Decode2=");
  Affiche(temp);
  printf("\r\n");
// 
  //b0=(code >> 48) & 0xff;
  //b1=(code >> 40) & 0xff;
  //b2=(code >> 32) & 0xff;
  //b3=(code >> 24) & 0xff;
  b2=(code >> 16) & 0xff;
  b1=(code >> 8) & 0xff;
  b0=code & 0xff;
  
  printf("Decodage:\r\n");
  printf("b0=%x\r\n",b0);
  printf("b1=%x\r\n",b1);
  printf("b2=%x\r\n",b2);

// validate message as best as we can
// constrain b2 & 0x3f (the button) to 0x03, 0x06, 0x09, 0x0c
    if ((b2 & 0x3f) != 0x03
            && (b2 & 0x3f) != 0x09
            && (b2 & 0x3f) != 0x0c
            && (b2 & 0x3f) != 0x06) 
    {
        printf("Erreur verte\r\n");
        return -1; // DECODE_ABORT_EARLY;
    }
    // Disallow the fourth tri-state option on the 9 DIP switches
    if (((b0 & 8) == 0 && (b1 & 8) != 0)
            || ((b0 & 16) == 0 && (b1 & 16) != 0)
            || ((b0 & 32) == 0 && (b1 & 32) != 0)
            || ((b0 & 64) == 0 && (b1 & 64) != 0)
            || ((b0 & 128) == 0 && (b1 & 128) != 0)
            || ((b2 & 128) == 0 && (b2 & 64) != 0)
            || ((b0 & 1) == 0 && (b1 & 1) != 0)
            || ((b0 & 2) == 0 && (b1 & 2) != 0)
            || ((b0 & 4) == 0 && (b1 & 4) != 0)) 
    {
      printf("Erreur jaune\r\n");
      return -1 ; //DECODE_ABORT_EARLY;
    }

    // Get button code
    char const *const rbutton[4] = { "11R", "10R", "01R", "00L?" };
    char const *const button = rbutton[((b2 & 0x0f) / 3) - 1];

    // Get DIP tri-state switches
    char dip[10] = {'-','-','-','-','-','-','-','-','-', '\0'};

    // Dip 1
    if (b0 & 8) {
        dip[0] = 'o';
        if (b1 & 8)
            dip[0] = '+';
    }
    // Dip 2
    if (b0 & 16) {
        dip[1] = 'o';
        if (b1 & 16)
            dip[1] = '+';
    }
    // Dip 3
    if (b0 & 32) {
        dip[2] = 'o';
        if (b1 & 32)
            dip[2] = '+';
    }
    // Dip 4
    if (b0 & 64) {
        dip[3] = 'o';
        if (b1 & 64)
            dip[3] = '+';
    }
    // Dip 5
    if (b0 & 128) {
        dip[4] = 'o';
        if (b1 & 128)
            dip[4] = '+';
    }
    // Dip 6
    if (b2 & 128) {
        dip[5] = 'o';
        if (b2 & 64)
            dip[5] = '+';
    }
    // Dip 7
    if (b0 & 1) {
        dip[6] = 'o';
        if (b1 & 1)
            dip[6] = '+';
    }
    // Dip 8
    if (b0 & 2) {
        dip[7] = 'o';
        if (b1 & 2)
            dip[7] = '+';
    }
    // Dip 9
    if (b0 & 4) {
        dip[8] = 'o';
        if (b1 & 4)
            dip[8] = '+';
    }
    
    printf("%s\r\n",dip);
  return 0;  
}

// décode somfy. renvoie HIGH si le chk est ok
bool decode_somfy()
{
  uint8_t chk;    
  
  if (debug==1) {Affiche(code);printf("\r\n");}
  // mettre le code brut recu de 56 bits dans 7 octets
  // put the 56 raw bits received code into 7 bytes
  b0=(code >> 48) & 0xff;
  b1=(code >> 40) & 0xff;
  b2=(code >> 32) & 0xff;
  b3=(code >> 24) & 0xff;
  b4=(code >> 16) & 0xff;
  b5=(code >> 8) & 0xff;
  b6=code & 0xff;

  // décodage xor - xor décoding
  b6=b6^b5;
  b5=b5^b4;
  b4=b4^b3;
  b3=b3^b2;
  b2=b2^b1;
  b1=b1^b0;

  if (debug==1)
  {
    printf("Decodage:\r\n");
    printf("b0=%x\r\n",b0);
    printf("b1=%x\r\n",b1);
    printf("b2=%x\r\n",b2);
    printf("b3=%x\r\n",b3);  
    printf("b4=%x\r\n",b4);  
    printf("b5=%x\r\n",b5);
    printf("b6=%x\r\n",b6);
  }

  // checksum, doit être =0 / must be =0
  chk=(b0)^(b0>>4);
  chk=chk^b1^(b1>>4);
  chk=chk^b2^(b2>>4);
  chk=chk^b3^(b3>>4);
  chk=chk^b4^(b4>>4);
  chk=chk^b5^(b5>>4);
  chk=chk^b6^(b6>>4);
  chk=chk & 0x0f;
  
  bouton=(b1>>4) & 0x0f;  // non significatif
  indexcode=(b2<<8)+b3;   // rolling code qui doit être > que le code précédent
  serial=(uint64_t)b4<<16;
  serial=serial | ((uint64_t)b5<<8);
  serial=serial+(uint64_t)b6;
  
  if (debug==1)
  {
    printf("Chk calc=%x",chk);
    if (chk!=0) printf(" Erreur");
    printf("\r\n");  
  
    printf("Entete=0x%x",b0);  // 0x0a 
    if ((b0 & 0xf0)!=0xa0) printf(" Erreur\r\n");
    printf("\r\n");
    printf("Compteur=0x%x\r\n",b0 & 0x0f);  
    printf("Bouton=%x\r\n",bouton);  
    printf("Chk=%x\r\n",b1 & 0x0f);   
    printf("Code=0x%x\r\n",indexcode);
    printf("Serial=0x");Affiche4(serial);printf("\r\n");
  } 
  
  return (chk==0);
}

// décode les octets B0 à B6 nice-flors, extrait le numéro de série, bouton, code et répétition
// decode B0-B6 nice-flors bytes, extract serial, button, code and repeat
void decode_b06_nice()
{
  uint16_t encode,encodeEprom;
  uint8_t ki,snbuf3,snbuf2,snbuf1,snbuf0;
  encode=(b2<<8) + b3;  // b2 et b3 contiennent le code dans le tableau de 65535 valeurs (eprom ext)
  indexcode=0;          // b2 and b3 are the code to find in the ext eprom  
  indexcode=trouve_code_algo_nice(encode);  // index de encode dans l'eprom ext, qui doit être > que le code précédent
   
  // https://github.com/Jev1337/NiceFlor-Encoder/blob/main/C%20Version/ArduinoC/ArduinoC.ino
  //printf("Le code %x a été trouvé en index ",encode);
  //printf("%d\r\n",code);
  ki=lit_eprom_int(indexcode & 0xff);
  //printf("encode=%x\r\n",encode);
  ki=ki ^ (encode & 0xff);
  //printf("ki=index=%d\r\n",ki);
    
  snbuf3=(b1^ki) & 0x0f;
  snbuf2=b4^ki;
  snbuf1=b5^ki;
  snbuf0=b6^ki;
  serial=0;
  serial=serial + (uint32_t)snbuf0;
  serial=serial + ((uint32_t)snbuf1 << 8L);
  serial=serial + ((uint32_t)snbuf2 << 16L);
  serial=serial + ((uint32_t)snbuf3 << 24L);
  bouton=b0 & 0x0f;
  repete=(b1 >> 4) ^ bouton ^ 0x0f;
  printf("NiceFlorS NumSer=");Affiche4(serial);   // numéro de série de la télécommande
  printf(",Bouton=%d",bouton);
  if (debug>=1)
  { 
    printf(",Index=%d",indexcode);    // code envoyé par la télécommande pour décoder son message  
    printf(",repete=%d ",repete);     // répétition
  }
}

// encode les octets b0-b6 en code émetteur
// pour vérification inverse
uint64_t encode_quartets()    // type 64 bits
{
  uint64_t encoded;
  uint8_t b;  
  code=0;
  code=((b6 << 0x4) & 0xF0) ;

  code|=((((b5 & 0x0F) << 4) | ((b6 & 0xF0) >> 4)) << 8) & 0xff00;
  
  b=((b4 & 0x0F) << 4) + ((b5 & 0xF0) >> 4);
  code = code + (b *0x10000) ;    // << 16

  b=(((b3 & 0x0F) << 4) & 0xF0) | (((b4 & 0xF0) >> 4) & 0x0F);
  code= code + (b*0x1000000);    // << 24
 
  // à partir d'ici, on ne peut pas décaler de plus de 32 bits, il faut utiliser la multiplication
  // De même le OU bitwise (encoder|=) ne marche pas en 64 bits, il faut utiliser + (commentaire pour arduino nano)
  b=(((b2 & 0x0F) << 4) & 0xF0) | (((b3 & 0xF0) >> 4) & 0x0F);
  code=code + (b*0x100000000);     // << 32
 
  b=((b1 & 0x0F) << 4) | ((b2 & 0xF0) >> 4);
  code=code + (b*0x10000000000);   // << 40;
 
  b=((b0 & 0x0F) << 4) | ((b1 & 0xF0) >> 4);
  
  code=code + (b*0x1000000000000); // << 48;
  code=code ^ 0xFFFFFFFFFFFFF0;
  
  code=code >> 4;     

  Affiche(code);
}

// renvoie le numéro de la télécommande "serialin" en eprom interne
// si pas reconnue en epromint, renvoie 0
// get the remote number (1-10) from serial from int eprom
// if not found, sends 0
uint8_t num_telecommande_int(uint32_t serialin)
{
  uint16_t index=0;
  uint32_t serialEprom=0;
  // si protocole niceflors, rajouter le bouton dans le poids fort du numéro de série reçu
  // dans le quartet haut du poids fort (BXXX XXXX XXXX XXXX)
  if (protocole==prot_niceflors) serialin=serialin | ((uint32_t)bouton<<28); 
  do
  {
    serialEprom=(uint32_t)lit_eprom_int(0x100+index*4);
    serialEprom=serialEprom+((uint32_t)lit_eprom_int(0x101+index*4) << 8);
    serialEprom=serialEprom+((uint32_t)lit_eprom_int(0x102+index*4) << 16);
    serialEprom=serialEprom+((uint32_t)lit_eprom_int(0x103+index*4) << 24);
    index++;
  } while ((serialin!=serialEprom) & (index<=maxtel)); 
  if (index>=maxtel+1) index=0;
  return(index);
}

// reçu un code valide de télécommande. Vérifier s'il est reconnu,
// si il faut stocker le code en tant que nouvelle télécommande
// a remote code has been received, check if the remote is known
// and if it has to be stored as a new remote
void traitementCode()
{
  uint8_t n;
  uint32_t ep;
  n=num_telecommande_int(serial);     // renvoie le numéro de télécommande "serial" si stocké en eprom int (connu)
  printf(" T%d",n);  // numéro de télécommande
    
  if (n!=0)
  {
    consecutif=HIGH;
    if ((protocole==prot_niceflors) || (protocole==prot_somfy))
    {
      // contrôler que l'index du code de la télécommande est plus grand que l'ancien
      // check if the new index code is greater than the previous one
      // indexcode > previous indexcode , so: indexcoderecu[n]<indexcode
      consecutif=(indexCodeRecu[n]<indexcode);
      indexCodeRecu[n]=indexcode;  // stocker index du code reçu de la télécommande n 
    }
   
    if (consecutif) 
    {
      printf(" ok");
      // coller le relais 1 seconde
      // relay 1 second on
      rel1=0;
      led=0;
      __delay_ms(1000);
      rel1=1;
      led=1;
    }
    else 
    {
      #if francais
      printf(" Code non consécutif");
      #endif   
      #if english
      printf(" Non consecutive code");
      #endif 
    }
  }
  printf("\r\n");
    
  // on demande d'enregistrer une nouvelle télécommande (appui long sur bouton)
  // store a new remote as we press the button for a long time
  if (tpsvalidetelecom!=0)
  {
    tpsvalidetelecom=0;
    if (n==0) 
    {
      //trouver place vide
      i=0;
      do
      {
        ep=(uint32_t)lit_eprom_int(0x100+(i*4));
        ep=ep+((uint32_t)lit_eprom_int(0x101+(i*4)) << 8);
        ep=ep+((uint32_t)lit_eprom_int(0x102+(i*4)) << 16);
        ep=ep+((uint32_t)lit_eprom_int(0x103+(i*4)) << 24);
        i++;           
      } while ((ep!=0xffffffff) & (i<maxtel)); 
      i--;
      if (i>=maxtel+1) 
      {
        #if francais
        printf("Plus de place\r\n");
        #endif
        #if english
        printf("No more space\r\n");
        #endif
        return;
      }
      ecrit_eprom_int(0x100+(i*4),serial & 0xff); // poids faible
      ecrit_eprom_int(0x101+(i*4),serial>>8);
      ecrit_eprom_int(0x102+(i*4),serial>>16); 
      // si niceflor, stocker le bouton dans le quartet haut poids fort (libre), car le numéro de série de la télécommande est indépendant du bouton
      // for nicelor, store the button in the high nibble byte (unused), as serial remote is apart from button.  
      if (protocole==prot_niceflors) ecrit_eprom_int(0x103+(i*4),(serial>>24) | (bouton <<4));   // poids fort
      else
        ecrit_eprom_int(0x103+(i*4),serial>>24);   // poids fort
        
      printf("Télécommande ");Affiche4(serial);printf(" ajoutée\r\n");
      for (i=0;i<10;i++)
      {
        __delay_ms(50);
        led=0;
        __delay_ms(50);
        led=1;
      }    
      n=num_telecommande_int(serial); // numéro de télécommande
      if (n>0) indexCodeRecu[n]=indexcode;  // index du code reçu de la télécommande n  
      __delay_ms(1000);
    }
    else 
    { 
      led=1;  // éteint la led  
      #if francais
        printf("Télécommande déja stockée\r\n");
      #endif
      #if english
        printf("Remote already stored\r\n");
      #endif
      __delay_ms(1000);
    }
  }
}


int main(void)
{
  SYSTEM_Initialize();
  enable=0;
  rel1=1;   // relais non collé
  erreur=0;
    
  // If using interrupts in PIC18 High/Low Priority Mode you need to enable the Global High and Low Interrupts 
  // If using interrupts in PIC Mid-Range Compatibility Mode you need to enable the Global and Peripheral Interrupts 
  // Use the following macros to: 
  // affectation des routines d'interruption
  //INT0_SetInterruptHandler (myINT0); 
  // INT1_SetInterruptHandler (myINT1); 
    
  // Enable the Global Interrupts 
  //INTERRUPT_GlobalInterruptEnable(); 

  // Disable the Global Interrupts 
  //INTERRUPT_GlobalInterruptDisable(); 
  // Enable the Peripheral Interrupts 
  //INTERRUPT_PeripheralInterruptEnable(); 

  // Disable the Peripheral Interrupts 
  //INTERRUPT_PeripheralInterruptDisable(); 

  ANCON0=0;              // on n'utilise pas l'AD
  ANCON1=0;              // sinon RB4 ne marche pas !!
    
  RCONbits.IPEN=1;       // priorité IRQ
    
  INTCON2bits.RBPU=0;    // valide les résistances de pullup sur tout le port B en entrée pour BP1
  INTCON2bits.RBIP=1;    // Configure comme priorité haute
  
  INTCONbits.RBIF=0;     // raz flags      
  INTCONbits.RBIE=1;     // valide l'irq IOC  
  INTCONbits.GIEH=1;     // priorité haute
  INTCONbits.TMR0IF=0;   // raz indicateur tmr0 déborde
  INTCONbits.TMR0IE=1;   // valide irq timer 0
          
    
  IOCBbits.IOCB4=1;      // IOC sur B4
    
    
  // la routine IOC est en void PIN_MANAGER_IOC(void)  dans pin.c
    
  pvitesse=1;
  if (pvitesse==0) {SPBRGH1=0x06;SPBRG1=0x82;}  // 9600 bauds pour transfert xmodem
  if (pvitesse==1) {SPBRGH1=0x00;SPBRG1=0x44;}  // 240200
    
  // réglage de la prédivision par (2)=8 du timer 0 ce qui permet de mesurer le signal NiceFlorS de 18888µs
  T0CON = (2 << _T0CON_T0PS_POSN)    // T0PS  0=/2 1=/4  2=/8 3=/16 4=/32 5=/64 6=/128 7=/256 1=/4
        | (0 << _T0CON_PSA_POSN)     // PSA=0 utilise le prédiviseur
        | (1 << _T0CON_T0SE_POSN)    // T0SE Increment_hi_lo
        | (0 << _T0CON_T0CS_POSN)    // T0CS FOSC/4
        | (0 << _T0CON_T08BIT_POSN)  // T08BIT 16-bit
        | (1 << _T0CON_TMR0ON_POSN); // TMR0ON enabled
   
  #ifdef francais
  UART1_WriteString("Récepteur télécommande Nice FLOR-s / CAME / Somfy RTS\r\n");
  UART1_WriteString("F1IWQ 2025\r\n");
  #endif  
  #ifdef english
  UART1_WriteString("Remote receiver for Nice FLOR-s / CAME / Somfy RTS\r\n");
  UART1_WriteString("F1IWQ 2025\r\n");
  #endif  
   
  led=0;
  menu();
  led=1;
  
  for (i=1;i<10;i++)
  {
      __delay_ms(100);
      led=0;
      __delay_ms(100);
     led=1;
  }
   
  debug=0 ; // utiliser le mode debug utilise l'UART, ce qui prend trop de temps pendant le traitement des fronts de l'IOC
         
  TMR0_Start();   
  INTCONbits.GIE=1;      // valide les irq
   
  i=lit_eprom_int(0);
  if (i==0xff)
   {
      #if francais
      printf("***Erreur l'eprom interne est vide***\r\n");  
      #endif  
      #if english
      printf("***Error internal eprom is empty***\r\n");  
      #endif  
   }
   if (i!=0x21) 
   {
      #if francais
      printf("***Erreur l'eprom interne ne contient pas le bon fichier***\r\n");  
      #endif  
      #if english
      printf("***Error internal eprom has wrong values***\r\n");  
      #endif  
   }
  
  lit_eprom_ext(0);
  i=i2cread[0];
  if (i!=3) 
  {
    #if francais
    printf("***Erreur l'eprom externe ne contient pas le bon fichier***\r\n");  
    #endif  
    #if english
    printf("***Error external eprom has wrong values***\r\n");  
    #endif
  }
          
  enable=1;  // valide le récepteur HM R 433
  
  while(1)
  {
    /*
    // essai rts
    rts=1;
    __delay_ms(200);
    rts=0;
    __delay_ms(200);
    */
    
    // essai cts
    //if (cts==1) led=1; else led=0;
    
      
    if (!RB2) // bouton appuyé
    {
      __delay_ms(1);
      tpsbouton++;
      // appui long sur bouton
      // button long press
      if (tpsbouton>5000) //5s
      { 
        led=0;
        tpsbouton=0;
        #if francais
        printf("Effacement toutes télécommandes\r\n");
        #endif
        #if english
        printf("Discarding all remotes\r\n");
        #endif
        for (crc=0x100;crc<=0x127;crc++)  // 10 télécommandes = 4x10 = 0x28
        {
          ecrit_eprom_int(crc,0xff);
        }    
        __delay_ms(1000);
        led=1;
        while (!RB2) ;               
      }
    }  
      
    // Appui court du bouton
    // button short press
    if ((!AncBp) & (RB2) & (tpsbouton>200) & (tpsbouton<1000))
    {
      tpsvalidetelecom=50000;     
    }  
        
    if (tpsvalidetelecom!=0)
    {
      tpsvalidetelecom--;  
      if ((tpsvalidetelecom % 1000)==0) led=!led;
      if (tpsvalidetelecom==0) led=1;
    }
       
    AncBp=RB2;   
    if (RB2) tpsbouton=0;  
        
    if (!recu) UART_ProcessCommand();
     
    if (aff_enr) affiche_enregistrement();
     
    // télégramme radio reçu de la télécommande depuis routine IOC, le décoder
    // radio remote received from IOC routine, start decoding
    if (recu)
    {
      recu=LOW;
      INTCONbits.GIE=0;      // interdit les IRQ pour éviter interférence avec la variable durée pendant l'affichage
      if (debug==2)
      {
        affiche_enregistrement();       
      }
      if (protocole==prot_niceflors)
      {    
        if (debug>=1) {Affiche(code);printf(" ");} 
        if (decode_nice_b0b6())  // décode le code en b0 b6
        // si B0 B6 sont valides - if b0 b6 are valid
        {        
          decode_b06_nice(); // décode B0 B6 et extrait le numéro de série, bouton etc
          traitementCode();  // faire le traitement - compute the code
        }
      }
      if (protocole==prot_came)
      {
        serial=code;
        printf("Came      Serial=");Affiche4(code);
        traitementCode();
      }
      if (protocole==prot_somfy)
      {              
        if (decode_somfy()==HIGH)
        {
          printf("Somfy     Serial=");Affiche4(serial);
          traitementCode();  
        }
      }  
      if (protocole==prot_cardin)
      {
        printf("Cardin=");
        decode_cardin();
        // if (decode_cardin()==HIGH)
        //printf("Cardin      Serial=");Affiche4(serial);
        //traitementCode();
      }
      if (protocole==prot_fobloqf)
      { 
        //if (decode_fobloqf()==HIGH) printf("Fobloqf      code=");Affiche(code);
          //traitementCode();
          printf("Flobloqf=");
          decode_fobloqf();
        
      }
      
      
           
      NbreBits=0;
      __delay_ms(1000);
      INTCONbits.GIE=1;      // valide les IRQ
    } 
  }    
}

// test __EEPROM_DATA(0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08);

