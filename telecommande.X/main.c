/* 
programme d�codeur t�l�commande protocole NICE FLOR-S / CAME / Somfy RTS / EV1527
NICE FLOR-S / CAME / Somfy protocol receiver remote control decoder program
MPLAB X IDE v6.25
   
Processeur pic 18F26K80 
  M�moire programme 64Ko
  M�moire RAM 3648 octets
  M�moire EPROM int 1ko : contient le fichier KI / contains KI file
M�moire EPROM ext de 128Ko 24LC1026 I2C / contient le fichier de codes nice flors-s / contains nice flor-s file codes

Pour ne pas �craser l'eprom interne � chaque programmation du pic:
To avoid overwriting the internal EPROM each time the pic is programmed:
dans Option/pickit5 : Memories to programm
allow pickit5 to select memory
preserve eprom memory
memory range : 0-3ff
 
liaison UART : 9600,n,8,1 / 230240,n,8,1
Config dans MCC: 
 UART :
 aync_noninverted_sync_inverted
 DataReceive Polarity : non_inverted  
 HS mode car c'est un quartz (16MHz)
 SOSC = oscillateur secondaire, non utilis�
 FOSC = oscillateur primaire � quartz, utiis�
  LP : quartz de 32 kHz
  XT : quartz de 4 MHz
  HS : quartz >4 MHz
  
UART :             230400    115200      9600
SPBRGH1/SPBRG1 = 0x00/0x44  0x00/0x8A  0x06/0x82
la vitesse de 230400 est presque ok pour le debug, en dessous, on mesure mal
�viter d'utiliser l'UART pendant l'acquisition du signal radio m�me en 230400 bauds, ca fausse l'acquisition.

A speed of 230400 is nearly ok for debugging ; below this speed, the measurement is poor.
Avoid using the UART during radio signal acquisition, even at 230400 baud, as this will distort the acquisition.
 
Bus I2C � 400 kHz
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
 0x100       : num�ro s�rie t�l�commande n=1 (32 bits) / serial #, remote 1 / low to high bytes
 0x104       : t�l�commande n=2 : serial #, remote 2
 0x108       : 3
 0x10C       : 4
 0x110       : 5
 0x114       : 6
 0x118       : 7
 0x11C       : 8
 0x120       : 9
 0x124       ; 10
 0x128       ; 11
 0x12c       ; 12 
 .....
 0x14c       ; 20    = (n-1) * 4 + 0x100
 .. jusque 12 t�l�commandes / up to 12 remotes
 
R�cepteurs test�s / Tested receivers :
modulations ASK et OOK / both ASK and OOK
RFM210LCF 
RBX6 
RX500                   ASK   -108dBm
RFM02 (chip CMT2210LC)  OOK only

R�cepteurs FSK : 
HM-R-433 ??? marche pas sur cardin  (5?) Sensibilit� : -109 dBm, ne d�code rien....!
RC-RFSK1-433N  Radiocontrolli (8?) Sensibilit� : -118 dBm
RXB15                         (2?) Sensibilit� : -108 dBm ou -118dBm suivant sources. Introuvable au d�tail. Unavailable on retail
Dickert HQFM433P-50           (30?) r�cepteur cardin "officiel" � 15 broches - works with fobloqf
1=5V 2=0V 3=ANT 10,12,15=au 5V  7,11=0V  13=PDO peak detector output, ne pas relier.  14=data
 
----------------------------------------------------------
Protocole Nice-flors (radio ASK) : protocole assez sophistiqu� qui n�cessite une table de 
d�codage de 65535 mots, et une table de 256 octets.
Quite sophisticated protocol, requires a 65535 words decoding table and a 256 bytes table.
fonctionne avec les r�cepteurs RXB6 / works with receivers : RXB6 & RFM210LCF
https://github.com/Jev1337/NiceFlor-Encoder/tree/main

  code roulant de 52 bits / 52 bits rolling code
  1 bit silence de 18500 �s (37 x 500�s)
  2 bits d�but de 1500 �s  (3 x 500 �s)
  les bits du message:
  1 bit � 1 est constitu� de deux signaux :  500�s puis 1000�s
  1 bit � 0 est constitu� de deux signaux : 1000�s puis  500�s
  1 bit 1500 �s de fin
 
exemples de codes
transmis par t�l�commande 52 bits / 7 octets d�cod�s brut (b0 b6)
remote transmits 52 bits / 7 bytes raw decoded (b0-b6)
  E3052 39A7FA15 Decode=1/CF/AD/C6/58/5/EA
  E2052 39A7FA15 Decode=1/DF/AD/C6/58/5/EA
  E5052 39A7FA15 Decode=1/AF/AD/C6/58/5/EA
  E4052 39A7FA15 Decode=1/BF/AD/C6/58/5/EA

B2-B3 est le code courant envoy� par la t�l�commande. Ce code se trouve dans l'eprom 128Ko. Son index sert de cl� de d�codage.
B2-B3 is the current code sent by the remote device. This code is within the 128kb eprom. The code index is the decoding key.

7 octets d�cod�s bruts / num�ro de s�rie / bouton / index code / r�p�tition
(b0-b6)                  t�l�commande
7 raw decoded bytes    / serial remote  / button / index code / repeat
ok  1/db/52/cc/4c/11/fe/ Serial=0295C827,Bouton=1,Code=1946,repete=3
ok  1/c8/38/e7/cf/92/7d/ Serial=0295C827,Bouton=1,Code=1947,repete=2
ok  2/c3/61/62/14/49/a6/ Serial=0295C827,Bouton=2,Code=1948,repete=1
ok  2/83/61/62/14/49/a6/ Serial=0295C827,Bouton=2,Code=1948,repete=5

Exemples d'erreurs / Error examples :
EZ41     : bit start ou stop mal plac�, inattendu en position 41
         : unexpected start or stop bit in position 41
EF101    : erreur de longueur de bit re�u pendant les donn�es en position 101
         : length duration bit error during datas in position 101
EA=1250  : erreur A de sym�trie dans le motif des donn�es (rencontr� 500/500 �s au lieu de 500/1000�s)
         : 1250 est la valeur du TMR0
         : error A sym�trical frame in data (encountered 500/500 �s instead of 500/1000�s)
         : 1250 is the TMR0 value
EB=2500  : erreur B de sym�trie dans les donn�es (rencontr� 1000/1000 au lieu de 1000/500�s)
         : error B sym�trical frame in data (encountered 1000/1000 �s instead of 1000/500�s)

D�codage correct / correct decoding :
NumSer=0295C827,Bouton=1 T1 ok  <-- t�l�commande 1 reconnue car enregistr�e / remote 1 recognized
NumSer=027588B4,Bouton=2 T0     <-- t�l�commande 0 re�ue signfie inconnue / remote 0 means unknown

documentation t�l�commandes:
https://www.cliffsnotes.com/study-notes/23860179 
 
Pour Nice flors: pour lire les 128ko de l'eprom ext (quand on cherche le code de d�codage), il faut jusque 7s , trop long pour un d�codage.
donc on utilise l'ancien code transmis (par t�l�commande) pour "pr�voir" le suivant qui est incr�ment� de 1, qui doit
se trouver dans les 128 octets suivants.
For nice flors: reading the 128kB of the ext eprom (when fetching the decoding code) takes up to 7s, too long for decoding.
So we use the previous transmitted code (per remote) to "predict" the next one, which is incremented by 1, 
and have to be inside the next 128 ones.
  
---------------------------------------------------
Protocole CAME (radio OOK) protocol: 
fonctionne avec les r�cepteurs / work with receivers : RXB6 & RFM210LCF-A 
Code fixe 26 bits / Static 26 bits code
https://github.com/jehy/arduino-came-reader
https://github.com/psa-jforestier/rtl_433_tests/tree/master/tests/Came/TOP432
https://github.com/merbanan/rtl_433/issues/1452

-------------------------------------------------
Protocole Somfy RTS
fonctionne avec les r�cepteurs / work with receivers : RXB6 & RFM210LCF-A 
Code roulant simple de 56 bits.
Simple 56 bits rolling code.
https://github.com/Legion2/Somfy_Remote_Lib
https://pushstack.wordpress.com/somfy-rts-protocol/

---------------------------------------------------
Protocole (radio FM) CARDIN S449 :
utiliser le r�cepteur Dickert HQFM433P-50
cardin S449 utilise le protocole FSK /  cardin S449 uses the FSK protocol
64 bits keelok
On ne prend en compte que le num�ro de s�rie de la t�l�commande pour le d�codage, pas le compteur qui est cod�.
We just check the serial remote for decoding, not the encoded counter.
https://cargeek.live/docs/Sec_Analysis_Garage_Door_XXxiOwB.pdf
Cardin    Serial=0063F2DA=6550234 Bouton=2 
6550234 est le num�ro de s�rie de la t�l�commande en d�cimal, �crit sur son l'�tiquette.
6550234 is the remote serial number in decimal, printed on the tag of the remote.

---------------------------------------------------
Protocole FoBloqf (FM) de rfsolutions.co.uk
utiliser le r�cepteur Dickert HQFM433P-50
Utilise un Keeloq - pas finalis�
utiliser le r�cepteur Dickert HQFM433P-50
-------------------------------------------------- 
 
Protocole EV RT1527 FP1527 (t�l�commande AK-FS02A)
https://w.electrodragon.com/w/images/7/7b/RT1527E.pdf
Entete / num�ro de s�rie � 20 bits / D0 D1 D2 D3
Sync  = Haut (1) pendant 32 cycles, Bas (0) pendant 991 cycles
Bit 0 = Haut (1) pendant 32 cycles, Bas (0) pendant 96 cycles
Bit 1 = Haut (1) pendant 96 cycles, Bas (0) pendant 32 cycles
transmission LSB en premier (d�caler � droite � la r�ception)
--------------------------------------------------
 
Pour apprendre une nouvelle t�l�commande : 
  appui court sur le bouton (la led clignote) et activer la t�l�commande dans les 5s.
Pour supprimer toutes les t�l�commandes :
  appui long de 5s : la led s'allume 3s.
To learn a new remote :
  short press (led is blinking) then press on remote button within 5s.
To delete all remotes ;
  5s long press : led light for 3s.

Les t�l�commandes Somfy (certaines) et Cardin ont un bouton de programmation qui permettent de m�moriser
un bouton d'une t�l�commande d�ja connue � un r�cepteur associ�. Ce programme utilise cette fonction,
mais prend en compte tout signal suivant se pr�sentant et peut constituer une faille de s�curit�.
Cette fonctionnalit� peut �tre d�valid�e.
Ceci est utile si le r�cepteur est encastr� et on ne peut pas appuyer sur le bouton d'ajout d'une nouvelle t�l�commande.
(modeProg).
Some Somfy remotes and Cardin have a programm button that allows to memorize un known button remote to an 
already linked receiver. This program uses this feature, but also takes into account any subsequent signal that may appear,
and might be a security failure. This feature can be disabled.
This is useful if the receiver is recessed and the button to add a new remote control can't ne pressed.
 

*/

#include "mcc_generated_files/system/system.h"
#include "string.h"
#include "stdlib.h"

#define debugxmodem 0
#define francais    1    // choisissez votre langue
#define english     0    // choose your language

#define led     RC0     // sortie
#define rts     RC1     // sortie - not used : UART protocole rts/cts - vers CTS PC : bloque l'envoi du PC
#define cts     RC2     // entr�e - not used : UART protocole rts/cts - de PC : bloque l'envoi vers le PC
#define enable  RA3     // enable r�cepteur HM-R-433
#define rel1    RA5     // commande bobine du relais / relay coil command
#define MAX_COMMAND_LEN       (8U)
#define LINEFEED_CHAR         ((uint8_t)'\n')
#define CARRIAGERETURN_CHAR   ((uint8_t)'\r')
#define Eprom24lc1026 0xA0 >>1     // Adresse I2C - BO en bit 1 (avant d�calage) pour le bloc 0/1
#define Eprom24wc16 0xA0 >>1
#define maxtel  20       // nombre de t�l�commandes maxi

#define KeeLoq_NLF    0x3A5C742E  // cl� de 32 bits
#define bit(x,n) (((x)>>(n))&1)
#define g5(x,a,b,c,d,e)	(bit(x,a)+bit(x,b)*2+bit(x,c)*4+bit(x,d)*8+bit(x,e)*16)
// cl� de l'agorithme keeloq 64bit LSB-first
uint8_t key[] = {0x56,0x4a,0xbc,0x07,0x57,0x1e,0x62,0x94};

// CAME �l�ments radio / radio items
// 433,920 MHz  modulation HF AM-OOK (tout ou rien AM)
const uint16_t silenceC=29690;  // 14845 �s silent
const uint16_t debutbitC=2660;  // 1280 �s start
const uint16_t bit0C=640;       // 320 �s  
const uint16_t bit1C=1280;      // 640 �s
const uint16_t toleranceC=170;
// calcul�es:
const uint16_t silenceC_M=silenceC-toleranceC;
const uint16_t silenceC_P=silenceC+toleranceC;
const uint16_t debutbitC_M=debutbitC-toleranceC;
const uint16_t debutbitC_P=debutbitC+toleranceC;
const uint16_t bit0C_M=bit0C-toleranceC; 
const uint16_t bit0C_P=bit0C+toleranceC;
const uint16_t bit1C_M=bit1C-toleranceC; 
const uint16_t bit1C_P=bit1C+toleranceC;
const uint16_t coupureC=(bit0C+bit1C)/2;


// CARDIN n�cessite un r�cepteur FM-FSK
// 433,920 MHz requires a FM-FSK receiver
const uint16_t silenceD=33000;  // 34000 16520�s; 
const uint16_t debutbitD=8020;  // 4000�s
const uint16_t bit0D=850;       // 856 730 �s (officiel 400�s)   
const uint16_t bit1D=1600;      // 1560 500 �s (officiel=800�s)
const uint16_t toleranceD=350;  // 250 grande dispersion sur cardin
// calcul�es:
const uint16_t silenceD_M=silenceD-toleranceD;
const uint16_t silenceD_P=silenceD+toleranceD;
const uint16_t debutbitD_M=debutbitD-toleranceD;
const uint16_t debutbitD_P=debutbitD+toleranceD;
const uint16_t bit0D_M=bit0D-toleranceD; 
const uint16_t bit0D_P=bit0D+toleranceD;
const uint16_t bit1D_M=bit1D-toleranceD; 
const uint16_t bit1D_P=bit1D+toleranceD;
const uint16_t coupureD=(bit0D+bit1D)/2;

// Fobloqf pas encore trait�, n�cessite un r�cepteur FM-FSK
// 433,920 MHz requires a FM-FSK receiver
const uint16_t silenceF=6800;   //3x3400�s silence
const uint16_t debutbitF=3140;  // start 1570�s
const uint16_t bit0F=790;       // 400 �s     
const uint16_t bit1F=1570;      // 800 �s 
const uint16_t toleranceF=150;
// calcul�es:
const uint16_t silenceF_M=silenceF-toleranceF;
const uint16_t silenceF_P=silenceF+toleranceF;
const uint16_t debutbitF_M=debutbitF-toleranceF;
const uint16_t debutbitF_P=debutbitF+toleranceF;
const uint16_t bit0F_M=bit0F-toleranceF; 
const uint16_t bit0F_P=bit0F+toleranceF;
const uint16_t bit1F_M=bit1F-toleranceF; 
const uint16_t bit1F_P=bit1F+toleranceF;
const uint16_t coupureF=(bit0F+bit1F)/2;

// NiceFLors �l�ments radio / radio items
// 433,920 MHz modulation HF AM-ASK (Amplitude shift keying)
const uint16_t silenceN=37776;   // 18888 �s silent
const uint16_t debutbitN=2979;   // 1500 �s start
const uint16_t bit0N=958;        // 500 �s  
const uint16_t bit1N=1962;       // 1000 �s
const uint16_t toleranceN=280;
// calcul�es:
const uint16_t silenceN_M=silenceN-toleranceN;
const uint16_t silenceN_P=silenceN+toleranceN;
const uint16_t debutbitN_M=debutbitN-toleranceN;
const uint16_t debutbitN_P=debutbitN+toleranceN;
const uint16_t bit0N_M=bit0N-toleranceN; 
const uint16_t bit0N_P=bit0N+toleranceN;
const uint16_t bit1N_M=bit1N-toleranceN; 
const uint16_t bit1N_P=bit1N+toleranceN;
const uint16_t coupureN=(bit0N+bit1N)/2;

// Somfy RTS
// 433,420 MHz ASK (port�e r�duite si on utilise un r�cepteur 433,920 MHz "tol�rant", mais ne marche pas sur tous les r�cepteurs)
const uint16_t silenceS=5084;   // 2416 �s silent
const uint16_t debutbitS=9600;  // 4550 �s start
const uint16_t bit0S=1317;      // 604 �s
const uint16_t bit1S=2614;      // 1208 �s 
const uint16_t toleranceS=220;
// calcul�es:
const uint16_t silenceS_M=silenceS-toleranceS;
const uint16_t silenceS_P=silenceS+toleranceS;
const uint16_t debutbitS_M=debutbitS-toleranceS;
const uint16_t debutbitS_P=debutbitS+toleranceS;
const uint16_t bit0S_M=bit0S-toleranceS; 
const uint16_t bit0S_P=bit0S+toleranceS;
const uint16_t bit1S_M=bit1S-toleranceS; 
const uint16_t bit1S_P=bit1S+toleranceS;
const uint16_t coupureS=(bit0S+bit1S)/2;

// EV1527 RT1527 FP1527
const uint16_t silenceV=677;
const uint16_t debutbitV=18820;   
const uint16_t bit32=677;  
const uint16_t bit96=1900; 
const uint16_t toleranceV=40;
// calcul�es:
const uint16_t silenceV_M=silenceV-toleranceV;
const uint16_t silenceV_P=silenceV+toleranceV;
const uint16_t debutbitV_M=debutbitV-toleranceV;
const uint16_t debutbitV_P=debutbitV+toleranceV;
const uint16_t coupureV=(bit32+bit96)/2;

// protocoles
const uint8_t  prot_niceflors=1;
const uint8_t  prot_came=2;
const uint8_t  prot_cardin=3;
const uint8_t  prot_somfy=4;
const uint8_t  prot_fobloqf=5;
const uint8_t  prot_1527=6;

// erreurs chronogramme
const uint8_t Err_wrong_range_bit=1; // 1=bit mal plac�  2=erreur de sym�trie  3=longueur inconnue bit 
const uint8_t Err_sym_bit=2;        
const uint8_t Err_bit_duration=3;

uint8_t b0,b1,b2,b3,b4,b5,b6;  // codes bruts de la t�l�commande niceflors et somfy / raw remote niceflors and somfy codes
char          chaine[50];
uint8_t       i2cdata[130];
uint8_t       debug=0,protocole;
uint8_t       i2cread[130] = {};
uint32_t      vitesse[2]={9600,230400};
uint8_t       bufferRx[130] ={};
uint32_t      mesure_bits[200];
uint8_t       mesure_error[200];  // 1=bit mal plac�  2=erreur de sym�trie  3=longueur inconnue bit 
uint8_t       compteur,timeout,erreur,erreurI2C,repete,BoutonActif=0;
uint8_t       Rx_prec,waitCounter,pak,pakcom,pvitesse,bouton;
uint16_t      compt,crc,crcrecu,indexcode,dureeS,dureeStart1;
uint64_t      code,tpsvalidetelecom,serial;
uint32_t      duree=0,deborde=0,anc_duree,i,trame,tpsbouton;
uint8_t       command[MAX_COMMAND_LEN];
uint8_t       index=0;
uint8_t       readMessage;
_Bool         recu=LOW,bitSilence=LOW,bitPrec=LOW,AncBp,telegram=LOW,tramebits=LOW;
_Bool         aff_enr=LOW,rx,consecutif,debugCardin,debugFobloqf,debugBrut,
              modeProg=LOW;
uint16_t      NbreBits,NbreBitsMsg,nb,Nb0;
uint16_t      indexCodeRecu[maxtel+1];  // codes recus des t�l�commandes 1 � maxtel

// debug mode xmodem
#if debugxmodem
  uint16_t    adresses[1024];
  uint8_t     numpak[700];
#endif
  
  
void raz_bits()
{
  telegram=LOW;
  tramebits=LOW;
  bitSilence=LOW;  
}

void fin_came()
{
  raz_bits();
  nb=NbreBits;
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
  recu=HIGH;  
}
  
void fin_fobloqf()
{
  raz_bits();
  nb=NbreBits;
  recu=HIGH;  
}

void fin_1527()
{
  raz_bits();
  nb=NbreBits;
  recu=HIGH;  
}

void fin_niceflors()
{
  raz_bits();
  nb=NbreBits;
  recu=HIGH;  // info pour prog principal / send to do for main
}

// https://www.youtube.com/watch?v=dy9GlerX_NE
// interruption IOC (interrupt on change) port B4
void __interrupt(high_priority) ISR_high()
{
  // interruption tmr0 d�borde : il passe de FFFF � 0; rajouter 0x10000 au compteur
  if (INTCONbits.TMR0IF==1)
  {
    //  printf("T");
    deborde=deborde+0x10000;
    INTCONbits.TMR0IF=0; 
  }
    
  // interruption IOC rx r�cepteur radio
  if(INTCONbits.RBIE==1 && INTCONbits.RBIF==1)
  {        
    rx=!RB4; //PORTB;  // lire le port B, m�me si on utilise pas la valeur B4 / read portB even if we don't need the B4 value

    //led=rx;
    anc_duree=duree;
    //duree=((uint32_t)TMR0H<<8)+(uint32_t)TMR0L;  // car duree est uint32_t
    //duree=duree+deborde;
    duree=TMR0+deborde;
   // if (duree>0x10000) printf("%lu\r\n",duree);
    deborde=0;
    TMR0=0;
    //TMR0H=0;     // raz timer pour mesure cr�neau suivant
    //TMR0L=0;
    
    NbreBits++;
    
    //if (protocole!=0) printf("%d",protocole);
    
    // ------traitement signal t�l�commande -----
    if (debug==3)  // test des transitions du signal brut debugage de bas niveau - test for raw transitions signal. low level debugging
    {
      // afficher par UART prend du temps et alt�re les mesures
      // display through UART takes time and corrupts durations
      if (duree>300) {printf("T=%lu\n\r",duree);}
      if (NbreBits==20) debug=0;
      goto fin;   // sortie rapide - quick exit
    }
       
    if (debugBrut)  // enregistrement brut, puis affichage
    {
      if (NbreBits<200) 
      {
        mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;
        goto fin;
      }  
      nb=200;
      debug=0;
      debugBrut=LOW;
      protocole=0;
      raz_bits();
      aff_enr=HIGH;
      goto fin;
    }
    
    // silence fobloqf  - inhib�
    // Si vous voulez d�verrouiller fobloqf, simplement enlever "LOW &&"
    // if you want to unlock fobloqf, just remove the "LOW &&"
    if ( LOW && (!bitSilence) && (duree>silenceF_M) && (duree<silenceF_P))   
    {
      NbreBits=0;
      mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;
      if (debug==2) 
      printf("F");
      protocole=prot_fobloqf;
      
      if (debugFobloqf) {debugBrut=HIGH;debugFobloqf=LOW;goto fin;}
      code=0;
      bitSilence=HIGH;
      telegram=LOW;
      goto fin;
    }
    
    // d�but flobloqf
    if ((bitSilence) && (protocole==prot_fobloqf) && (duree>debutbitF_M) && (duree<debutbitF_P))  
    { 
      if (debug==2) printf("S");
      //printf("%d\r\n",NbreBits);
        //if ((NbreBits<40) || (NbreBits>41)) {bitSilence=LOW;protocole=0;goto fin;}
      if (NbreBits!=44) {bitSilence=LOW;protocole=0;goto fin;}
      NbreBits=0;
      protocole=prot_fobloqf;
      mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;
      
      //debugBrut=1;goto fin;
      NbreBitsMsg=0;
      telegram=HIGH;
      code=0;
      goto fin;
    }
   
    // silence EV1527
    if ( (!bitSilence) && (duree>silenceV_M) && (duree<silenceV_P))   
    //if (!telegram && (duree>silenceV_M) && (duree<silenceV_P))   
    {
      NbreBits=0;
      mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;
      //if (debug==2) 
      //printf("S%d",duree);
      //printf("S");
      //goto fin;
      protocole=prot_1527;
      //if (debugFobloqf) {debugBrut=HIGH;debugFobloqf=LOW;goto fin;}
      code=0;
      bitSilence=HIGH;
      telegram=LOW;
      goto fin;
    }
     
    // d�but EV1527
    if ((protocole==prot_1527) && bitSilence)
    {
      if ((duree>debutbitV_M) && (duree<debutbitV_P)) 
      { 
        if (NbreBits!=1) {bitSilence=LOW;protocole=0;goto fin;}
        protocole=prot_1527;
        mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;
      
        //debugBrut=HIGH;goto fin;
        NbreBits=0;
        NbreBitsMsg=0;
        telegram=HIGH;
        code=0;
        goto fin;
      }
      else bitSilence=LOW; 
    }  
  
     // silence cardin 
    if ((!bitSilence) && (duree>silenceD_M) && (duree<silenceD_P)) 
    {
      NbreBits=0;
      mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;
      protocole=prot_cardin;
      if (debug==2) 
      printf("Cardin=%lu\r\n",duree);
      if (debugCardin) {debugBrut=HIGH;debugCardin=LOW;goto fin;}
      code=0;
      bitSilence=HIGH;
      goto fin;
    } 
    
    // d�but cardin, apr�s les 11 ou 12 cr�naux de sync
    if ((bitSilence) && (duree>debutbitD_M) && (duree<debutbitD_P))  
    //if ((protocole==prot_cardin) && (duree>debutbitD_M) && (duree<debutbitD_P))
    //if ( (duree>debutbitD_M) && (duree<debutbitD_P))
    { 
      //printf("%d\r\n",NbreBits);
      NbreBits=0;
      mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;
      protocole=prot_cardin;
      //if (debug==2) 
          //printf("S%d",duree);
      NbreBitsMsg=0;
      telegram=HIGH;
      code=0;
      goto fin;
    }
    //if (protocole==prot_cardin) printf("C");
    
    // silence nice flors
    if ((!bitSilence) && (duree>silenceN_M) && (duree<silenceN_P))  
    {
      NbreBits=1;
      bitSilence=HIGH;
      dureeS=duree;
      if (debug==2) printf("NiceFS=%u\r\n",duree);
      protocole=prot_niceflors;
      code=0;
      goto fin;
    }
   
    // silence - came     
    if ((!bitSilence) && (duree>silenceC_M) && (duree<silenceC_P))
    {
      NbreBits=1;
      protocole=prot_came;
      mesure_bits[NbreBits]=duree;
      if (debug==2) printf("came");
      bitSilence=HIGH;
      telegram=HIGH; 
      code=0;
      goto fin;
    }
    
    // Somfy RTS : x bits silence et un bit start
    // le bit de start est pr�c�d� de x bits silences, on contr�le seulement que le pr�c�dent est un silence
    // et que l'�tat du start est � 1 (rx)
    // Somfy : x silent bits and one start bit.
    // The start bit is preceded by x silence bits, we only check that the previous one is a silence one
    // and start bit is 1 (rx)
    if ((anc_duree>silenceS_M) && (anc_duree<silenceS_P) && rx && (!bitSilence) && (duree>debutbitS_M) && (duree<debutbitS_P) )   
    {
      NbreBits=1;
      bitSilence=HIGH;
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
      if ((duree>bit1S_M) && (duree<bit1S_P))
      {
        Nb0=0;  
        if (rx) // polarit� du signal
        {
          //printf("0");
          NbreBitsMsg++;           
          code=code<<1;  
        }
        else
        {
          //printf("1");
          NbreBitsMsg++;           
          code=code<<1;    // d�caler � gauche sur 64 bits on peut utiliser aussi <<1
          code=code | 1;  // bit 0 � 1 c'est un bit � 1
        }
        if (NbreBitsMsg==56) fin_somfy();
        goto fin;
      }
      
      // cas bit 0 -> bit 0  ou   bit 1 -> bit 1
      if ((duree>bit0S_M) && (duree<bit0S_P))
      {
        Nb0++;   // incr�menter nombre de bits � 0 cons�cutifs
        if (Nb0==1) goto fin;   // si c'est le 1er ne rien faire
        Nb0=0;
        if (!rx) 
        {
          //printf("B1");
          NbreBitsMsg++;           
          code=code<<1;  // d�caler � gauche sur 64 bits 
          code=code | 1;   // bit 0 � 1 c'est un bit � 1
        }
        else
        { 
          //printf("B0");
          NbreBitsMsg++;           
          code=code<<1;  // d�caler � gauche sur 64 bits
        }   
        if (NbreBitsMsg==56) fin_somfy();
        goto fin;
      }
      // erreur dur�e hors tol�rance
      printf("E%d\r\n",duree);
      if (NbreBits<200) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;} 
      raz_bits();
      goto fin;
    }  
    
    // cardin S449 ------------------------------
    // ce lien concerne S466 pas S449 !
    // https://github.com/merbanan/rtl_433/blob/master/src/devices/cardin.c
    if (telegram && (protocole==prot_cardin))
    {
      // 1  
        //printf("%d\r\n",NbreBits);
        if (NbreBits<200) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;}  
      //if ((duree>(bit1D-toleranceD)) && (duree<(bit1D+toleranceD)))
      if (duree>coupureD)
      {
        if ((NbreBits+1) % 2==0) // bit impair : m�moriser son �tat - even bit : store it
        {
          bitPrec=HIGH;
        }
        else
        // �valuation sur bits pairs
        {
          if (bitPrec==LOW) 
          {
            NbreBitsMsg++;           
            code=code >> 1;  // d�caler � droite sur 64 bits 
            code=code | 0x8000000000000000L ;
            if (NbreBitsMsg>=64) fin_cardin();
          }
          else 
          {
            mesure_error[NbreBits]=Err_sym_bit;
            if (debug==1) printf("EAA D=%u\r\n",duree);  // erreur sym�trie donn�es
            nb=NbreBits;
            NbreBits=0;raz_bits();
          }
     
        }
        goto fin;
      }
      //if (telegram) printf("%d\r\n",duree);  
      //if ((duree>(bit0D-toleranceD)) && (duree<(bit0D+toleranceD)))
      else
      {
        //printf("0");
        //printf("/0 %d",NbreBits);
        //if (NbreBits>=64) fin_cardin();
        //goto fin; //----------------
        if ((NbreBits+1) % 2==0)   // bit impair
        {
          bitPrec=LOW;
        }
        else
        // �valuation sur bits pairs
        {
          if (bitPrec==HIGH) 
          {
            NbreBitsMsg++;
            code=code>>1; // d�caler � droite
            if (NbreBitsMsg>=64) fin_cardin();
          }
          else 
          {
            mesure_error[NbreBits]=Err_sym_bit;  // erreur sym�trie donn�es
            if (debug==1) printf("EBA D=%u\r\n",duree);           
            nb=NbreBits;
            NbreBits=0;raz_bits();         
          }   
        }
        goto fin; 
      } 
      //if (debug==1) 
      printf("E%d\r\n",duree);
      if (NbreBits<200) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=Err_bit_duration;}
      nb=NbreBits;
      raz_bits();
      goto fin;
    }
    
    // EV1527 ------------------------------
    if (telegram && (protocole==prot_1527))
    {
      if (NbreBits<200) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;}  
      if (duree>coupureV)
      {
        if ((NbreBits+1) % 2==0) // bit impair : m�moriser son �tat - even bit : store it
        {
          bitPrec=HIGH;
        }
        else
        // �valuation sur bits pairs
        {
          if (bitPrec==LOW) 
          {
            NbreBitsMsg++;           
            code=code >> 1;  // d�caler � droite sur 64 bits           
            if (NbreBitsMsg>=24) fin_1527();
          }
          else 
          {
            mesure_error[NbreBits]=Err_sym_bit;
            if (debug==1) printf("EVA=%u\r\n",duree);  // erreur sym�trie donn�es
            nb=NbreBits;
            NbreBits=0;raz_bits();
          }
        }
        goto fin;
      }
      else
      {
        if ((NbreBits+1) % 2==0)   // bit impair
        { 
          bitPrec=LOW;
        }
        else
        // �valuation sur bits pairs
        {
          if (bitPrec==HIGH) 
          {
            NbreBitsMsg++;
            code=code>>1; // d�caler � droite
            code=code | 0x8000000000000000L ;
            if (NbreBitsMsg>=24) fin_1527();
          }
          else 
          {
            mesure_error[NbreBits]=Err_sym_bit;  // erreur sym�trie donn�es
            if (debug==1) printf("EVB=%u\r\n",duree);           
            nb=NbreBits;
            NbreBits=0;raz_bits();         
          }   
        }
        goto fin; 
      } 
    }
      
    // Fobloqf ----------------------------------------------------------------------------
    if (telegram && (protocole==prot_fobloqf))
    {   
      if ((duree>(bit1F-toleranceF)) && (duree<(bit1F+toleranceF)))
      //if (duree>coupureF)
      {
        //printf("1");
        //code=code << 1; // d�caler � gauche
        //code=code | 1;
        code=code>>1;
        code=code | 0x8000000000000000L ;   
        if (NbreBits<150) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;}   
        if (NbreBits==64) fin_fobloqf();  // 55 bits
        goto fin;
      }
 
      if ((duree>(bit0F-toleranceF)) && (duree<(bit0F+toleranceF)))
      //else
      {
        //printf("0");
        //code=code << 1;  // d�caler � gauche 
        code=code>>1;
        if (NbreBits<150) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;} 
        if (NbreBits==64) fin_fobloqf();      
        goto fin;
      }
      // extra bit de 1200�s
      printf("X%d ",duree);
      if (NbreBits<150) mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0; 
      if (NbreBits>=64) fin_fobloqf();   
      goto fin;
      //else
      {
        raz_bits();
        nb=NbreBits;  // pour affichage
        if (NbreBits<200) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=Err_bit_duration;}
        if (debug==1) printf("EFA%d\r\n",NbreBits); // erreur bit inconnu dans les donn�es
        goto fin;
      }            
    }   
    
    // CAME ----------------------------------------------------------------------------
    if ((protocole==prot_came) && (telegram))
    {   
      //printf("%d\r\n",duree);
      if (telegram)
      {
        if ((duree>bit1C_M) && (duree<bit1C_P))
        {
          //printf("1");
          code=code * 2; // d�caler � gauche
          code=code | 1;
          if (NbreBits<150) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;}   
          if (NbreBits==26) fin_came();
          goto fin;
          if (NbreBits % 2==0) // bit impair : m�moriser son �tat - even bit : store it
          {
            bitPrec=HIGH;
          }
          else
          // �valuation sur bits pairs
          {
            if (bitPrec==LOW) 
            {
              NbreBitsMsg++;           
              code=code * 2;  // d�caler � gauche sur 64 bits 
              code=code | 1;  // bit 0 � 1
            }
            else 
            {
              mesure_error[NbreBits]=Err_sym_bit;
              NbreBits=0;raz_bits();
              if (debug==1) printf("EAA D=%u\r\n",duree);  // erreur sym�trie donn�es
            }
          }
          goto fin;
        }
        //if (telegram) printf("%d\r\n",duree);  
        if ((duree>bit0C_M) && (duree<bit0C_P))
        {
          //printf("0");
          code=code * 2;  // d�caler � gauche 
          if (NbreBits<150) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;} 
          if (NbreBits==26) fin_came();
          goto fin;
          if (NbreBits % 2==0)
          {
            bitPrec=LOW;
          }
          else
          // �valuation sur bits pairs
          {
            if (bitPrec==HIGH) 
            {
              NbreBitsMsg++;
              code=code*2; // d�caler � gauche
            }
            else 
            {
              NbreBits=0;raz_bits();
              if (debug==1) 
              {mesure_error[NbreBits]=Err_sym_bit;printf("EBA D=%u\r\n",duree);}  // erreur sym�trie donn�es
            }
          }
          goto fin;
        }
        else
        {
          raz_bits();
          nb=NbreBits;  // pour affichage
          if (NbreBits<200) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=Err_bit_duration;}
          if (debug==1) printf("ECA%d\r\n",NbreBits); // erreur bit inconnu dans les donn�es
          goto fin;
        }       
      }       
    }   
        
    // -------------------------------------------------------------------   
    if (protocole==prot_niceflors) 
    {
      // printf("J");
      // trouv� bit d�but (ou fin), peut �tre l'un des deux d�buts ou le dernier
      // found a start bit, might be one of the 2 firsts or the last
      if ((duree>debutbitN_M) && (duree<debutbitN_P)) 
      {   
        //if (debug==1) {printf("S%u",NbreBits);printf(" %d\r\n",duree);}
        // bit de fin, fin du message radio t�l�commande
        // end bit, end of radio remote message
        if (NbreBits==108)
        {     
          bitSilence=LOW;     
          mesure_bits[NbreBits]=duree;
          mesure_error[NbreBits]=0;  
          fin_niceflors();
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
          // 2eme bit de d�but
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
        // bit inconnu ou stop mal plac�, inattendu
        // unexepected start or stop bit
        raz_bits(); 
        goto fin;      
      }
    
      if (tramebits)  // donn�es 
      {
        //printf("D%d\r\n",NbreBits);
        if ((duree>bit1N_M) && (duree<bit1N_P))
        {
          //Serial.print("1");
          if (NbreBits<150) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;}   
          if (NbreBits % 2==0) // bit pair : m�moriser son �tat - even bit : store it
          {
            bitPrec=HIGH;
          }
          else
          // �valuation sur bits impairs
          {
            if (bitPrec==LOW) 
            {
              NbreBitsMsg++;           
              code=code * 2;  // d�caler � gauche sur 64 bits 
              code=code | 1;  // bit 0 � 1
            }
            else 
            {
              NbreBits=0;raz_bits();
              if (debug==1) {mesure_error[NbreBits]=Err_sym_bit;printf("EA D=%u\r\n",duree);}  // erreur sym�trie donn�es
            }
          }
        }
        else  
        if ((duree>bit0N_M) && (duree<bit0N_P))
        {
          //Serial.print("0");
          if (NbreBits<150) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;} 
          if (NbreBits % 2==0)
          {
            bitPrec=LOW;
          }
          else
          // �valuation sur bits impairs
          {
            if (bitPrec==HIGH) 
            {
              NbreBitsMsg++;
              code=code*2; // d�caler � gauche
            }
            else 
            {
              NbreBits=0;raz_bits();
              if (debug==1) {mesure_error[NbreBits]=Err_sym_bit;printf("EBB D=%u\r\n",duree);}  // erreur sym�trie donn�es
            }
          }  
        }
        else
        {
          raz_bits();
          nb=NbreBits;  // pour affichage
          if (NbreBits<200) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=Err_bit_duration;}
          if (debug==1) printf("EFB%d\r\n",NbreBits); // erreur de donn�es
        }
      }    
    }
    
    fin:
    //NOP();    // il faut ex�cuter au moins une instruction entre la lecture du port B et le RAZ de RBIF: �11.3 sauf dans ce cas
    INTCONbits.RBIF=0;
  }
}  


// lecture d'un octet de l'eprom int
// read one byte from int eprom
uint8_t lit_eprom_int(uint16_t adresse)
{
  EEADRH=adresse >> 8;  // adresse haute
  EEADR=adresse & 0xff; // adresse basse 	
  EECON1bits.EEPGD=0 ;  // pointe data m�moire
  EECON1bits.CFGS=0;    // acc�s eprom
  EECON1bits.RD=1;      // lecture
  NOP();
  return (EEDATA);
}
 
// https://github.com/marc-invalid/chipwhisperer-marc/blob/master/doc/marc/keeloq/keeloq_algorithm/keeloq_algorithm.md   
// applique l'algo keyloq standard � data avec la cl� key 
uint32_t KeeLoq_Decrypt(uint64_t data, const uint64_t key) 
{
  uint32_t x = data, r;
  for (r = 0; r < 528; r++) 
  {
    x=(x<<1)^bit(x,31)^bit(x,15)^(uint32_t)bit(key,(15-r)&63)^bit(KeeLoq_NLF,g5(x,0,8,19,25,30));
  }
  return x;
 }
 
// https://github.com/liyanboy74/arduino-rolling-code-keeloq-receiver/blob/main/main/keeloq.c
uint8_t nlf(uint8_t d) 
{
  return (((uint32_t)(KeeLoq_NLF) >> d) & 0x1);
}

// entr�e/sortie dans data
 uint64_t KeeLoq_Decrypt2(uint8_t *key, uint64_t data, const uint16_t nrounds) 
 {
  uint32_t x;
  uint16_t r;
  uint8_t o,nlf_input,k,ki;

  for (r=0;r<nrounds;r++) 
  {
    nlf_input=(((data>>30) & 0x1) << 4) | (((data>>25) & 0x1) << 3) | (((data>>19) & 0x1) << 2) | (((data>>8) & 0x1) << 1) | (data & 0x1);

    o=nlf(nlf_input); // o = 0 ou 1
    ki=(uint16_t)(15-r) % 64;
    k=key[ki/8] >> (ki % 8);
    x=k^(data>>31)^(data >> 15)^o;
    data=(data<<1) | x & 1;
  }
  return data;
}

void menu()
{
   #if francais
   printf("       ** MENU **\n\r\n\r");
   printf("?....Affiche ce menu\r\n");
   printf("0....Force le mode debug 0\r\n");
   printf("1....Change mode debug \r\n");
   printf("2....UART9600/230400 bauds\r\n");
   printf("3....Envoyer a l'eprom ext le fichier 128Ko de codes NiceFlorS (protocole Xmodem CRC)\r\n");
   printf("4....Envoyer a l'eprom int le fichier 256o de ki NiceFlorS (protocole Xmodem CRC)\r\n");
   printf("5....Affiche telegramme recu de la telecommande\r\n");
   printf("6....Affiche la derniere erreur\r\n");
   printf("7....Octets recus par xmodem\r\n");
   printf("8....Affiche les 200 premiers octets de l'EPROM externe\r\n");
   printf("9....Affiche EPROM interne\r\n");
   printf("A....Verifie checksum eprom ext\r\n");
   printf("B....Lit les 64Ko de l'eprom ext (long) par bloc de 128 octets\r\n");
   printf("C....Liste des telecommandes connues\r\n");  
   #if debugxmodem
     printf("K....Affiche le tableau adresses[]");
   #endif
    
   #endif
   #if english
   printf("       ** MENU **\n\r\n\r");
   printf("?....Display this menu\r\n");
   printf("?....Force debug 0 mode\r\n");
   printf("1....Change debug mode \r\n");
   printf("2....UART9600/230400 bauds\r\n");
   printf("3....Send Niceflors 128kb codes file to ext eprom (Xmodem CRC protocol)\r\n");
   printf("4....Send Niceflors 256b ki-codes to int eprom (Xmodem CRC protocol)\r\n");
   printf("5....Display remote telegram\r\n");
   printf("6....Display last error\r\n");
   printf("7....Bytes received from xmodem\r\n");
   printf("8....Display 200 first bytes of external EPROM\r\n");
   printf("9....Display internal EPROM\r\n");
   printf("A....Checksum ext eprom\r\n");
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

// �criture directe uart
void UART_WriteByte(uint8_t b)
{
  while(!UART1.IsTxReady())
  {
  };
  UART1.Write(b);
}

// �crit le bloc de 128 octets dans l'eprom externe � l'adresse
// les donn�es � transmettre sont dans bufferRx[1...]
void ecrit_bloc_eprom_ext(uint32_t adresse)
{
  int i;
  uint32_t mask;
   
  if (adresse>0xffff) mask=1; else mask=0;  // adresse basse ou haute de l'eprom � mettre dans son adresse i2c
  
  i2cdata[0]=adresse >> 8; // adresse haute
  i2cdata[1]=adresse & 0xff; // adresse basse  
  // copier les donn�es du bloc lu de xmodem dans le buffer i2c
  for (i=1;i<=128;i++) i2cdata[i+1]=bufferRx[i];    
   
  if (I2C1_Host.Write(Eprom24lc1026 | mask,i2cdata,130))  
  {  
    waitCounter = 100; // This value depends on the system clock, I2C clock and data length                                                                                    
    while (I2C1_Host.IsBusy())
    {
      I2C1_Host.Tasks();
      //__delay_ms(12);        // attente �criture eprom
      __delay_ms(5);
      waitCounter--;              
    }
    /*I2C_ERROR_NONE,         *< No error 
    I2C_ERROR_ADDR_NACK,        *< Client returned address NACK 
    I2C_ERROR_DATA_NACK,        *< Client returned data NACK 
    I2C_ERROR_BUS_COLLISION*/
    erreurI2C=I2C1_Host.ErrorGet();
   
    if (erreurI2C!=I2C_ERROR_NONE) {printf("Erreur �criture i2c\r\n");erreur=8;}
  }	
}

// envoie 'C' pour x_modem et attend 30s un caract�re de l'uart
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
  led=1;   // �teint la led
  timeout=(Compte==0); 
  return EUSART1_Read();
  //return UART1.Read();
}
  
// attend un caract�re UART pour le protocole xmodem
// si timeout, renvoye NACK
uint8_t attend_rx()
{
  int nbtimeout=0;
  compt=15000;   // � 9600 bauds le compteur est � 8800
  
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

// �crit un octet � l'�prom interne
// write a byte to internal eprom
void ecrit_eprom_int(uint16_t adresse,uint8_t valeur)
{
  _Bool ancgie=INTCONbits.GIE;
  EEADRH=adresse >> 8;  // adresse haute
  EEADR=adresse & 0xff; // adresse basse
  EEDATA=valeur;        // valeur � �crire
  
  EECON1bits.EEPGD=0 ;  // pointe data m�moire
  EECON1bits.CFGS=0;    // acc�s eprom
  EECON1bits.WREN=1;    // �criture
  INTCONbits.GIE=0;     // pas d'irq
  
  EECON2=0x55;
  EECON2=0xAA;
  
  EECON1bits.WR=1;     // commence � �crire
  
  while (EECON1bits.WR);
 
  EECON1bits.WREN=0;   // fin de l'�criture
  INTCONbits.GIE=ancgie;
}

// �crit 128 octets dans l'eprom interne � l'adresse 
// write 128 butes to the internal eprom
void ecrit_bloc_eprom_int(uint16_t adresse)
{
  for (i=1;i<=128;i++) ecrit_eprom_int(adresse+i-1,bufferRx[i]); 
}

// erreur survenue dans le protocole xmodem
// error occured in xmodem protocol
void erreur_xmodem(uint8_t num)
{
  erreur=num;
  INTCONbits.GIE=1;
  UART_WriteByte(18); // demande cancel mais ne marche pas
}

// lecture d'un flux UART au format Xmodem crc pour niceflors et l'�crit en eprom int ou ext
// read an UART stream with xmodem crc format for niceflors and writes it into int or ext eprom
// mode=1 fichier principal de codes = main code file
// mode=2 fichier ki = ki codes
void recoit_xmodem(int mode)
{
   uint8_t b,ancienpak,delta;
   uint16_t padr;
   _Bool demande=HIGH;
   
   led=1;  // �teint la led
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
     // on re�oit SOH ou autre
     // read SOH or anything else
     if ((b!=1) & (b!=4) & (b!=0x17)) {erreur_xmodem(2);return;}
     
     if (b==1) // si SOH
     {
       pak=attend_rx();  // num�ro de paquet   
           
       if (timeout) {erreur_xmodem(4);return;}
       // voir s'il y a un intervalle de 1 entre 2 paquets
       if (ancienpak==255) ancienpak=-1;
       
       #if debugxmodem
         delta=pak-ancienpak;
         if (delta!=1)  // si diff�rence de <>1, corriger le num�ro de trame qui va servir � calculer l'adresse � stocker dans l'eprom
         {
           adresses[padr]=trame;
           if (padr<700) numpak[padr]=delta; 
           if (padr<1023) padr++;
           //if (delta==0) trame--;  // d�cr�menter num�ro de trame � voir
         }
       #endif
       
       pakcom=attend_rx();    // num�ro de paquet compl�ment�
       if (timeout) {erreur_xmodem(5);return;}
       if (pak!=255-pakcom) {UART_WriteByte(0x15);goto refaire;}  // redemander par NAK
      
       // lecture des 128 octets de donn�es du paquet et stockage dans bufferRx
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
           
       // crc ok, �crire le bloc dans l'eprom suivant le mode
       // crc ok, write bloc into ext/int eprom according to the mode
       if (mode==1) ecrit_bloc_eprom_ext(trame*128L);  // �crire dans eprom ext trame doit �tre uint32_t
       if (mode==2) ecrit_bloc_eprom_int(trame*128);  // �crire dans eprom int
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

/*
// lit une eprom 24CW16 ou 24LC16
void lit_eprom_ext_24wc16(uint16_t adresse)
{
  uint16_t mask;
  mask=(adresse & 0xFF00) >> 7;
  i2cdata[0]=(uint8_t)(adresse & 0xFF); // adresse basse
  I2C1_Host.WriteRead(Eprom24wc16 | mask,i2cdata,1,i2cread,1);
  int err;  
  waitCounter = 1000; // This value depends on the system clock, I2C clock and data length.                                                                                          
  while ( I2C1_Host.IsBusy())
  {
    I2C1_Host.Tasks();
    waitCounter--; 
    __delay_ms(1);
  }
  err=I2C1_Host.ErrorGet();
  if (err=!I2C_ERROR_NONE) printf("erreur I2C WriteRead=%d\r\n",err);
 
}*/
    

// lit un octet l'eprom (lecture al�atoire - random read) � l'adresse adresse, met la valeur dans i2cread[0]
// read 1 byte from ext eprom, data is stored in i2cread[0]
void lit_eprom_ext(uint32_t adresse)
{
  uint32_t mask;
  
  if (adresse>0xffff) mask=1; else mask=0;  // adresse basse ou haute de l'eprom � mettre dans son adresse i2c
  
  i2cdata[0]=(uint8_t)(adresse >> 8); // adresse haute
  i2cdata[1]=(uint8_t)(adresse & 0xff); // adresse basse  
    
  I2C1_Host.WriteRead(Eprom24lc1026 | mask,i2cdata,2,i2cread,1);
  int err;  
  waitCounter = 1000; // This value depends on the system clock, I2C clock and data length.                                                                                          
  while ( I2C1_Host.IsBusy())
  {
    I2C1_Host.Tasks();
    waitCounter--; 
    __delay_ms(1);
  }
  err=I2C1_Host.ErrorGet();
  if (err!=I2C_ERROR_NONE) printf("erreur I2C WriteRead=%d\r\n",err);
}

// lit "nombre" octet l'eprom ext (lecture s�quentielle - sequential read) � l'adresse adresse, met la valeur dans i2cread[]
// read "nombre" byte(s) from ext eprom
void lit_bloc_eprom_ext(uint32_t adresse,uint8_t nombre)
{
  uint32_t mask;
   
  if (adresse>0xffff) mask=1; else mask=0;  // adresse basse ou haute de l'eprom � mettre dans son adresse i2c
  
  i2cdata[0]=(uint8_t)(adresse >> 8); // adresse haute
  i2cdata[1]=(uint8_t)(adresse & 0xff); // adresse basse  
    
  I2C1_Host.WriteRead(Eprom24lc1026 | mask,i2cdata,2,i2cread,nombre);
  int err;  
  waitCounter=1000; // This value depends on the system clock, I2C clock and data length.                                                                                          
  while (I2C1_Host.IsBusy())
  {
    I2C1_Host.Tasks();
    waitCounter--; 
    // __delay_ms(1);   fonctionne sans 
  }
  err=I2C1_Host.ErrorGet();
  if (err!=I2C_ERROR_NONE) printf("erreur I2C WriteRead=%d\r\n",err);
}

// affiche l'enregistrement re�u sous forme de tableau
void affiche_enregistrement()
{
  uint8_t x,y;
  uint16_t ancduree;
  INTCONbits.GIE=0;  // arrete mesure radio / disable radio acquisition
  aff_enr=LOW;   
  
  printf("NbreBits=%d",nb);
  
  if (protocole==0) printf(" Enregistrement brut");
  if (protocole==prot_came) printf(" Protocole Came");
  if (protocole==prot_somfy) printf(" Protocole Somfy");
  if (protocole==prot_cardin) printf(" Protocole Cardin S449");
  if (protocole==prot_fobloqf) printf(" Protocole Fobloqf");
  if (protocole==prot_niceflors) printf(" Protocole NiceFlorS");
 
  printf("\r\n");
  for (y=1;y<=22;y++)
  {
    for (x=1;x<=9;x++)
    {
      i=((y-1) % 22)+1  + ((x-1) * 22) - 1;   // -1 pour commencer en indice 0
      if (i<=nb)
      {
        printf("%3d",i);
        ancduree=mesure_bits[i-1];
        duree=mesure_bits[i];
       // printf(" %5lu",duree);
         printf("%6lu",duree);
        
        if (protocole==0) printf("  ");  // mesure brute - raw data record
         
        if (protocole==prot_niceflors)
        {    
          if ((duree>(silenceN-1000)) && (duree<(silenceN+1000)))     printf(" S");
          else
          if ((duree>(bit0N-toleranceN)) && (duree<(bit0N+toleranceN))) printf(" 0");
          else
          if ((duree>(bit1N-toleranceN)) && (duree<(bit1N+toleranceN))) printf(" 1");  
          else
          if ((duree>(debutbitN-toleranceN)) && (duree<(debutbitN+toleranceN))) printf(" D");
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
          if ((duree>(debutbitD-toleranceD)) && (duree<(debutbitD+toleranceD))) printf(" D");
          else
          if ((i % 2)==0)
          {
            if ( ((ancduree>(bit1D-toleranceD)) && (ancduree<(bit1D+toleranceD))) &&
                 ((duree>(bit0D-toleranceD)) && (duree<(bit0D+toleranceD))) ) printf(" 1");
            if ( ((ancduree>(bit0D-toleranceD)) && (ancduree<(bit0D+toleranceD))) &&
                 ((duree>(bit1D-toleranceD)) && (duree<(bit1D+toleranceD))) ) printf(" 0");
          } 
          else
          printf("  ");
          if (mesure_error[i]!=0)  printf( " Err %d",mesure_error[i]);
        }
        if (protocole==prot_fobloqf)
        {    
          if ((duree>(silenceF-550)) && (duree<(silenceF+550)))     printf(" S");
          else
          if ((duree>(debutbitF-toleranceF)) && (duree<(debutbitF+toleranceF))) printf(" D");
          else
          if (duree<coupureF) printf(" 0");
          else
          printf(" 1");  
          if (mesure_error[i]!=0)  printf( " Err %d",mesure_error[i]);
        }
        printf("| ");
      }
      else printf("        ");
    }
    printf("\r\n");
  }
  raz_bits();
  INTCONbits.GIE=1; // revalide l'acquisition radio / reenable radio acquisition
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
  if(strcmp(command,"0")==0)
  {
    debug=0;debugFobloqf=LOW;debugCardin=LOW;
    debugBrut=LOW;
    printf("Debug 0\r\n");    
  }
  else
  if(strcmp(command,"1")==0)
  {
    debug++;
    if (debug>4) debug=0;
    printf("Debug %d ",debug);
    #if francais
    if (debug==0) {printf("Pas de debug\r\n");debugCardin=LOW;}
    if (debug==1) printf("Affichages supplementaires et les erreurs\r\n");
    if (debug==2) printf("Affiche silence\r\n");
    if (debug==3) printf("Affiche les durees re�ues en direct\r\n");
    if (debug==4) {printf("Mode debug fobloqf\r\n");debugFobloqf=HIGH;debug=0;}
    #endif   
    #if english
    if (debug==0) printf("No debug\r\n");
    if (debug==1) printf("Additional display and errors\r\n");
    if (debug==2) printf("Display silent\r\n");
    if (debug==3) printf("Display length durations live\r\n");
    #endif   
  }
  else
  if(strcmp(command,"2")==0)
  {
    pvitesse++;
    if (pvitesse==2) pvitesse=0;
    printf("Vitesse UART=%lu bauds ",vitesse[pvitesse]);
    if (pvitesse==0) {printf("pour transfert xmodem\r\n");SPBRGH1=0x06;SPBRG1=0x82;}  // 9600 bauds pour transfert xmodem
    if (pvitesse==1) {printf("pour debug\r\n");SPBRGH1=0x00;SPBRG1=0x44;}             // 230400 bauds si on fait du debug
  }
  else
  if (strcmp(command,"3")==0)
  {
    #if francais
    if (pvitesse!=0) printf("Utilisez la vitesse de 9600 bauds pour utiliser Xmodem\r\n");
    printf("Dans TeraTerm, s�lectionner le fichier 128Ko de codes en protocole Xmodem CRC dans les 20s\r\n");  
    #endif  
    #if english
    if (pvitesse!=0) printf("Use 9600 bauds to use Xmodem\r\n");
    printf("Using TeraTerm, select the 128Kb file to transmit (Xmodem CRC protocol) within 20s\r\n");  
    #endif  
    recoit_xmodem(1);
  }		
  else
  if (strcmp(command,"4")==0)
  {
    #if francais
    if (pvitesse!=0) printf("Utilisez la vitesse de 9600 bauds pour utiliser Xmodem\r\n");
    printf("Dans TeraTerm, selectionner le fichier 256o de codes en protocole Xmdem CRC dans les 20s\r\n");  
    #endif  
    #if english
    if (pvitesse!=0) printf("Use 9600 bauds to use Xmodem\r\n");
    printf("Using TeraTerm, select the 256b file to transmit (Xmodem CRC protocol) within 20s\r\n");  
    #endif  
    recoit_xmodem(2);
  } 
  else 
  // if (command=="5")
  if (strcmp(command,"5")==0)
  {
    affiche_enregistrement();
  }
  else    
  if(strcmp(command,"6")==0)
  {
    INTCONbits.GIE=0;
    #if francais
    printf("Derniere erreur : ");
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
      case 3: {printf("Erreur complementation numero paquet");break;}
      case 4: {printf("Timeout sur numero de paquet");break;}
      case 5: {printf("Timeout sur numero de paquet complemente");break;}
      case 6: {printf("Timeout donnees");break;}
      case 7: {printf("Erreur crc");break;}
      case 8: {printf("Erreur ecriture EPROM ext");break;}
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
    printf(" Derniere erreur I2C=%d",erreurI2C);
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
    printf("n� paquet=%d\r\n",pak);
    printf("n� paquet compl=%d\r\n",pakcom);
    printf("Valeur compt=%d\r\n",compt);
         
    for (i=1;i<=130;i++)
    {
      printf("%d:",i);
      printf("%d,",bufferRx[i]);
    }
    printf("\r\n");
    printf("Crc calcule=%x\r\n",crc);
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
    // v�rifie checksum eprom ext
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
    while (i<0x1ffff) 
    {   
      lit_bloc_eprom_ext(i,128);
      i=i+128;
      for (j=0;j<=127;j++)
      {
        chk=chk^i2cread[j];
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
      printf("Ext eprom contains wrong values\r\n");
      #endif  
    }
    printf("Checksum eprom ext = %x ",chk);
    if (chk==0) printf("Ok\r\n"); else printf("Non ok\r\n");
    INTCONbits.GIE=1;
  }   
  else
  if (strcmp(command,"B") == 0)
  {
    // lit l'eprom ext compl�tement par bloc de 128o - long
    // reads the full ext eprom, 128b blocs of ext eprom - takes a long time     
    uint32_t k,j=0; 
    INTCONbits.GIE=0;   // disable IRQ avoid display error from IRQ
    while (j<0x1ffff)
    {       
      lit_bloc_eprom_ext(j,128);
     
      for (i=0;i<=127;i++)
      {   
        k=i+j;  
        if ((i % 16)==0) {Affiche4(k);printf(" ");} 
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
       printf("Telecommande %2d ",i+1);
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
  /*
  else
  if (strcmp(command,"D") == 0)
  {
    for (i=0;i<1024;i++)
    {
      lit_eprom_ext_24wc16(i);
      printf("%3x=",i);
      printf("%2x  ",i2cread[0]);
      if (((i+1) % 16)==0) printf("\r\n");
    }
  }*/
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


// I2C �crit 1 octet eprom ext adresse et valeur
// adresse : adresse de 0 � 0x1ffff
// I2C write 1 byte to ext eprom
void ecrit_eprom_ext(uint32_t adresse,uint8_t valeur) 
{
  int err ; 
  uint32_t mask;
   
  if (adresse>0xffff) mask=1; else mask=0;  // adresse basse ou haute de l'eprom � mettre dans son adresse i2c
  
  i2cdata[0]=adresse >> 8; // adresse haute
  i2cdata[1]=adresse & 0xff; // adresse basse  
  i2cdata[2]=valeur; // octet � �crire  
  
  if (I2C1_Host.Write(Eprom24lc1026,i2cdata,3))  
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
   
    if (err!=I2C_ERROR_NONE) printf("erreur I2C Write=%d\r\n",err);
  }
}

void print_binary(uint64_t number,int n)
{
  int i;
  for (i=n-1;i>=0;i--)
  {
      if (((number >> i) & 1)==1) printf("1"); else printf("0");
     // if (((i-1) % 3)==0) printf(" ");
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

_Bool code_b0b6_nice_valide()
{
  return !((b1==0) | (b1==255) | (b0==0) | (b0==0xf));
}

// d�code le code 64 bits de la t�l�commande en 7 octets dans b0-b6
// decode "code" 64 bits from remote to 7 bytes b0-b6
// (remise des quartets dans l'ordre)
_Bool decode_nice_b0b6()     // type 64 bits
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

  _Bool ok=code_b0b6_nice_valide();
  
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
// ca prend 7s si le code � trouver est en 0x1FFFE (derni�re adresse)
// fetch with raw method code "c" in external eprom - send back address
// takes 7s to find if the code to be found is at 0x1FFFE (last address)
uint16_t trouve_code_nice(uint16_t c)
{
  _Bool trouve=LOW;  
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
  return((i-128+j-2)/2);  // divis� par 2 car c'est l'adresse du mot de 16 bits qu'il faut renvoyer
}

// c = code dans le fichier, envoy� par la t�l�commande octets b2 b3
// trouve l'adresse de code "c" en eprom ext suivant algorithme du code pr�c�dent.
// trouver par le dernier index transmis par la t�l�commande, et pointer sur le +1
// find "c" code in ext eprom, using algorithm previous code
uint16_t trouve_code_algo_nice(uint16_t c) // trouver l'adresse de encode dans l'eprom ext
{
  _Bool trouve;
  uint8_t bal_telecom=1,increment;   // index t�l�commande de 1 � 10
  uint16_t i,lu_ext;
  //printf("trouver %x\r\n",c);
  do
  {
    // boucle par t�l�commande : on lit 128 octets
    // by remote loop : we read 128 bytes
    i=indexCodeRecu[bal_telecom];  // index (en mots) du code recu pr�c�demment - previous index remote code (in words)
    lit_bloc_eprom_ext(i*2,128);   // lire les 128 octets apr�s l'index, en mots donc *2 - read next 128 bytes; in words so *2
    increment=0;  // explorer le bloc de 128 octets        
    do
    {
      //printf("trouver � l'index %d\r\n",i);
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
  // si pas trouv�, le trouver par le m�thode directe lin�raire de lecture tous les octets
  // if not find, fetch it with straight linear all bytes read 
  if (!trouve) i=trouve_code_nice(c);else i=i+(increment/2);
  //if (trouve) printf(" Trouv� code dans t�l�commande %d ",bal_telecom-1);
  return (i); 
}

// inverse poids faibles et fort d'un mot
// AABB -> BBAA
uint16_t inverse16(int16_t mot)
{
  uint16_t r;
  r=mot >> 8;
  r=r | ((mot & 0xff) << 8) ;
  return r;
}

/*
// AABBCC -> CCBBAA
uint32_t inverse24(int32_t mot)
{
  uint32_t r;
  r=mot >> 16;  // poids fort vers faible
  r=r | (mot & 0xff00);  // milieu inchang�
  r=r | ((mot & 0xffL) << 16); // faible vers fort
  return r;
}*/

// miroire les bits d'un 32 bits : abcd.....z devient : z....dcba
uint32_t miroir32(uint32_t n)
{
  n=((n>>1) & 0x55555555) | ((n<<1) & 0xaaaaaaaa);
  n=((n>>2) & 0x33333333) | ((n<<2) & 0xcccccccc);
  n=((n>>4) & 0x0f0f0f0f) | ((n<<4) & 0xf0f0f0f0);
  n=((n>>8) & 0x00ff00ff) | ((n<<8) & 0xff00ff00);
  n=((n>>16) & 0x0000ffff) | ((n<<16) & 0xffff0000); 
  return n;
}

uint64_t miroir64(uint64_t n)
{
  n=((n>>1) & 0x5555555555555555) | ((n<<1) & 0xaaaaaaaaaaaaaaaa);
  n=((n>>2) & 0x3333333333333333) | ((n<<2) & 0xcccccccccccccccc);
  n=((n>>4) & 0x0f0f0f0f0f0f0f0f) | ((n<<4) & 0xf0f0f0f0f0f0f0f0);
  n=((n>>8) & 0x00ff00ff00ff00ff) | ((n<<8) & 0xff00ff00ff00ff00);
  n=((n>>16) & 0x0000ffff0000ffff) | ((n<<16) & 0xffff0000ffff0000); 
  n=((n>>32) & 0x00000000ffffffff) | ((n<<32) & 0xffffffff00000000); 
  return n;
}

_Bool decode_1527()
{
  code=code>>40;  // r�aligner � droite
  Affiche4(code);
  serial=code;
  return 0;
}

_Bool decode_fobloqf()
{
  uint32_t temp;
  // code � 64 bits, soit 4 octets 
    //if (debug==1) 
  Affiche(code);
  printf(" Miroir=");
  Affiche(miroir64(code));
  
  printf("\r\n"); 
  
  return 0;
  
  // test d�code keyloq
  temp=KeeLoq_Decrypt(code,KeeLoq_NLF);
  printf(" Decode1=");Affiche(temp);
  
  temp=code;
  temp=KeeLoq_Decrypt2(key, temp, 528);
  printf(" Decode2=");
  Affiche(temp);
  printf("\r\n");   
  return 0;   
}


_Bool decode_cardin()  
{
  // pour le d�codage de cardin S449, on ne se sert que de la partie haute 32 bits du code de 64 bits:
  // Ex : 20842A9B83B0A4D0 : s�rie=00842A9B
  // Donc on ne tient pas compte de la partie rolling code (partie basse 32 bits du code de 64 bits)
  // For cardin S449 decoding, we just handle the high 32 bits of the 64 bits code :
  // Ex : 20842A9B83B0A4D0 : serial=00842A9B
  // so we don't care about the rolling code (low 32 bits part of the 64 bits code)  
  uint8_t temp; 
  // code � 64 bits, soit 8 octets , transmis LSB en premier
  // https://cargeek.live/docs/Sec_Analysis_Garage_Door_XXxiOwB.pdf
  if (debug==1) {Affiche(code);printf(" ");}
   //if (debug==1) {Affiche4(tempL);printf(" ");}    
  //Affiche4(tempL);printf(" ");Affiche4(tempH);printf("\r\n");
  serial=(code>>32) & 0xFFFFFFF;
  temp=code>>60;
  if (temp==1) bouton=4; 
  if (temp==2) bouton=1; 
  if (temp==4) bouton=2;
  if (temp==8) bouton=3;
  if (temp==0xd) bouton=9;  // bouton programmation
  modeProg=bouton==9;
  return 0;
  
  // test keylocq
  uint32_t tempH;
  tempH=KeeLoq_Decrypt(code,KeeLoq_NLF);
  printf(" Decode1=");Affiche(tempH);
  
  tempH=code;
  KeeLoq_Decrypt2(key, tempH, 528);
  printf(" Decode2=");
  Affiche(tempH);
  printf("\r\n");
  
  return 0;
}

// d�code somfy rts. renvoie HIGH si le chk est ok
// returns HIGH if chk is ok.
_Bool decode_somfy()
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

  // d�codage xor - xor d�coding
  b6=b6^b5;
  b5=b5^b4;
  b4=b4^b3;
  b3=b3^b2;
  b2=b2^b1;
  b1=b1^b0;

  if (debug==1)
  {
    printf("Decodage:\r\n");
    printf("b0=%x",b0);
    printf(" b1=%x",b1);
    printf(" b2=%x",b2);
    printf(" b3=%x",b3);  
    printf(" b4=%x",b4);  
    printf(" b5=%x",b5);
    printf(" b6=%x\r\n",b6);
  }

  // checksum, doit �tre =0 / must be =0
  chk=(b0)^(b0>>4);
  chk=chk^b1^(b1>>4);
  chk=chk^b2^(b2>>4);
  chk=chk^b3^(b3>>4);
  chk=chk^b4^(b4>>4);
  chk=chk^b5^(b5>>4);
  chk=chk^b6^(b6>>4);
  chk=chk & 0x0f;
  
  bouton=(b1>>4) & 0x0f;  // non significatif
  
  modeProg=bouton==8;
  
  indexcode=(b2<<8)+b3;   // rolling code qui doit �tre > que le code pr�c�dent
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
    printf("Bouton=0x%x\r\n",bouton);  
    printf("Chk=%x\r\n",b1 & 0x0f);   
    printf("Code=0x%x\r\n",indexcode);
    printf("Serial=0x");Affiche4(serial);printf("\r\n");
  } 
  return (chk==0);
}

// d�code les octets B0 � B6 nice-flors, extrait le num�ro de s�rie, bouton, code et r�p�tition
// decode B0-B6 nice-flors bytes, extract serial, button, code and repeat
void decode_b06_nice()
{
  uint16_t encode,encodeEprom;
  uint8_t ki,snbuf3,snbuf2,snbuf1,snbuf0;
  encode=(b2<<8) + b3;  // b2 et b3 contiennent le code dans le tableau de 65535 valeurs (eprom ext)
  indexcode=0;          // b2 and b3 are the code to find in the ext eprom  
  indexcode=trouve_code_algo_nice(encode);  // index de encode dans l'eprom ext, qui doit �tre > que le code pr�c�dent
   
  // https://github.com/Jev1337/NiceFlor-Encoder/blob/main/C%20Version/ArduinoC/ArduinoC.ino
  //printf("Le code %x a �t� trouv� en index ",encode);
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
  repete=(b1>>4) ^ bouton ^ 0x0f;
  printf("NiceFlorS NumSer=");Affiche4(serial);   // num�ro de s�rie de la t�l�commande
  printf(",Bouton=%d",bouton);
  if (debug>=1)
  { 
    printf(",Index=%d",indexcode);    // code envoy� par la t�l�commande pour d�coder son message  
    printf(",repete=%d ",repete);     // r�p�tition
  }
}

// encode les octets b0-b6 Nice flors en code �metteur
// pour v�rification inverse
uint64_t encode_quartets()    // type 64 bits
{
  uint64_t encoded;
  uint8_t b;  
  code=0;
  code=((b6<<4) & 0xF0) ;

  code|=((((b5 & 0x0F) << 4) | ((b6 & 0xF0) >> 4)) << 8) & 0xff00;
  
  b=((b4 & 0x0F) << 4) + ((b5 & 0xF0) >> 4);
  code=code + (b *0x10000) ;    // << 16

  b=(((b3 & 0x0F) << 4) & 0xF0) | (((b4 & 0xF0) >> 4) & 0x0F);
  code=code + (b*0x1000000);    // << 24
 
  // � partir d'ici, on ne peut pas d�caler de plus de 32 bits, il faut utiliser la multiplication
  // De m�me le OU bitwise (encoder|=) ne marche pas en 64 bits, il faut utiliser + (commentaire pour arduino nano)
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

// renvoie le num�ro de la t�l�commande "serialin" en eprom interne
// si pas reconnue en epromint, renvoie 0
// get the remote number (1-10) "serialin" from int eprom
// if not found, sends back 0
uint8_t num_telecommande_int(uint32_t serialin)
{
  uint8_t n;
  uint16_t index=0;
  uint32_t serialEprom=0;
  // si protocole niceflors, rajouter le bouton dans le poids fort du num�ro de s�rie re�u
  // dans le quartet haut du poids fort (BXXX XXXX XXXX XXXX)
  if (protocole==prot_niceflors) serialin=serialin | ((uint32_t)bouton<<28); 
  
  // si protocole somfy, rajouter le bouton dans le poids fort du num�ro de s�rie re�u
  if (protocole==prot_somfy) serialin=serialin | ((uint32_t)bouton<<28);
  
  // si protocole cardin, rajouter le bouton dans le poids fort du num�ro de s�rie re�u
  if (protocole==prot_cardin) serialin=serialin | ((uint32_t)bouton<<28); 
  
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

// stocke la t�l�commande dont les param�tres sont en variable globale
void stocke_telecommande()
{
  uint8_t n;
  uint32_t ep;
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
      
  // stocker le num�ro de s�rie 32 bits de la t�l�commande
  // store serial remote, 32 bits format
  ecrit_eprom_int(0x100+(i*4),serial & 0xff); // poids faible
  ecrit_eprom_int(0x101+(i*4),serial>>8);
  ecrit_eprom_int(0x102+(i*4),serial>>16); 
  
  // maintenant le poids fort , sur certains protocoles ajouter le num�ro de bouton � gauche de l'octet
  // now the high byte, with some protocols, add the button number on left side of byte
  // si niceflor, stocker le bouton dans le quartet haut poids fort (libre), car le num�ro de s�rie de la t�l�commande est ind�pendant du bouton
  // for nicelor, store the button in the high nibble byte (unused), as serial remote is apart from button. 
  if (protocole==prot_niceflors) ecrit_eprom_int(0x103+(i*4),(serial>>24) | (bouton <<4));   // poids fort
  else
   
  // si cardin, stocker le bouton dans le quartet de poids fort
  // bouton prog cardin=9
  if (protocole==prot_cardin) ecrit_eprom_int(0x103+(i*4),(serial>>24) | (bouton <<4));   // poids fort
  else 
          
  // si somfy stocker le bouton dans le quartet de poids fort
  // bouton prog somfy=8
  if (protocole==prot_somfy) ecrit_eprom_int(0x103+(i*4),(serial>>24) | (bouton <<4));   // poids fort
    else
      ecrit_eprom_int(0x103+(i*4),serial>>24);   // poids fort
     
  printf("Telecommande ");Affiche4(serial);printf(" ajoutee\r\n");
  for (i=0;i<10;i++)
  {
    __delay_ms(50);
    led=0;
    __delay_ms(50);
    led=1;
  }    
  n=num_telecommande_int(serial); // num�ro de t�l�commande
  if (n>0) indexCodeRecu[n]=indexcode;  // index du code re�u de la t�l�commande n  
  __delay_ms(1000);
}


// re�u un code valide de t�l�commande. V�rifier s'il est reconnu,
// si il faut stocker le code en tant que nouvelle t�l�commande
// a remote code has been received, check if the remote is known
// and if it has to be stored as a new remote
void traitementCode()
{
  uint8_t n;
  n=num_telecommande_int(serial);     // renvoie le num�ro de t�l�commande "serial" si stock� en eprom int (connu)
  printf(" T%d",n);  // num�ro de t�l�commande
 
  if (n!=0)
  {
    consecutif=HIGH;
    if ((protocole==prot_niceflors) || (protocole==prot_somfy))
    {
      // pour ces protocoles,
      // contr�ler que l'index du code de la t�l�commande est plus grand que l'ancien
      // check if the new index code is greater than the previous one
      // indexcode > previous indexcode , so: indexcoderecu[n]<indexcode
      consecutif=(indexCodeRecu[n]<indexcode);
      indexCodeRecu[n]=indexcode;  // stocker index du code re�u de la t�l�commande n 
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
      printf(" Code non consecutif");
      #endif   
      #if english
      printf(" Non consecutive code");
      #endif 
    }
  }
  printf("\r\n");
    
  // mode prog par t�l�commande. Peut constituer une faille de s�curit�
  if (modeProg) 
  { 
    modeProg=LOW;
    #if francais
    printf("Appuyer sur le bouton de la telecommande a memoriser\r\n");
    #endif
    #if english
    printf("Press remote button to record\r\n");
    #endif
    tpsvalidetelecom=50000;
    return;
  }
  
  // on demande d'enregistrer une nouvelle t�l�commande, appui court sur bouton ou mode prog somfy ou cardin)
  // store a new remote as we press the button for a short time, or prog mode for somfy or cardin
  if (tpsvalidetelecom!=0)
  {
    tpsvalidetelecom=0;
    if (n==0) 
    {
      stocke_telecommande();  
    }
    else 
    { 
      led=1;  // �teint la led  
      #if francais
        printf("Telecommande deja stockee\r\n");
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
  rel1=1;   // relais non coll�
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

  ANCON0=0;              // on n'utilise pas l'AD - don't need AD
  ANCON1=0;              // sinon RB4 ne marche pas - otherwise RB4 won't work
    
  RCONbits.IPEN=1;       // priorit� IRQ - IRQ priority
    
  INTCON2bits.RBPU=0;    // valide les r�sistances de pullup sur tout le port B en entr�e pour BP1 - enable pull up resistor on port B
  INTCON2bits.RBIP=1;    // Configure comme priorit� haute - high priority
  
  INTCONbits.RBIF=0;     // raz flags - reset flags   
  INTCONbits.RBIE=1;     // valide l'irq IOC  - enable IOC IRQ
  INTCONbits.GIEH=1;     // priorit� haute - high priprity
  INTCONbits.TMR0IF=0;   // raz indicateur tmr0 d�borde - reset tmr0 overflow flag
  INTCONbits.TMR0IE=1;   // valide irq timer 0 - enable timer 0 irq
         
  IOCBbits.IOCB4=1;      // IOC sur B4 
    
  pvitesse=1;
  if (pvitesse==0) {SPBRGH1=0x06;SPBRG1=0x82;}  // 9600 bauds pour transfert xmodem
  if (pvitesse==1) {SPBRGH1=0x00;SPBRG1=0x44;}  // 240200
    
  // r�glage de la pr�division par (2)=8 du timer 0 ce qui permet de mesurer le signal NiceFlorS de 18888�s
  // predevider by (2)=8
  T0CON = (2 << _T0CON_T0PS_POSN)    // T0PS  0=/2 1=/4  2=/8 3=/16 4=/32 5=/64 6=/128 7=/256 1=/4
        | (0 << _T0CON_PSA_POSN)     // PSA=0 utilise le pr�diviseur
        | (1 << _T0CON_T0SE_POSN)    // T0SE Increment_hi_lo
        | (0 << _T0CON_T0CS_POSN)    // T0CS FOSC/4
        | (0 << _T0CON_T08BIT_POSN)  // T08BIT 16-bit
        | (1 << _T0CON_TMR0ON_POSN); // TMR0ON enabled
   
  #ifdef francais
  UART1_WriteString("Recepteur telecommande Nice FLOR-s / CAME / Somfy RTS / EV1527\r\n");
  UART1_WriteString("F1IWQ 2025\r\n");
  #endif  
  #ifdef english
  UART1_WriteString("Remote receiver for Nice FLOR-s / CAME / Somfy RTS / EV1527\r\n");
  UART1_WriteString("F1IWQ 2025\r\n");
  #endif  
   
  led=0;
  menu();
  led=1;
  
  // clignotement led au d�marrage - blinking led at start up
  for (i=1;i<10;i++)
  {
    __delay_ms(100);
    led=0;
    __delay_ms(100);
    led=1;
  }
   
  debug=0 ; 
  
  TMR0_Start();          // d�marre le timer 0 - starts timer 0
  INTCONbits.GIE=1;      // valide les irq - enable IRS
   
  i=lit_eprom_int(0);
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
          
  enable=1;  // valide le r�cepteur HM R 433

  while(1)
  {
    
    /* essai rts
    rts=1;
    __delay_ms(200);
    rts=0;
    __delay_ms(200);
        
    // essai cts
    //if (cts==1) led=1; else led=0;
    */
      
    if (!RB2) // bouton appuy�
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
        printf("Effacement toutes telecommandes\r\n");
        #endif
        #if english
        printf("Discarding all remotes\r\n");
        #endif
        for (crc=0x100;crc<=0x100+(4*maxtel);crc++)  // 10 t�l�commandes = 4x10 = 0x28
        {
          ecrit_eprom_int(crc,0xff);
        }    
        __delay_ms(1000);
        led=1;
        while (!RB2);             // attendre relache bouton - wait button release  
      }
    }  
      
    // Appui court du bouton
    // button short press
    if ((!AncBp) & (RB2) & (tpsbouton>200) & (tpsbouton<1000))
    {
      tpsvalidetelecom=50000;
      #if francais
      printf("Attente nouvelle telecommande\r\n");
      #endif
      #if english
      printf("Waiting for new remote\r\n");
      #endif  
    }  
        
    if (tpsvalidetelecom!=0)
    {
      tpsvalidetelecom--;  
      if ((tpsvalidetelecom % 1000)==0) led=!led;
      if (tpsvalidetelecom==0) 
      {
        modeProg=LOW;
        printf("Abandon memorisation\r\n");
        led=1;
      }
    }
       
       
    AncBp=RB2;   
    if (RB2) tpsbouton=0;  
        
    if (!recu) UART_ProcessCommand();  // si pas re�u t�l�commande, traiter l'uart - if not remote received, process uart
     
    if (aff_enr) affiche_enregistrement();
     
    // t�l�gramme radio re�u de la t�l�commande depuis routine IOC, le d�coder
    // radio remote received from IOC routine, start decoding
    if (recu)
    {
      recu=LOW;
      INTCONbits.GIE=0;      // interdit les IRQ pour �viter interf�rence avec la variable dur�e pendant l'affichage
      if (debug==2)
      {
        affiche_enregistrement();      // affiche le tableau des bits et leur dur�e 
      }
      if (protocole==prot_niceflors)
      {    
        if (debug>=1) {Affiche(code);printf(" ");} 
        if (decode_nice_b0b6())  // d�code le code en b0 b6
        // si B0 B6 sont valides - if b0 b6 are valid
        {        
          decode_b06_nice(); // d�code B0 B6 et extrait le num�ro de s�rie, bouton etc
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
          printf("Somfy RTS Serial=");Affiche4(serial);
          printf(" Bouton=%x",bouton);
          traitementCode();  
        }
      }  
      if (protocole==prot_cardin)
      {
        decode_cardin();
        printf("Cardin    Serial=");Affiche4(serial);printf("=%lu",(uint32_t)serial);
        printf(" Bouton=");
        if (bouton<=4) printf("%x ",bouton);
          else printf("P ");
        
        traitementCode();
      }
      if (protocole==prot_fobloqf)
      { 
        printf("Fobloqf=");
        decode_fobloqf();
        //if (decode_fobloqf()==HIGH) printf("Fobloqf      code=");Affiche(code);
        //traitementCode();
      }
      if (protocole==prot_1527)
      { 
        printf("EV1527=");
        decode_1527();
        traitementCode();
      }
          
      NbreBits=0;
      //__delay_ms(1000);
      INTCONbits.GIE=1;      // valide les IRQ
    } 
  }    
}

// test __EEPROM_DATA(0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08);

