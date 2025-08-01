# 1 "main.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 285 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "main.c" 2
# 211 "main.c"
# 1 "./mcc_generated_files/system/system.h" 1
# 39 "./mcc_generated_files/system/system.h"
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/xc.h" 1 3
# 18 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);


# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/xc8debug.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdlib.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/musl_xc8.h" 1 3
# 5 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdlib.h" 2 3





# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/features.h" 1 3
# 11 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdlib.h" 2 3
# 21 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdlib.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 1 3
# 24 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef long int wchar_t;
# 128 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef unsigned size_t;
# 174 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef __int24 int24_t;
# 210 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef __uint24 uint24_t;
# 22 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdlib.h" 2 3

int atoi (const char *);
long atol (const char *);

long long atoll (const char *);

double atof (const char *);


float strtof (const char *restrict, char **restrict);
double strtod (const char *restrict, char **restrict);
long double strtold (const char *restrict, char **restrict);



long strtol (const char *restrict, char **restrict, int);
unsigned long strtoul (const char *restrict, char **restrict, int);

long long strtoll (const char *restrict, char **restrict, int);
unsigned long long strtoull (const char *restrict, char **restrict, int);


unsigned long __strtoxl(const char * s, char ** endptr, int base, char is_signed);

unsigned long long __strtoxll(const char * s, char ** endptr, int base, char is_signed);
# 55 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdlib.h" 3
int rand (void);
void srand (unsigned);

void *malloc (size_t);
void *calloc (size_t, size_t);
void *realloc (void *, size_t);
void free (void *);

          void abort (void);
int atexit (void (*) (void));
          void exit (int);
          void _Exit (int);

void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));







__attribute__((nonreentrant)) void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);

long long llabs (long long);


typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;

typedef struct { long long quot, rem; } lldiv_t;


div_t div (int, int);
ldiv_t ldiv (long, long);

lldiv_t lldiv (long long, long long);


typedef struct { unsigned int quot, rem; } udiv_t;
typedef struct { unsigned long quot, rem; } uldiv_t;
udiv_t udiv (unsigned int, unsigned int);
uldiv_t uldiv (unsigned long, unsigned long);
# 5 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/xc8debug.h" 2 3







#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 24 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/xc.h" 2 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/builtins.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdint.h" 1 3
# 26 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 1 3
# 133 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef unsigned __int24 uintptr_t;
# 148 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef __int24 intptr_t;
# 164 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef signed char int8_t;




typedef short int16_t;
# 179 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef long int32_t;





typedef long long int64_t;
# 194 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef long long intmax_t;





typedef unsigned char uint8_t;




typedef unsigned short uint16_t;
# 215 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef unsigned long uint32_t;





typedef unsigned long long uint64_t;
# 235 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef unsigned long long uintmax_t;
# 27 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdint.h" 2 3

typedef int8_t int_fast8_t;

typedef int64_t int_fast64_t;


typedef int8_t int_least8_t;
typedef int16_t int_least16_t;

typedef int24_t int_least24_t;
typedef int24_t int_fast24_t;

typedef int32_t int_least32_t;

typedef int64_t int_least64_t;


typedef uint8_t uint_fast8_t;

typedef uint64_t uint_fast64_t;


typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;

typedef uint24_t uint_least24_t;
typedef uint24_t uint_fast24_t;

typedef uint32_t uint_least32_t;

typedef uint64_t uint_least64_t;
# 148 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/stdint.h" 1 3
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
# 149 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdint.h" 2 3
# 5 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/builtins.h" 2 3


#pragma intrinsic(__nop)
extern void __nop(void);

#pragma intrinsic(__nopf000)
extern void __nopf000(void);
#pragma intrinsic(__nopffff)
extern void __nopffff(void);
#pragma intrinsic(__nop0000)
extern void __nop0000(void);



#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(uint32_t);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(uint32_t);

#pragma intrinsic(_delay3)
extern __attribute__((nonreentrant)) void _delay3(uint8_t);
# 25 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/xc.h" 2 3








# 1 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include/pic18.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/xc.h" 1 3
# 5 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include/pic18.h" 2 3
# 1 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include/pic18_chip_select.h" 1 3
# 154 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include/pic18_chip_select.h" 3
# 1 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 1 3
# 50 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXERRCNT __attribute__((address(0xE41)));

__asm("RXERRCNT equ 0E41h");


typedef union {
    struct {
        unsigned REC :8;
    };
    struct {
        unsigned REC0 :1;
        unsigned REC1 :1;
        unsigned REC2 :1;
        unsigned REC3 :1;
        unsigned REC4 :1;
        unsigned REC5 :1;
        unsigned REC6 :1;
        unsigned REC7 :1;
    };
} RXERRCNTbits_t;
extern volatile RXERRCNTbits_t RXERRCNTbits __attribute__((address(0xE41)));
# 120 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXERRCNT __attribute__((address(0xE42)));

__asm("TXERRCNT equ 0E42h");


typedef union {
    struct {
        unsigned TEC :8;
    };
    struct {
        unsigned TEC0 :1;
        unsigned TEC1 :1;
        unsigned TEC2 :1;
        unsigned TEC3 :1;
        unsigned TEC4 :1;
        unsigned TEC5 :1;
        unsigned TEC6 :1;
        unsigned TEC7 :1;
    };
} TXERRCNTbits_t;
extern volatile TXERRCNTbits_t TXERRCNTbits __attribute__((address(0xE42)));
# 190 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char BRGCON1 __attribute__((address(0xE43)));

__asm("BRGCON1 equ 0E43h");


typedef union {
    struct {
        unsigned BRP :6;
        unsigned SJW :2;
    };
    struct {
        unsigned BRP0 :1;
        unsigned BRP1 :1;
        unsigned BRP2 :1;
        unsigned BRP3 :1;
        unsigned BRP4 :1;
        unsigned BRP5 :1;
        unsigned SJW0 :1;
        unsigned SJW1 :1;
    };
} BRGCON1bits_t;
extern volatile BRGCON1bits_t BRGCON1bits __attribute__((address(0xE43)));
# 266 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char BRGCON2 __attribute__((address(0xE44)));

__asm("BRGCON2 equ 0E44h");


typedef union {
    struct {
        unsigned PRSEG :3;
        unsigned SEG1PH :3;
        unsigned SAM :1;
        unsigned SEG2PHTS :1;
    };
    struct {
        unsigned PRSEG0 :1;
        unsigned PRSEG1 :1;
        unsigned PRSEG2 :1;
        unsigned SEG1PH0 :1;
        unsigned SEG1PH1 :1;
        unsigned SEG1PH2 :1;
    };
    struct {
        unsigned :7;
        unsigned SEG2PHT :1;
    };
} BRGCON2bits_t;
extern volatile BRGCON2bits_t BRGCON2bits __attribute__((address(0xE44)));
# 351 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char BRGCON3 __attribute__((address(0xE45)));

__asm("BRGCON3 equ 0E45h");


typedef union {
    struct {
        unsigned SEG2PH :3;
        unsigned :3;
        unsigned WAKFIL :1;
        unsigned WAKDIS :1;
    };
    struct {
        unsigned SEG2PH0 :1;
        unsigned SEG2PH1 :1;
        unsigned SEG2PH2 :1;
    };
} BRGCON3bits_t;
extern volatile BRGCON3bits_t BRGCON3bits __attribute__((address(0xE45)));
# 404 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXFCON0 __attribute__((address(0xE46)));

__asm("RXFCON0 equ 0E46h");


typedef union {
    struct {
        unsigned RXF0EN :1;
        unsigned RXF1EN :1;
        unsigned RXF2EN :1;
        unsigned RXF3EN :1;
        unsigned RXF4EN :1;
        unsigned RXF5EN :1;
        unsigned RXF6EN :1;
        unsigned RXF7EN :1;
    };
} RXFCON0bits_t;
extern volatile RXFCON0bits_t RXFCON0bits __attribute__((address(0xE46)));
# 466 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXFCON1 __attribute__((address(0xE47)));

__asm("RXFCON1 equ 0E47h");


typedef union {
    struct {
        unsigned RXF8EN :1;
        unsigned RXF9EN :1;
        unsigned RXF10EN :1;
        unsigned RXF11EN :1;
        unsigned RXF12EN :1;
        unsigned RXF13EN :1;
        unsigned RXF14EN :1;
        unsigned RXF15EN :1;
    };
} RXFCON1bits_t;
extern volatile RXFCON1bits_t RXFCON1bits __attribute__((address(0xE47)));
# 528 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF6SIDH __attribute__((address(0xE48)));

__asm("RXF6SIDH equ 0E48h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned RXF6SID3 :1;
        unsigned RXF6SID4 :1;
        unsigned RXF6SID5 :1;
        unsigned RXF6SID6 :1;
        unsigned RXF6SID7 :1;
        unsigned RXF6SID8 :1;
        unsigned RXF6SID9 :1;
        unsigned RXF6SID10 :1;
    };
} RXF6SIDHbits_t;
extern volatile RXF6SIDHbits_t RXF6SIDHbits __attribute__((address(0xE48)));
# 648 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF6SIDL __attribute__((address(0xE49)));

__asm("RXF6SIDL equ 0E49h");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDEN :1;
        unsigned :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned RXF6EID16 :1;
        unsigned RXF6EID17 :1;
        unsigned :1;
        unsigned RXF6EXIDEN :1;
        unsigned :1;
        unsigned RXF6SID0 :1;
        unsigned RXF6SID1 :1;
        unsigned RXF6SID2 :1;
    };
} RXF6SIDLbits_t;
extern volatile RXF6SIDLbits_t RXF6SIDLbits __attribute__((address(0xE49)));
# 755 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF6EIDH __attribute__((address(0xE4A)));

__asm("RXF6EIDH equ 0E4Ah");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned RXF6EID8 :1;
        unsigned RXF6EID9 :1;
        unsigned RXF6EID10 :1;
        unsigned RXF6EID11 :1;
        unsigned RXF6EID12 :1;
        unsigned RXF6EID13 :1;
        unsigned RXF6EID14 :1;
        unsigned RXF6EID15 :1;
    };
} RXF6EIDHbits_t;
extern volatile RXF6EIDHbits_t RXF6EIDHbits __attribute__((address(0xE4A)));
# 875 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF6EIDL __attribute__((address(0xE4B)));

__asm("RXF6EIDL equ 0E4Bh");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned RXF6EID0 :1;
        unsigned RXF6EID1 :1;
        unsigned RXF6EID2 :1;
        unsigned RXF6EID3 :1;
        unsigned RXF6EID4 :1;
        unsigned RXF6EID5 :1;
        unsigned RXF6EID6 :1;
        unsigned RXF6EID7 :1;
    };
} RXF6EIDLbits_t;
extern volatile RXF6EIDLbits_t RXF6EIDLbits __attribute__((address(0xE4B)));
# 995 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF7SIDH __attribute__((address(0xE4C)));

__asm("RXF7SIDH equ 0E4Ch");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned RXF7SID3 :1;
        unsigned RXF7SID4 :1;
        unsigned RXF7SID5 :1;
        unsigned RXF7SID6 :1;
        unsigned RXF7SID7 :1;
        unsigned RXF7SID8 :1;
        unsigned RXF7SID9 :1;
        unsigned RXF7SID10 :1;
    };
} RXF7SIDHbits_t;
extern volatile RXF7SIDHbits_t RXF7SIDHbits __attribute__((address(0xE4C)));
# 1115 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF7SIDL __attribute__((address(0xE4D)));

__asm("RXF7SIDL equ 0E4Dh");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDEN :1;
        unsigned :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned RXF7EID16 :1;
        unsigned RXF7EID17 :1;
        unsigned :1;
        unsigned RXF7EXIDEN :1;
        unsigned :1;
        unsigned RXF7SID0 :1;
        unsigned RXF7SID1 :1;
        unsigned RXF7SID2 :1;
    };
} RXF7SIDLbits_t;
extern volatile RXF7SIDLbits_t RXF7SIDLbits __attribute__((address(0xE4D)));
# 1222 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF7EIDH __attribute__((address(0xE4E)));

__asm("RXF7EIDH equ 0E4Eh");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned RXF7EID8 :1;
        unsigned RXF7EID9 :1;
        unsigned RXF7EID10 :1;
        unsigned RXF7EID11 :1;
        unsigned RXF7EID12 :1;
        unsigned RXF7EID13 :1;
        unsigned RXF7EID14 :1;
        unsigned RXF7EID15 :1;
    };
} RXF7EIDHbits_t;
extern volatile RXF7EIDHbits_t RXF7EIDHbits __attribute__((address(0xE4E)));
# 1342 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF7EIDL __attribute__((address(0xE4F)));

__asm("RXF7EIDL equ 0E4Fh");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned RXF7EID0 :1;
        unsigned RXF7EID1 :1;
        unsigned RXF7EID2 :1;
        unsigned RXF7EID3 :1;
        unsigned RXF7EID4 :1;
        unsigned RXF7EID5 :1;
        unsigned RXF7EID6 :1;
        unsigned RXF7EID7 :1;
    };
} RXF7EIDLbits_t;
extern volatile RXF7EIDLbits_t RXF7EIDLbits __attribute__((address(0xE4F)));
# 1462 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF8SIDH __attribute__((address(0xE50)));

__asm("RXF8SIDH equ 0E50h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned RXF8SID3 :1;
        unsigned RXF8SID4 :1;
        unsigned RXF8SID5 :1;
        unsigned RXF8SID6 :1;
        unsigned RXF8SID7 :1;
        unsigned RXF8SID8 :1;
        unsigned RXF8SID9 :1;
        unsigned RXF8SID10 :1;
    };
} RXF8SIDHbits_t;
extern volatile RXF8SIDHbits_t RXF8SIDHbits __attribute__((address(0xE50)));
# 1582 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF8SIDL __attribute__((address(0xE51)));

__asm("RXF8SIDL equ 0E51h");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDEN :1;
        unsigned :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned RXF8EID16 :1;
        unsigned RXF8EID17 :1;
        unsigned :1;
        unsigned RXF8EXIDEN :1;
        unsigned :1;
        unsigned RXF8SID0 :1;
        unsigned RXF8SID1 :1;
        unsigned RXF8SID2 :1;
    };
} RXF8SIDLbits_t;
extern volatile RXF8SIDLbits_t RXF8SIDLbits __attribute__((address(0xE51)));
# 1689 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF8EIDH __attribute__((address(0xE52)));

__asm("RXF8EIDH equ 0E52h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned RXF8EID8 :1;
        unsigned RXF8EID9 :1;
        unsigned RXF8EID10 :1;
        unsigned RXF8EID11 :1;
        unsigned RXF8EID12 :1;
        unsigned RXF8EID13 :1;
        unsigned RXF8EID14 :1;
        unsigned RXF8EID15 :1;
    };
} RXF8EIDHbits_t;
extern volatile RXF8EIDHbits_t RXF8EIDHbits __attribute__((address(0xE52)));
# 1809 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF8EIDL __attribute__((address(0xE53)));

__asm("RXF8EIDL equ 0E53h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned RXF8EID0 :1;
        unsigned RXF8EID1 :1;
        unsigned RXF8EID2 :1;
        unsigned RXF8EID3 :1;
        unsigned RXF8EID4 :1;
        unsigned RXF8EID5 :1;
        unsigned RXF8EID6 :1;
        unsigned RXF8EID7 :1;
    };
} RXF8EIDLbits_t;
extern volatile RXF8EIDLbits_t RXF8EIDLbits __attribute__((address(0xE53)));
# 1929 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF9SIDH __attribute__((address(0xE54)));

__asm("RXF9SIDH equ 0E54h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned RXF9SID3 :1;
        unsigned RXF9SID4 :1;
        unsigned RXF9SID5 :1;
        unsigned RXF9SID6 :1;
        unsigned RXF9SID7 :1;
        unsigned RXF9SID8 :1;
        unsigned RXF9SID9 :1;
        unsigned RXF9SID10 :1;
    };
} RXF9SIDHbits_t;
extern volatile RXF9SIDHbits_t RXF9SIDHbits __attribute__((address(0xE54)));
# 2049 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF9SIDL __attribute__((address(0xE55)));

__asm("RXF9SIDL equ 0E55h");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDEN :1;
        unsigned :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned RXF9EID16 :1;
        unsigned RXF9EID17 :1;
        unsigned :1;
        unsigned RXF9EXIDEN :1;
        unsigned :1;
        unsigned RXF9SID0 :1;
        unsigned RXF9SID1 :1;
        unsigned RXF9SID2 :1;
    };
} RXF9SIDLbits_t;
extern volatile RXF9SIDLbits_t RXF9SIDLbits __attribute__((address(0xE55)));
# 2156 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF9EIDH __attribute__((address(0xE56)));

__asm("RXF9EIDH equ 0E56h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned RXF9EID8 :1;
        unsigned RXF9EID9 :1;
        unsigned RXF9EID10 :1;
        unsigned RXF9EID11 :1;
        unsigned RXF9EID12 :1;
        unsigned RXF9EID13 :1;
        unsigned RXF9EID14 :1;
        unsigned RXF9EID15 :1;
    };
} RXF9EIDHbits_t;
extern volatile RXF9EIDHbits_t RXF9EIDHbits __attribute__((address(0xE56)));
# 2276 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF9EIDL __attribute__((address(0xE57)));

__asm("RXF9EIDL equ 0E57h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned RXF9EID0 :1;
        unsigned RXF9EID1 :1;
        unsigned RXF9EID2 :1;
        unsigned RXF9EID3 :1;
        unsigned RXF9EID4 :1;
        unsigned RXF9EID5 :1;
        unsigned RXF9EID6 :1;
        unsigned RXF9EID7 :1;
    };
} RXF9EIDLbits_t;
extern volatile RXF9EIDLbits_t RXF9EIDLbits __attribute__((address(0xE57)));
# 2396 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF10SIDH __attribute__((address(0xE58)));

__asm("RXF10SIDH equ 0E58h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned RXF10SID3 :1;
        unsigned RXF10SID4 :1;
        unsigned RXF10SID5 :1;
        unsigned RXF10SID6 :1;
        unsigned RXF10SID7 :1;
        unsigned RXF10SID8 :1;
        unsigned RXF10SID9 :1;
        unsigned RXF10SID10 :1;
    };
} RXF10SIDHbits_t;
extern volatile RXF10SIDHbits_t RXF10SIDHbits __attribute__((address(0xE58)));
# 2516 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF10SIDL __attribute__((address(0xE59)));

__asm("RXF10SIDL equ 0E59h");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDEN :1;
        unsigned :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned RXF10EID16 :1;
        unsigned RXF10EID17 :1;
        unsigned :1;
        unsigned RXF10EXIDEN :1;
        unsigned :1;
        unsigned RXF10SID0 :1;
        unsigned RXF10SID1 :1;
        unsigned RXF10SID2 :1;
    };
} RXF10SIDLbits_t;
extern volatile RXF10SIDLbits_t RXF10SIDLbits __attribute__((address(0xE59)));
# 2623 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF10EIDH __attribute__((address(0xE5A)));

__asm("RXF10EIDH equ 0E5Ah");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned RXF10EID8 :1;
        unsigned RXF10EID9 :1;
        unsigned RXF10EID10 :1;
        unsigned RXF10EID11 :1;
        unsigned RXF10EID12 :1;
        unsigned RXF10EID13 :1;
        unsigned RXF10EID14 :1;
        unsigned RXF10EID15 :1;
    };
} RXF10EIDHbits_t;
extern volatile RXF10EIDHbits_t RXF10EIDHbits __attribute__((address(0xE5A)));
# 2743 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF10EIDL __attribute__((address(0xE5B)));

__asm("RXF10EIDL equ 0E5Bh");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned RXF10EID0 :1;
        unsigned RXF10EID1 :1;
        unsigned RXF10EID2 :1;
        unsigned RXF10EID3 :1;
        unsigned RXF10EID4 :1;
        unsigned RXF10EID5 :1;
        unsigned RXF10EID6 :1;
        unsigned RXF10EID7 :1;
    };
} RXF10EIDLbits_t;
extern volatile RXF10EIDLbits_t RXF10EIDLbits __attribute__((address(0xE5B)));
# 2863 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF11SIDH __attribute__((address(0xE5C)));

__asm("RXF11SIDH equ 0E5Ch");


typedef union {
    struct {
        unsigned RXFSID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned RXF11SID3 :1;
        unsigned RXF11SID4 :1;
        unsigned RXF11SID5 :1;
        unsigned RXF11SID6 :1;
        unsigned RXF11SID7 :1;
        unsigned RXF11SID8 :1;
        unsigned RXF11SID9 :1;
        unsigned RXF11SID10 :1;
    };
} RXF11SIDHbits_t;
extern volatile RXF11SIDHbits_t RXF11SIDHbits __attribute__((address(0xE5C)));
# 2983 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF11SIDL __attribute__((address(0xE5D)));

__asm("RXF11SIDL equ 0E5Dh");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDEN :1;
        unsigned :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned RXF11EID16 :1;
        unsigned RXF11EID17 :1;
        unsigned :1;
        unsigned RXF11EXIDEN :1;
        unsigned :1;
        unsigned RXF11SID0 :1;
        unsigned RXF11SID1 :1;
        unsigned RXF11SID2 :1;
    };
} RXF11SIDLbits_t;
extern volatile RXF11SIDLbits_t RXF11SIDLbits __attribute__((address(0xE5D)));
# 3090 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF11EIDH __attribute__((address(0xE5E)));

__asm("RXF11EIDH equ 0E5Eh");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned RXF11EID8 :1;
        unsigned RXF11EID9 :1;
        unsigned RXF11EID10 :1;
        unsigned RXF11EID11 :1;
        unsigned RXF11EID12 :1;
        unsigned RXF11EID13 :1;
        unsigned RXF11EID14 :1;
        unsigned RXF11EID15 :1;
    };
} RXF11EIDHbits_t;
extern volatile RXF11EIDHbits_t RXF11EIDHbits __attribute__((address(0xE5E)));
# 3210 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF11EIDL __attribute__((address(0xE5F)));

__asm("RXF11EIDL equ 0E5Fh");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned RXF11EID0 :1;
        unsigned RXF11EID1 :1;
        unsigned RXF11EID2 :1;
        unsigned RXF11EID3 :1;
        unsigned RXF11EID4 :1;
        unsigned RXF11EID5 :1;
        unsigned RXF11EID6 :1;
        unsigned RXF11EID7 :1;
    };
} RXF11EIDLbits_t;
extern volatile RXF11EIDLbits_t RXF11EIDLbits __attribute__((address(0xE5F)));
# 3330 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF12SIDH __attribute__((address(0xE60)));

__asm("RXF12SIDH equ 0E60h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned RXF12SID3 :1;
        unsigned RXF12SID4 :1;
        unsigned RXF12SID5 :1;
        unsigned RXF12SID6 :1;
        unsigned RXF12SID7 :1;
        unsigned RXF12SID8 :1;
        unsigned RXF12SID9 :1;
        unsigned RXF12SID10 :1;
    };
} RXF12SIDHbits_t;
extern volatile RXF12SIDHbits_t RXF12SIDHbits __attribute__((address(0xE60)));
# 3450 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF12SIDL __attribute__((address(0xE61)));

__asm("RXF12SIDL equ 0E61h");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDEN :1;
        unsigned :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned RXF12EID16 :1;
        unsigned RXF12EID17 :1;
        unsigned :1;
        unsigned RXF12EXIDEN :1;
        unsigned :1;
        unsigned RXF12SID0 :1;
        unsigned RXF12SID1 :1;
        unsigned RXF12SID2 :1;
    };
} RXF12SIDLbits_t;
extern volatile RXF12SIDLbits_t RXF12SIDLbits __attribute__((address(0xE61)));
# 3557 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF12EIDH __attribute__((address(0xE62)));

__asm("RXF12EIDH equ 0E62h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned RXF12EID8 :1;
        unsigned RXF12EID9 :1;
        unsigned RXF12EID10 :1;
        unsigned RXF12EID11 :1;
        unsigned RXF12EID12 :1;
        unsigned RXF12EID13 :1;
        unsigned RXF12EID14 :1;
        unsigned RXF12EID15 :1;
    };
} RXF12EIDHbits_t;
extern volatile RXF12EIDHbits_t RXF12EIDHbits __attribute__((address(0xE62)));
# 3677 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF12EIDL __attribute__((address(0xE63)));

__asm("RXF12EIDL equ 0E63h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned RXF12EID0 :1;
        unsigned RXF12EID1 :1;
        unsigned RXF12EID2 :1;
        unsigned RXF12EID3 :1;
        unsigned RXF12EID4 :1;
        unsigned RXF12EID5 :1;
        unsigned RXF12EID6 :1;
        unsigned RXF12EID7 :1;
    };
} RXF12EIDLbits_t;
extern volatile RXF12EIDLbits_t RXF12EIDLbits __attribute__((address(0xE63)));
# 3797 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF13SIDH __attribute__((address(0xE64)));

__asm("RXF13SIDH equ 0E64h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned RXF13SID3 :1;
        unsigned RXF13SID4 :1;
        unsigned RXF13SID5 :1;
        unsigned RXF13SID6 :1;
        unsigned RXF13SID7 :1;
        unsigned RXF13SID8 :1;
        unsigned RXF13SID9 :1;
        unsigned RXF13SID10 :1;
    };
} RXF13SIDHbits_t;
extern volatile RXF13SIDHbits_t RXF13SIDHbits __attribute__((address(0xE64)));
# 3917 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF13SIDL __attribute__((address(0xE65)));

__asm("RXF13SIDL equ 0E65h");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDEN :1;
        unsigned :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned RXF13EID16 :1;
        unsigned RXF13EID17 :1;
        unsigned :1;
        unsigned RXF13EXIDEN :1;
        unsigned :1;
        unsigned RXF13SID0 :1;
        unsigned RXF13SID1 :1;
        unsigned RXF13SID2 :1;
    };
} RXF13SIDLbits_t;
extern volatile RXF13SIDLbits_t RXF13SIDLbits __attribute__((address(0xE65)));
# 4024 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF13EIDH __attribute__((address(0xE66)));

__asm("RXF13EIDH equ 0E66h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned RXF13EID8 :1;
        unsigned RXF13EID9 :1;
        unsigned RXF13EID10 :1;
        unsigned RXF13EID11 :1;
        unsigned RXF13EID12 :1;
        unsigned RXF13EID13 :1;
        unsigned RXF13EID14 :1;
        unsigned RXF13EID15 :1;
    };
} RXF13EIDHbits_t;
extern volatile RXF13EIDHbits_t RXF13EIDHbits __attribute__((address(0xE66)));
# 4144 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF13EIDL __attribute__((address(0xE67)));

__asm("RXF13EIDL equ 0E67h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned RXF13EID0 :1;
        unsigned RXF13EID1 :1;
        unsigned RXF13EID2 :1;
        unsigned RXF13EID3 :1;
        unsigned RXF13EID4 :1;
        unsigned RXF13EID5 :1;
        unsigned RXF13EID6 :1;
        unsigned RXF13EID7 :1;
    };
} RXF13EIDLbits_t;
extern volatile RXF13EIDLbits_t RXF13EIDLbits __attribute__((address(0xE67)));
# 4264 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF14SIDH __attribute__((address(0xE68)));

__asm("RXF14SIDH equ 0E68h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned RXF14SID3 :1;
        unsigned RXF14SID4 :1;
        unsigned RXF14SID5 :1;
        unsigned RXF14SID6 :1;
        unsigned RXF14SID7 :1;
        unsigned RXF14SID8 :1;
        unsigned RXF14SID9 :1;
        unsigned RXF14SID10 :1;
    };
} RXF14SIDHbits_t;
extern volatile RXF14SIDHbits_t RXF14SIDHbits __attribute__((address(0xE68)));
# 4384 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF14SIDL __attribute__((address(0xE69)));

__asm("RXF14SIDL equ 0E69h");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDEN :1;
        unsigned :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned RXF14EID16 :1;
        unsigned RXF14EID17 :1;
        unsigned :1;
        unsigned RXF14EXIDEN :1;
        unsigned :1;
        unsigned RXF14SID0 :1;
        unsigned RXF14SID1 :1;
        unsigned RXF14SID2 :1;
    };
} RXF14SIDLbits_t;
extern volatile RXF14SIDLbits_t RXF14SIDLbits __attribute__((address(0xE69)));
# 4491 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF14EIDH __attribute__((address(0xE6A)));

__asm("RXF14EIDH equ 0E6Ah");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned RXF14EID8 :1;
        unsigned RXF14EID9 :1;
        unsigned RXF14EID10 :1;
        unsigned RXF14EID11 :1;
        unsigned RXF14EID12 :1;
        unsigned RXF14EID13 :1;
        unsigned RXF14EID14 :1;
        unsigned RXF14EID15 :1;
    };
} RXF14EIDHbits_t;
extern volatile RXF14EIDHbits_t RXF14EIDHbits __attribute__((address(0xE6A)));
# 4611 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF14EIDL __attribute__((address(0xE6B)));

__asm("RXF14EIDL equ 0E6Bh");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned RXF14EID0 :1;
        unsigned RXF14EID1 :1;
        unsigned RXF14EID2 :1;
        unsigned RXF14EID3 :1;
        unsigned RXF14EID4 :1;
        unsigned RXF14EID5 :1;
        unsigned RXF14EID6 :1;
        unsigned RXF14EID7 :1;
    };
} RXF14EIDLbits_t;
extern volatile RXF14EIDLbits_t RXF14EIDLbits __attribute__((address(0xE6B)));
# 4731 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF15SIDH __attribute__((address(0xE6C)));

__asm("RXF15SIDH equ 0E6Ch");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned RXF15SID3 :1;
        unsigned RXF15SID4 :1;
        unsigned RXF15SID5 :1;
        unsigned RXF15SID6 :1;
        unsigned RXF15SID7 :1;
        unsigned RXF15SID8 :1;
        unsigned RXF15SID9 :1;
        unsigned RXF15SID10 :1;
    };
} RXF15SIDHbits_t;
extern volatile RXF15SIDHbits_t RXF15SIDHbits __attribute__((address(0xE6C)));
# 4851 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF15SIDL __attribute__((address(0xE6D)));

__asm("RXF15SIDL equ 0E6Dh");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDEN :1;
        unsigned :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned RXF15EID16 :1;
        unsigned RXF15EID17 :1;
        unsigned :1;
        unsigned RXF15EXIDEN :1;
        unsigned :1;
        unsigned RXF15SID0 :1;
        unsigned RXF15SID1 :1;
        unsigned RXF15SID2 :1;
    };
} RXF15SIDLbits_t;
extern volatile RXF15SIDLbits_t RXF15SIDLbits __attribute__((address(0xE6D)));
# 4958 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF15EIDH __attribute__((address(0xE6E)));

__asm("RXF15EIDH equ 0E6Eh");


typedef union {
    struct {
        unsigned RXFEID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned RXF15EID8 :1;
        unsigned RXF15EID9 :1;
        unsigned RXF15EID10 :1;
        unsigned RXF15EID11 :1;
        unsigned RXF15EID12 :1;
        unsigned RXF15EID13 :1;
        unsigned RXF15EID14 :1;
        unsigned RXF15EID15 :1;
    };
} RXF15EIDHbits_t;
extern volatile RXF15EIDHbits_t RXF15EIDHbits __attribute__((address(0xE6E)));
# 5078 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF15EIDL __attribute__((address(0xE6F)));

__asm("RXF15EIDL equ 0E6Fh");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned RXF15EID0 :1;
        unsigned RXF15EID1 :1;
        unsigned RXF15EID2 :1;
        unsigned RXF15EID3 :1;
        unsigned RXF15EID4 :1;
        unsigned RXF15EID5 :1;
        unsigned RXF15EID6 :1;
        unsigned RXF15EID7 :1;
    };
} RXF15EIDLbits_t;
extern volatile RXF15EIDLbits_t RXF15EIDLbits __attribute__((address(0xE6F)));
# 5198 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char SDFLC __attribute__((address(0xE70)));

__asm("SDFLC equ 0E70h");


typedef union {
    struct {
        unsigned FLC :5;
    };
    struct {
        unsigned FLC0 :1;
        unsigned FLC1 :1;
        unsigned FLC2 :1;
        unsigned FLC3 :1;
        unsigned FLC4 :1;
    };
} SDFLCbits_t;
extern volatile SDFLCbits_t SDFLCbits __attribute__((address(0xE70)));
# 5250 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXFBCON0 __attribute__((address(0xE71)));

__asm("RXFBCON0 equ 0E71h");


typedef union {
    struct {
        unsigned F0BP :4;
        unsigned F1BP :4;
    };
    struct {
        unsigned F0BP_0 :1;
        unsigned F0BP_1 :1;
        unsigned F0BP_2 :1;
        unsigned F0BP_3 :1;
        unsigned F1BP_0 :1;
        unsigned F1BP_1 :1;
        unsigned F1BP_2 :1;
        unsigned F1BP_3 :1;
    };
    struct {
        unsigned F0BP_01 :1;
    };
} RXFBCON0bits_t;
extern volatile RXFBCON0bits_t RXFBCON0bits __attribute__((address(0xE71)));
# 5334 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXFBCON1 __attribute__((address(0xE72)));

__asm("RXFBCON1 equ 0E72h");


typedef union {
    struct {
        unsigned F2BP :4;
        unsigned F3BP :4;
    };
    struct {
        unsigned F2BP_0 :1;
        unsigned F2BP_1 :1;
        unsigned F2BP_2 :1;
        unsigned F2BP_3 :1;
        unsigned F3BP_0 :1;
        unsigned F3BP_1 :1;
        unsigned F3BP_2 :1;
        unsigned F3BP_3 :1;
    };
    struct {
        unsigned F2BP_01 :1;
    };
} RXFBCON1bits_t;
extern volatile RXFBCON1bits_t RXFBCON1bits __attribute__((address(0xE72)));
# 5418 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXFBCON2 __attribute__((address(0xE73)));

__asm("RXFBCON2 equ 0E73h");


typedef union {
    struct {
        unsigned F4BP :4;
        unsigned F5BP :4;
    };
    struct {
        unsigned F4BP_0 :1;
        unsigned F4BP_1 :1;
        unsigned F4BP_2 :1;
        unsigned F4BP_3 :1;
        unsigned F5BP_0 :1;
        unsigned F5BP_1 :1;
        unsigned F5BP_2 :1;
        unsigned F5BP_3 :1;
    };
    struct {
        unsigned F4BP_01 :1;
    };
} RXFBCON2bits_t;
extern volatile RXFBCON2bits_t RXFBCON2bits __attribute__((address(0xE73)));
# 5502 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXFBCON3 __attribute__((address(0xE74)));

__asm("RXFBCON3 equ 0E74h");


typedef union {
    struct {
        unsigned F6BP :4;
        unsigned F7BP :4;
    };
    struct {
        unsigned F6BP_0 :1;
        unsigned F6BP_1 :1;
        unsigned F6BP_2 :1;
        unsigned F6BP_3 :1;
        unsigned F7BP_0 :1;
        unsigned F7BP_1 :1;
        unsigned F7BP_2 :1;
        unsigned F7BP_3 :1;
    };
    struct {
        unsigned F6BP_01 :1;
    };
} RXFBCON3bits_t;
extern volatile RXFBCON3bits_t RXFBCON3bits __attribute__((address(0xE74)));
# 5586 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXFBCON4 __attribute__((address(0xE75)));

__asm("RXFBCON4 equ 0E75h");


typedef union {
    struct {
        unsigned F8BP :4;
        unsigned F9BP :4;
    };
    struct {
        unsigned F8BP_0 :1;
        unsigned F8BP_1 :1;
        unsigned F8BP_2 :1;
        unsigned F8BP_3 :1;
        unsigned F9BP_0 :1;
        unsigned F9BP_1 :1;
        unsigned F9BP_2 :1;
        unsigned F9BP_3 :1;
    };
    struct {
        unsigned F8BP_01 :1;
    };
} RXFBCON4bits_t;
extern volatile RXFBCON4bits_t RXFBCON4bits __attribute__((address(0xE75)));
# 5670 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXFBCON5 __attribute__((address(0xE76)));

__asm("RXFBCON5 equ 0E76h");


typedef union {
    struct {
        unsigned F10BP :4;
        unsigned F11BP :4;
    };
    struct {
        unsigned F10BP_0 :1;
        unsigned F10BP_1 :1;
        unsigned F10BP_2 :1;
        unsigned F10BP_3 :1;
        unsigned F11BP_0 :1;
        unsigned F11BP_1 :1;
        unsigned F11BP_2 :1;
        unsigned F11BP_3 :1;
    };
    struct {
        unsigned F10BP_01 :1;
    };
} RXFBCON5bits_t;
extern volatile RXFBCON5bits_t RXFBCON5bits __attribute__((address(0xE76)));
# 5754 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXFBCON6 __attribute__((address(0xE77)));

__asm("RXFBCON6 equ 0E77h");


typedef union {
    struct {
        unsigned F12BP :4;
        unsigned F13BP :4;
    };
    struct {
        unsigned F12BP_0 :1;
        unsigned F12BP_1 :1;
        unsigned F12BP_2 :1;
        unsigned F12BP_3 :1;
        unsigned F13BP_0 :1;
        unsigned F13BP_1 :1;
        unsigned F13BP_2 :1;
        unsigned F13BP_3 :1;
    };
    struct {
        unsigned F12BP_01 :1;
    };
} RXFBCON6bits_t;
extern volatile RXFBCON6bits_t RXFBCON6bits __attribute__((address(0xE77)));
# 5838 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXFBCON7 __attribute__((address(0xE78)));

__asm("RXFBCON7 equ 0E78h");


typedef union {
    struct {
        unsigned F14BP :4;
        unsigned F15BP :4;
    };
    struct {
        unsigned F14BP_0 :1;
        unsigned F14BP_1 :1;
        unsigned F14BP_2 :1;
        unsigned F14BP_3 :1;
        unsigned F15BP_0 :1;
        unsigned F15BP_1 :1;
        unsigned F15BP_2 :1;
        unsigned F15BP_3 :1;
    };
    struct {
        unsigned F14BP_01 :1;
    };
} RXFBCON7bits_t;
extern volatile RXFBCON7bits_t RXFBCON7bits __attribute__((address(0xE78)));
# 5922 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char MSEL0 __attribute__((address(0xE79)));

__asm("MSEL0 equ 0E79h");


typedef union {
    struct {
        unsigned FIL0 :2;
        unsigned FIL1 :2;
        unsigned FIL2 :2;
        unsigned FIL3 :2;
    };
    struct {
        unsigned FIL0_0 :1;
        unsigned FIL0_1 :1;
        unsigned FIL1_0 :1;
        unsigned FIL1_1 :1;
        unsigned FIL2_0 :1;
        unsigned FIL2_1 :1;
        unsigned FIL3_0 :1;
        unsigned FIL3_1 :1;
    };
} MSEL0bits_t;
extern volatile MSEL0bits_t MSEL0bits __attribute__((address(0xE79)));
# 6010 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char MSEL1 __attribute__((address(0xE7A)));

__asm("MSEL1 equ 0E7Ah");


typedef union {
    struct {
        unsigned FIL4 :2;
        unsigned FIL5 :2;
        unsigned FIL6 :2;
        unsigned FIL7 :2;
    };
    struct {
        unsigned FIL4_0 :1;
        unsigned FIL4_1 :1;
        unsigned FIL5_0 :1;
        unsigned FIL5_1 :1;
        unsigned FIL6_0 :1;
        unsigned FIL6_1 :1;
        unsigned FIL7_0 :1;
        unsigned FIL7_1 :1;
    };
} MSEL1bits_t;
extern volatile MSEL1bits_t MSEL1bits __attribute__((address(0xE7A)));
# 6098 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char MSEL2 __attribute__((address(0xE7B)));

__asm("MSEL2 equ 0E7Bh");


typedef union {
    struct {
        unsigned FIL8 :2;
        unsigned FIL9 :2;
        unsigned FIL10 :2;
        unsigned FIL11 :2;
    };
    struct {
        unsigned FIL8_0 :1;
        unsigned FIL8_1 :1;
        unsigned FIL9_0 :1;
        unsigned FIL9_1 :1;
        unsigned FIL10_0 :1;
        unsigned FIL10_1 :1;
        unsigned FIL11_0 :1;
        unsigned FIL11_1 :1;
    };
} MSEL2bits_t;
extern volatile MSEL2bits_t MSEL2bits __attribute__((address(0xE7B)));
# 6186 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char MSEL3 __attribute__((address(0xE7C)));

__asm("MSEL3 equ 0E7Ch");


typedef union {
    struct {
        unsigned FIL12 :2;
        unsigned FIL13 :2;
        unsigned FIL14 :2;
        unsigned FIL15 :2;
    };
    struct {
        unsigned FIL12_0 :1;
        unsigned FIL12_1 :1;
        unsigned FIL13_0 :1;
        unsigned FIL13_1 :1;
        unsigned FIL14_0 :1;
        unsigned FIL14_1 :1;
        unsigned FIL15_0 :1;
        unsigned FIL15_1 :1;
    };
} MSEL3bits_t;
extern volatile MSEL3bits_t MSEL3bits __attribute__((address(0xE7C)));
# 6274 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char BSEL0 __attribute__((address(0xE7D)));

__asm("BSEL0 equ 0E7Dh");


typedef union {
    struct {
        unsigned :2;
        unsigned B0TXEN :1;
        unsigned B1TXEN :1;
        unsigned B2TXEN :1;
        unsigned B3TXEN :1;
        unsigned B4TXEN :1;
        unsigned B5TXEN :1;
    };
} BSEL0bits_t;
extern volatile BSEL0bits_t BSEL0bits __attribute__((address(0xE7D)));
# 6325 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char BIE0 __attribute__((address(0xE7E)));

__asm("BIE0 equ 0E7Eh");


typedef union {
    struct {
        unsigned RXB0IE :1;
        unsigned RXB1IE :1;
        unsigned B0IE :1;
        unsigned B1IE :1;
        unsigned B2IE :1;
        unsigned B3IE :1;
        unsigned B4IE :1;
        unsigned B5IE :1;
    };
    struct {
        unsigned DRXB0IE :1;
        unsigned DRXB1IE :1;
    };
} BIE0bits_t;
extern volatile BIE0bits_t BIE0bits __attribute__((address(0xE7E)));
# 6401 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXBIE __attribute__((address(0xE7F)));

__asm("TXBIE equ 0E7Fh");


typedef union {
    struct {
        unsigned :2;
        unsigned TXB0IE :1;
        unsigned TXB1IE :1;
        unsigned TXB2IE :1;
    };
    struct {
        unsigned :2;
        unsigned TX0IE :1;
        unsigned TX1IE :1;
        unsigned TX2IE :1;
    };
} TXBIEbits_t;
extern volatile TXBIEbits_t TXBIEbits __attribute__((address(0xE7F)));
# 6455 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B0CON __attribute__((address(0xE80)));

__asm("B0CON equ 0E80h");


typedef union {
    struct {
        unsigned FILHIT0_TXPRI0 :1;
        unsigned FILHIT1_TXPRI1 :1;
        unsigned FILHIT2_RTREN :1;
        unsigned FILHIT3_TXREQ :1;
        unsigned FILHIT4_TXERR :1;
        unsigned RXRTRRO_TXLARB :1;
        unsigned RXM1_TXABT :1;
        unsigned RXFUL_TXBIF :1;
    };
    struct {
        unsigned FILHIT0 :1;
        unsigned FILHIT1 :1;
        unsigned FILHIT2 :1;
        unsigned FILHIT3 :1;
        unsigned FILHIT4 :1;
        unsigned RXRTRRO :1;
        unsigned RXM1 :1;
        unsigned RXFUL :1;
    };
    struct {
        unsigned TXPRI0 :1;
        unsigned TXPRI1 :1;
        unsigned RTREN :1;
        unsigned TXREQ :1;
        unsigned TXERR :1;
        unsigned TXLARB :1;
        unsigned TXABT :1;
        unsigned TXBIF :1;
    };
    struct {
        unsigned B0FILHIT0 :1;
        unsigned B0FILHIT1 :1;
        unsigned B0FILHIT2 :1;
        unsigned B0FILHIT3 :1;
        unsigned B0FILHIT4 :1;
        unsigned B0RTRRO :1;
        unsigned B0RXM1 :1;
        unsigned B0RXFUL :1;
    };
    struct {
        unsigned B0TXPRI0 :1;
        unsigned B0TXPRI1 :1;
        unsigned B0RTREN :1;
        unsigned B0TXREQ :1;
        unsigned B0TXERR :1;
        unsigned B0TXLARB :1;
        unsigned B0TXABT :1;
        unsigned B0TXB3IF :1;
    };
} B0CONbits_t;
extern volatile B0CONbits_t B0CONbits __attribute__((address(0xE80)));
# 6717 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B0SIDH __attribute__((address(0xE81)));

__asm("B0SIDH equ 0E81h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned B0SID3 :1;
        unsigned B0SID4 :1;
        unsigned B0SID5 :1;
        unsigned B0SID6 :1;
        unsigned B0SID7 :1;
        unsigned B0SID8 :1;
        unsigned B0SID9 :1;
        unsigned B0SID10 :1;
    };
} B0SIDHbits_t;
extern volatile B0SIDHbits_t B0SIDHbits __attribute__((address(0xE81)));
# 6837 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B0SIDL __attribute__((address(0xE82)));

__asm("B0SIDL equ 0E82h");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDE :1;
        unsigned SRR :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned B0EID16 :1;
        unsigned B0EID17 :1;
        unsigned :1;
        unsigned B0EXID :1;
        unsigned B0SRR :1;
        unsigned B0SID0 :1;
        unsigned B0SID1 :1;
        unsigned B0SID2 :1;
    };
} B0SIDLbits_t;
extern volatile B0SIDLbits_t B0SIDLbits __attribute__((address(0xE82)));
# 6954 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B0EIDH __attribute__((address(0xE83)));

__asm("B0EIDH equ 0E83h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned B0EID8 :1;
        unsigned B0EID9 :1;
        unsigned B0EID10 :1;
        unsigned B0EID11 :1;
        unsigned B0EID12 :1;
        unsigned B0EID13 :1;
        unsigned B0EID14 :1;
        unsigned B0EID15 :1;
    };
} B0EIDHbits_t;
extern volatile B0EIDHbits_t B0EIDHbits __attribute__((address(0xE83)));
# 7074 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B0EIDL __attribute__((address(0xE84)));

__asm("B0EIDL equ 0E84h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned B0EID0 :1;
        unsigned B0EID1 :1;
        unsigned B0EID2 :1;
        unsigned B0EID3 :1;
        unsigned B0EID4 :1;
        unsigned B0EID5 :1;
        unsigned B0EID6 :1;
        unsigned B0EID7 :1;
    };
} B0EIDLbits_t;
extern volatile B0EIDLbits_t B0EIDLbits __attribute__((address(0xE84)));
# 7194 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B0DLC __attribute__((address(0xE85)));

__asm("B0DLC equ 0E85h");


typedef union {
    struct {
        unsigned DLC :4;
        unsigned RB :2;
        unsigned RXRTR_TXRTR :1;
    };
    struct {
        unsigned DLC0 :1;
        unsigned DLC1 :1;
        unsigned DLC2 :1;
        unsigned DLC3 :1;
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RXRTR :1;
    };
    struct {
        unsigned :6;
        unsigned TXRTR :1;
    };
    struct {
        unsigned B0DLC0 :1;
        unsigned B0DLC1 :1;
        unsigned B0DLC2 :1;
        unsigned B0DLC3 :1;
        unsigned B0RB0 :1;
        unsigned B0RB1 :1;
        unsigned B0RXRTR :1;
    };
} B0DLCbits_t;
extern volatile B0DLCbits_t B0DLCbits __attribute__((address(0xE85)));
# 7323 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B0D0 __attribute__((address(0xE86)));

__asm("B0D0 equ 0E86h");


typedef union {
    struct {
        unsigned B0D0 :8;
    };
    struct {
        unsigned B0D00 :1;
        unsigned B0D01 :1;
        unsigned B0D02 :1;
        unsigned B0D03 :1;
        unsigned B0D04 :1;
        unsigned B0D05 :1;
        unsigned B0D06 :1;
        unsigned B0D07 :1;
    };
} B0D0bits_t;
extern volatile B0D0bits_t B0D0bits __attribute__((address(0xE86)));
# 7393 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B0D1 __attribute__((address(0xE87)));

__asm("B0D1 equ 0E87h");


typedef union {
    struct {
        unsigned B0D1 :8;
    };
    struct {
        unsigned B0D10 :1;
        unsigned B0D11 :1;
        unsigned B0D12 :1;
        unsigned B0D13 :1;
        unsigned B0D14 :1;
        unsigned B0D15 :1;
        unsigned B0D16 :1;
        unsigned B0D17 :1;
    };
} B0D1bits_t;
extern volatile B0D1bits_t B0D1bits __attribute__((address(0xE87)));
# 7463 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B0D2 __attribute__((address(0xE88)));

__asm("B0D2 equ 0E88h");


typedef union {
    struct {
        unsigned B0D2 :8;
    };
    struct {
        unsigned B0D20 :1;
        unsigned B0D21 :1;
        unsigned B0D22 :1;
        unsigned B0D23 :1;
        unsigned B0D24 :1;
        unsigned B0D25 :1;
        unsigned B0D26 :1;
        unsigned B0D27 :1;
    };
} B0D2bits_t;
extern volatile B0D2bits_t B0D2bits __attribute__((address(0xE88)));
# 7533 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B0D3 __attribute__((address(0xE89)));

__asm("B0D3 equ 0E89h");


typedef union {
    struct {
        unsigned B0D3 :8;
    };
    struct {
        unsigned B0D30 :1;
        unsigned B0D31 :1;
        unsigned B0D32 :1;
        unsigned B0D33 :1;
        unsigned B0D34 :1;
        unsigned B0D35 :1;
        unsigned B0D36 :1;
        unsigned B0D37 :1;
    };
} B0D3bits_t;
extern volatile B0D3bits_t B0D3bits __attribute__((address(0xE89)));
# 7603 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B0D4 __attribute__((address(0xE8A)));

__asm("B0D4 equ 0E8Ah");


typedef union {
    struct {
        unsigned B0D4 :8;
    };
    struct {
        unsigned B0D40 :1;
        unsigned B0D41 :1;
        unsigned B0D42 :1;
        unsigned B0D43 :1;
        unsigned B0D44 :1;
        unsigned B0D45 :1;
        unsigned B0D46 :1;
        unsigned B0D47 :1;
    };
} B0D4bits_t;
extern volatile B0D4bits_t B0D4bits __attribute__((address(0xE8A)));
# 7673 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B0D5 __attribute__((address(0xE8B)));

__asm("B0D5 equ 0E8Bh");


typedef union {
    struct {
        unsigned B0D5 :8;
    };
    struct {
        unsigned B0D50 :1;
        unsigned B0D51 :1;
        unsigned B0D52 :1;
        unsigned B0D53 :1;
        unsigned B0D54 :1;
        unsigned B0D55 :1;
        unsigned B0D56 :1;
        unsigned B0D57 :1;
    };
} B0D5bits_t;
extern volatile B0D5bits_t B0D5bits __attribute__((address(0xE8B)));
# 7743 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B0D6 __attribute__((address(0xE8C)));

__asm("B0D6 equ 0E8Ch");


typedef union {
    struct {
        unsigned B0D6 :8;
    };
    struct {
        unsigned B0D60 :1;
        unsigned B0D61 :1;
        unsigned B0D62 :1;
        unsigned B0D63 :1;
        unsigned B0D64 :1;
        unsigned B0D65 :1;
        unsigned B0D66 :1;
        unsigned B0D67 :1;
    };
} B0D6bits_t;
extern volatile B0D6bits_t B0D6bits __attribute__((address(0xE8C)));
# 7813 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B0D7 __attribute__((address(0xE8D)));

__asm("B0D7 equ 0E8Dh");


typedef union {
    struct {
        unsigned B0D7 :8;
    };
    struct {
        unsigned B0D70 :1;
        unsigned B0D71 :1;
        unsigned B0D72 :1;
        unsigned B0D73 :1;
        unsigned B0D74 :1;
        unsigned B0D75 :1;
        unsigned B0D76 :1;
        unsigned B0D77 :1;
    };
} B0D7bits_t;
extern volatile B0D7bits_t B0D7bits __attribute__((address(0xE8D)));
# 7883 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CANSTAT_RO9 __attribute__((address(0xE8E)));

__asm("CANSTAT_RO9 equ 0E8Eh");


typedef union {
    struct {
        unsigned EICODE0 :1;
        unsigned EICODE1_ICODE0 :1;
        unsigned EICODE2_ICODE1 :1;
        unsigned EICODE3_ICODE2 :1;
        unsigned EICODE4 :1;
        unsigned OPMODE :3;
    };
    struct {
        unsigned :1;
        unsigned EICODE1 :1;
        unsigned EICODE2 :1;
        unsigned EICODE3 :1;
        unsigned :1;
        unsigned OPMODE0 :1;
        unsigned OPMODE1 :1;
        unsigned OPMODE2 :1;
    };
    struct {
        unsigned :1;
        unsigned ICODE0 :1;
        unsigned ICODE1 :1;
        unsigned ICODE2 :1;
    };
} CANSTAT_RO9bits_t;
extern volatile CANSTAT_RO9bits_t CANSTAT_RO9bits __attribute__((address(0xE8E)));
# 7994 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CANCON_RO9 __attribute__((address(0xE8F)));

__asm("CANCON_RO9 equ 0E8Fh");


typedef union {
    struct {
        unsigned FP0 :1;
        unsigned WIN0_FP1 :1;
        unsigned WIN1_FP2 :1;
        unsigned WIN2_FP3 :1;
        unsigned ABAT :1;
        unsigned REQOP :3;
    };
    struct {
        unsigned :1;
        unsigned WIN0 :1;
        unsigned WIN1 :1;
        unsigned WIN2 :1;
    };
    struct {
        unsigned :1;
        unsigned FP1 :1;
        unsigned FP2 :1;
        unsigned FP3 :1;
    };
} CANCON_RO9bits_t;
extern volatile CANCON_RO9bits_t CANCON_RO9bits __attribute__((address(0xE8F)));
# 8086 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B1CON __attribute__((address(0xE90)));

__asm("B1CON equ 0E90h");


typedef union {
    struct {
        unsigned FILHIT0_TXPRI0 :1;
        unsigned FILHIT1_TXPRI1 :1;
        unsigned FILHIT2_RTREN :1;
        unsigned FILHIT3_TXREQ :1;
        unsigned FILHIT4_TXERR :1;
        unsigned RXRTRRO_TXLARB :1;
        unsigned RXM1_TXABT :1;
        unsigned RXFUL_TXBIF :1;
    };
    struct {
        unsigned FILHIT0 :1;
        unsigned FILHIT1 :1;
        unsigned FILHIT2 :1;
        unsigned FILHIT3 :1;
        unsigned FILHIT4 :1;
        unsigned RXRTRRO :1;
        unsigned RXM1 :1;
        unsigned RXFUL :1;
    };
    struct {
        unsigned TXPRI0 :1;
        unsigned TXPRI1 :1;
        unsigned RTREN :1;
        unsigned TXREQ :1;
        unsigned TXERR :1;
        unsigned TXLARB :1;
        unsigned TXABT :1;
        unsigned TXBIF :1;
    };
    struct {
        unsigned B1FILHIT0 :1;
        unsigned B1FILHIT1 :1;
        unsigned B1FILHIT2 :1;
        unsigned B1FILHIT3 :1;
        unsigned B1FILHIT4 :1;
        unsigned B1RTRRO :1;
        unsigned B1RXM1 :1;
        unsigned B1RXFUL :1;
    };
    struct {
        unsigned B1TXPRI0 :1;
        unsigned B1TXPRI1 :1;
        unsigned B1RTREN :1;
        unsigned B1TXREQ :1;
        unsigned B1TXERR :1;
        unsigned B1TXLARB :1;
        unsigned B1TXABT :1;
        unsigned B1TXB3IF :1;
    };
} B1CONbits_t;
extern volatile B1CONbits_t B1CONbits __attribute__((address(0xE90)));
# 8348 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B1SIDH __attribute__((address(0xE91)));

__asm("B1SIDH equ 0E91h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned B1SID3 :1;
        unsigned B1SID4 :1;
        unsigned B1SID5 :1;
        unsigned B1SID6 :1;
        unsigned B1SID7 :1;
        unsigned B1SID8 :1;
        unsigned B1SID9 :1;
        unsigned B1SID10 :1;
    };
} B1SIDHbits_t;
extern volatile B1SIDHbits_t B1SIDHbits __attribute__((address(0xE91)));
# 8468 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B1SIDL __attribute__((address(0xE92)));

__asm("B1SIDL equ 0E92h");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDE :1;
        unsigned SRR :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned B1EID16 :1;
        unsigned B1EID17 :1;
        unsigned :1;
        unsigned B1EXID :1;
        unsigned B1SRR :1;
        unsigned B1SID0 :1;
        unsigned B1SID1 :1;
        unsigned B1SID2 :1;
    };
} B1SIDLbits_t;
extern volatile B1SIDLbits_t B1SIDLbits __attribute__((address(0xE92)));
# 8585 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B1EIDH __attribute__((address(0xE93)));

__asm("B1EIDH equ 0E93h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned B1EID8 :1;
        unsigned B1EID9 :1;
        unsigned B1EID10 :1;
        unsigned B1EID11 :1;
        unsigned B1EID12 :1;
        unsigned B1EID13 :1;
        unsigned B1EID14 :1;
        unsigned B1EID15 :1;
    };
} B1EIDHbits_t;
extern volatile B1EIDHbits_t B1EIDHbits __attribute__((address(0xE93)));
# 8705 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B1EIDL __attribute__((address(0xE94)));

__asm("B1EIDL equ 0E94h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned B1EID0 :1;
        unsigned B1EID1 :1;
        unsigned B1EID2 :1;
        unsigned B1EID3 :1;
        unsigned B1EID4 :1;
        unsigned B1EID5 :1;
        unsigned B1EID6 :1;
        unsigned B1EID7 :1;
    };
} B1EIDLbits_t;
extern volatile B1EIDLbits_t B1EIDLbits __attribute__((address(0xE94)));
# 8825 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B1DLC __attribute__((address(0xE95)));

__asm("B1DLC equ 0E95h");


typedef union {
    struct {
        unsigned DLC :4;
        unsigned RB :2;
        unsigned RXRTR_TXRTR :1;
    };
    struct {
        unsigned DLC0 :1;
        unsigned DLC1 :1;
        unsigned DLC2 :1;
        unsigned DLC3 :1;
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RXRTR :1;
    };
    struct {
        unsigned :6;
        unsigned TXRTR :1;
    };
    struct {
        unsigned B1DLC0 :1;
        unsigned B1DLC1 :1;
        unsigned B1DLC2 :1;
        unsigned B1DLC3 :1;
        unsigned B1RB0 :1;
        unsigned B1RB1 :1;
        unsigned B1RXRTR :1;
    };
} B1DLCbits_t;
extern volatile B1DLCbits_t B1DLCbits __attribute__((address(0xE95)));
# 8954 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B1D0 __attribute__((address(0xE96)));

__asm("B1D0 equ 0E96h");


typedef union {
    struct {
        unsigned B1D0 :8;
    };
    struct {
        unsigned B1D00 :1;
        unsigned B1D01 :1;
        unsigned B1D02 :1;
        unsigned B1D03 :1;
        unsigned B1D04 :1;
        unsigned B1D05 :1;
        unsigned B1D06 :1;
        unsigned B1D07 :1;
    };
} B1D0bits_t;
extern volatile B1D0bits_t B1D0bits __attribute__((address(0xE96)));
# 9024 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B1D1 __attribute__((address(0xE97)));

__asm("B1D1 equ 0E97h");


typedef union {
    struct {
        unsigned B1D1 :8;
    };
    struct {
        unsigned B1D10 :1;
        unsigned B1D11 :1;
        unsigned B1D12 :1;
        unsigned B1D13 :1;
        unsigned B1D14 :1;
        unsigned B1D15 :1;
        unsigned B1D16 :1;
        unsigned B1D17 :1;
    };
} B1D1bits_t;
extern volatile B1D1bits_t B1D1bits __attribute__((address(0xE97)));
# 9094 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B1D2 __attribute__((address(0xE98)));

__asm("B1D2 equ 0E98h");


typedef union {
    struct {
        unsigned B1D2 :8;
    };
    struct {
        unsigned B1D20 :1;
        unsigned B1D21 :1;
        unsigned B1D22 :1;
        unsigned B1D23 :1;
        unsigned B1D24 :1;
        unsigned B1D25 :1;
        unsigned B1D26 :1;
        unsigned B1D27 :1;
    };
} B1D2bits_t;
extern volatile B1D2bits_t B1D2bits __attribute__((address(0xE98)));
# 9164 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B1D3 __attribute__((address(0xE99)));

__asm("B1D3 equ 0E99h");


typedef union {
    struct {
        unsigned B1D3 :8;
    };
    struct {
        unsigned B1D30 :1;
        unsigned B1D31 :1;
        unsigned B1D32 :1;
        unsigned B1D33 :1;
        unsigned B1D34 :1;
        unsigned B1D35 :1;
        unsigned B1D36 :1;
        unsigned B1D37 :1;
    };
} B1D3bits_t;
extern volatile B1D3bits_t B1D3bits __attribute__((address(0xE99)));
# 9234 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B1D4 __attribute__((address(0xE9A)));

__asm("B1D4 equ 0E9Ah");


typedef union {
    struct {
        unsigned B1D4 :8;
    };
    struct {
        unsigned B1D40 :1;
        unsigned B1D41 :1;
        unsigned B1D42 :1;
        unsigned B1D43 :1;
        unsigned B1D44 :1;
        unsigned B1D45 :1;
        unsigned B1D46 :1;
        unsigned B1D47 :1;
    };
} B1D4bits_t;
extern volatile B1D4bits_t B1D4bits __attribute__((address(0xE9A)));
# 9304 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B1D5 __attribute__((address(0xE9B)));

__asm("B1D5 equ 0E9Bh");


typedef union {
    struct {
        unsigned B1D5 :8;
    };
    struct {
        unsigned B1D50 :1;
        unsigned B1D51 :1;
        unsigned B1D52 :1;
        unsigned B1D53 :1;
        unsigned B1D54 :1;
        unsigned B1D55 :1;
        unsigned B1D56 :1;
        unsigned B1D57 :1;
    };
} B1D5bits_t;
extern volatile B1D5bits_t B1D5bits __attribute__((address(0xE9B)));
# 9374 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B1D6 __attribute__((address(0xE9C)));

__asm("B1D6 equ 0E9Ch");


typedef union {
    struct {
        unsigned B1D6 :8;
    };
    struct {
        unsigned B1D60 :1;
        unsigned B1D61 :1;
        unsigned B1D62 :1;
        unsigned B1D63 :1;
        unsigned B1D64 :1;
        unsigned B1D65 :1;
        unsigned B1D66 :1;
        unsigned B1D67 :1;
    };
} B1D6bits_t;
extern volatile B1D6bits_t B1D6bits __attribute__((address(0xE9C)));
# 9444 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B1D7 __attribute__((address(0xE9D)));

__asm("B1D7 equ 0E9Dh");


typedef union {
    struct {
        unsigned B1D7 :8;
    };
    struct {
        unsigned B1D70 :1;
        unsigned B1D71 :1;
        unsigned B1D72 :1;
        unsigned B1D73 :1;
        unsigned B1D74 :1;
        unsigned B1D75 :1;
        unsigned B1D76 :1;
        unsigned B1D77 :1;
    };
} B1D7bits_t;
extern volatile B1D7bits_t B1D7bits __attribute__((address(0xE9D)));
# 9514 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CANSTAT_RO8 __attribute__((address(0xE9E)));

__asm("CANSTAT_RO8 equ 0E9Eh");


typedef union {
    struct {
        unsigned EICODE0 :1;
        unsigned EICODE1_ICODE0 :1;
        unsigned EICODE2_ICODE1 :1;
        unsigned EICODE3_ICODE2 :1;
        unsigned EICODE4 :1;
        unsigned OPMODE :3;
    };
    struct {
        unsigned :1;
        unsigned EICODE1 :1;
        unsigned EICODE2 :1;
        unsigned EICODE3 :1;
        unsigned :1;
        unsigned OPMODE0 :1;
        unsigned OPMODE1 :1;
        unsigned OPMODE2 :1;
    };
    struct {
        unsigned :1;
        unsigned ICODE0 :1;
        unsigned ICODE1 :1;
        unsigned ICODE2 :1;
    };
} CANSTAT_RO8bits_t;
extern volatile CANSTAT_RO8bits_t CANSTAT_RO8bits __attribute__((address(0xE9E)));
# 9625 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CANCON_RO8 __attribute__((address(0xE9F)));

__asm("CANCON_RO8 equ 0E9Fh");


typedef union {
    struct {
        unsigned FP0 :1;
        unsigned WIN0_FP1 :1;
        unsigned WIN1_FP2 :1;
        unsigned WIN2_FP3 :1;
        unsigned ABAT :1;
        unsigned REQOP :3;
    };
    struct {
        unsigned :1;
        unsigned WIN0 :1;
        unsigned WIN1 :1;
        unsigned WIN2 :1;
    };
    struct {
        unsigned :1;
        unsigned FP1 :1;
        unsigned FP2 :1;
        unsigned FP3 :1;
    };
} CANCON_RO8bits_t;
extern volatile CANCON_RO8bits_t CANCON_RO8bits __attribute__((address(0xE9F)));
# 9717 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B2CON __attribute__((address(0xEA0)));

__asm("B2CON equ 0EA0h");


typedef union {
    struct {
        unsigned FILHIT0_TXPRI0 :1;
        unsigned FILHIT1_TXPRI1 :1;
        unsigned FILHIT2_RTREN :1;
        unsigned FILHIT3_TXREQ :1;
        unsigned FILHIT4_TXERR :1;
        unsigned RXRTRRO_TXLARB :1;
        unsigned RXM1_TXABT :1;
        unsigned RXFUL_TXBIF :1;
    };
    struct {
        unsigned FILHIT0 :1;
        unsigned FILHIT1 :1;
        unsigned FILHIT2 :1;
        unsigned FILHIT3 :1;
        unsigned FILHIT4 :1;
        unsigned RXRTRRO :1;
        unsigned RXM1 :1;
        unsigned RXFUL :1;
    };
    struct {
        unsigned TXPRI0 :1;
        unsigned TXPRI1 :1;
        unsigned RTREN :1;
        unsigned TXREQ :1;
        unsigned TXERR :1;
        unsigned TXLARB :1;
        unsigned TXABT :1;
        unsigned TXBIF :1;
    };
    struct {
        unsigned B2FILHIT0 :1;
        unsigned B2FILHIT1 :1;
        unsigned B2FILHIT2 :1;
        unsigned B2FILHIT3 :1;
        unsigned B2FILHIT4 :1;
        unsigned B2RTRRO :1;
        unsigned B2RXM1 :1;
        unsigned B2RXFUL :1;
    };
    struct {
        unsigned B2TXPRI0 :1;
        unsigned B2TXPRI1 :1;
        unsigned B2RTREN :1;
        unsigned B2TXREQ :1;
        unsigned B2TXERR :1;
        unsigned B2TXLARB :1;
        unsigned B2TXABT :1;
        unsigned B2TXB3IF :1;
    };
} B2CONbits_t;
extern volatile B2CONbits_t B2CONbits __attribute__((address(0xEA0)));
# 9979 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B2SIDH __attribute__((address(0xEA1)));

__asm("B2SIDH equ 0EA1h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned B2SID3 :1;
        unsigned B2SID4 :1;
        unsigned B2SID5 :1;
        unsigned B2SID6 :1;
        unsigned B2SID7 :1;
        unsigned B2SID8 :1;
        unsigned B2SID9 :1;
        unsigned B2SID10 :1;
    };
} B2SIDHbits_t;
extern volatile B2SIDHbits_t B2SIDHbits __attribute__((address(0xEA1)));
# 10099 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B2SIDL __attribute__((address(0xEA2)));

__asm("B2SIDL equ 0EA2h");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDE :1;
        unsigned SRR :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned B2EID16 :1;
        unsigned B2EID17 :1;
        unsigned :1;
        unsigned B2EXID :1;
        unsigned B2SRR :1;
        unsigned B2SID0 :1;
        unsigned B2SID1 :1;
        unsigned B2SID2 :1;
    };
    struct {
        unsigned :3;
        unsigned B2EXIDE :1;
    };
} B2SIDLbits_t;
extern volatile B2SIDLbits_t B2SIDLbits __attribute__((address(0xEA2)));
# 10225 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B2EIDH __attribute__((address(0xEA3)));

__asm("B2EIDH equ 0EA3h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned B2EID8 :1;
        unsigned B2EID9 :1;
        unsigned B2EID10 :1;
        unsigned B2EID11 :1;
        unsigned B2EID12 :1;
        unsigned B2EID13 :1;
        unsigned B2EID14 :1;
        unsigned B2EID15 :1;
    };
} B2EIDHbits_t;
extern volatile B2EIDHbits_t B2EIDHbits __attribute__((address(0xEA3)));
# 10345 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B2EIDL __attribute__((address(0xEA4)));

__asm("B2EIDL equ 0EA4h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned B2EID0 :1;
        unsigned B2EID1 :1;
        unsigned B2EID2 :1;
        unsigned B2EID3 :1;
        unsigned B2EID4 :1;
        unsigned B2EID5 :1;
        unsigned B2EID6 :1;
        unsigned B2EID7 :1;
    };
} B2EIDLbits_t;
extern volatile B2EIDLbits_t B2EIDLbits __attribute__((address(0xEA4)));
# 10465 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B2DLC __attribute__((address(0xEA5)));

__asm("B2DLC equ 0EA5h");


typedef union {
    struct {
        unsigned DLC :4;
        unsigned RB :2;
        unsigned RXRTR_TXRTR :1;
    };
    struct {
        unsigned DLC0 :1;
        unsigned DLC1 :1;
        unsigned DLC2 :1;
        unsigned DLC3 :1;
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RXRTR :1;
    };
    struct {
        unsigned :6;
        unsigned TXRTR :1;
    };
    struct {
        unsigned B2DLC0 :1;
        unsigned B2DLC1 :1;
        unsigned B2DLC2 :1;
        unsigned B2DLC3 :1;
        unsigned B2RB0 :1;
        unsigned B2RB1 :1;
        unsigned B2RXRTR :1;
    };
} B2DLCbits_t;
extern volatile B2DLCbits_t B2DLCbits __attribute__((address(0xEA5)));
# 10594 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B2D0 __attribute__((address(0xEA6)));

__asm("B2D0 equ 0EA6h");


typedef union {
    struct {
        unsigned B2D0 :8;
    };
    struct {
        unsigned B2D00 :1;
        unsigned B2D01 :1;
        unsigned B2D02 :1;
        unsigned B2D03 :1;
        unsigned B2D04 :1;
        unsigned B2D05 :1;
        unsigned B2D06 :1;
        unsigned B2D07 :1;
    };
} B2D0bits_t;
extern volatile B2D0bits_t B2D0bits __attribute__((address(0xEA6)));
# 10664 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B2D1 __attribute__((address(0xEA7)));

__asm("B2D1 equ 0EA7h");


typedef union {
    struct {
        unsigned B2D1 :8;
    };
    struct {
        unsigned B2D10 :1;
        unsigned B2D11 :1;
        unsigned B2D12 :1;
        unsigned B2D13 :1;
        unsigned B2D14 :1;
        unsigned B2D15 :1;
        unsigned B2D16 :1;
        unsigned B2D17 :1;
    };
} B2D1bits_t;
extern volatile B2D1bits_t B2D1bits __attribute__((address(0xEA7)));
# 10734 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B2D2 __attribute__((address(0xEA8)));

__asm("B2D2 equ 0EA8h");


typedef union {
    struct {
        unsigned B2D2 :8;
    };
    struct {
        unsigned B2D20 :1;
        unsigned B2D21 :1;
        unsigned B2D22 :1;
        unsigned B2D23 :1;
        unsigned B2D24 :1;
        unsigned B2D25 :1;
        unsigned B2D26 :1;
        unsigned B2D27 :1;
    };
} B2D2bits_t;
extern volatile B2D2bits_t B2D2bits __attribute__((address(0xEA8)));
# 10804 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B2D3 __attribute__((address(0xEA9)));

__asm("B2D3 equ 0EA9h");


typedef union {
    struct {
        unsigned B2D3 :8;
    };
    struct {
        unsigned B2D30 :1;
        unsigned B2D31 :1;
        unsigned B2D32 :1;
        unsigned B2D33 :1;
        unsigned B2D34 :1;
        unsigned B2D35 :1;
        unsigned B2D36 :1;
        unsigned B2D37 :1;
    };
} B2D3bits_t;
extern volatile B2D3bits_t B2D3bits __attribute__((address(0xEA9)));
# 10874 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B2D4 __attribute__((address(0xEAA)));

__asm("B2D4 equ 0EAAh");


typedef union {
    struct {
        unsigned B2D4 :8;
    };
    struct {
        unsigned B2D40 :1;
        unsigned B2D41 :1;
        unsigned B2D42 :1;
        unsigned B2D43 :1;
        unsigned B2D44 :1;
        unsigned B2D45 :1;
        unsigned B2D46 :1;
        unsigned B2D47 :1;
    };
} B2D4bits_t;
extern volatile B2D4bits_t B2D4bits __attribute__((address(0xEAA)));
# 10944 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B2D5 __attribute__((address(0xEAB)));

__asm("B2D5 equ 0EABh");


typedef union {
    struct {
        unsigned B2D5 :8;
    };
    struct {
        unsigned B2D50 :1;
        unsigned B2D51 :1;
        unsigned B2D52 :1;
        unsigned B2D53 :1;
        unsigned B2D54 :1;
        unsigned B2D55 :1;
        unsigned B2D56 :1;
        unsigned B2D57 :1;
    };
} B2D5bits_t;
extern volatile B2D5bits_t B2D5bits __attribute__((address(0xEAB)));
# 11014 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B2D6 __attribute__((address(0xEAC)));

__asm("B2D6 equ 0EACh");


typedef union {
    struct {
        unsigned B2D6 :8;
    };
    struct {
        unsigned B2D60 :1;
        unsigned B2D61 :1;
        unsigned B2D62 :1;
        unsigned B2D63 :1;
        unsigned B2D64 :1;
        unsigned B2D65 :1;
        unsigned B2D66 :1;
        unsigned B2D67 :1;
    };
} B2D6bits_t;
extern volatile B2D6bits_t B2D6bits __attribute__((address(0xEAC)));
# 11084 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B2D7 __attribute__((address(0xEAD)));

__asm("B2D7 equ 0EADh");


typedef union {
    struct {
        unsigned B2D7 :8;
    };
    struct {
        unsigned B2D70 :1;
        unsigned B2D71 :1;
        unsigned B2D72 :1;
        unsigned B2D73 :1;
        unsigned B2D74 :1;
        unsigned B2D75 :1;
        unsigned B2D76 :1;
        unsigned B2D77 :1;
    };
} B2D7bits_t;
extern volatile B2D7bits_t B2D7bits __attribute__((address(0xEAD)));
# 11154 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CANSTAT_RO7 __attribute__((address(0xEAE)));

__asm("CANSTAT_RO7 equ 0EAEh");


typedef union {
    struct {
        unsigned EICODE0 :1;
        unsigned EICODE1_ICODE0 :1;
        unsigned EICODE2_ICODE1 :1;
        unsigned EICODE3_ICODE2 :1;
        unsigned EICODE4 :1;
        unsigned OPMODE :3;
    };
    struct {
        unsigned :1;
        unsigned EICODE1 :1;
        unsigned EICODE2 :1;
        unsigned EICODE3 :1;
        unsigned :1;
        unsigned OPMODE0 :1;
        unsigned OPMODE1 :1;
        unsigned OPMODE2 :1;
    };
    struct {
        unsigned :1;
        unsigned ICODE0 :1;
        unsigned ICODE1 :1;
        unsigned ICODE2 :1;
    };
} CANSTAT_RO7bits_t;
extern volatile CANSTAT_RO7bits_t CANSTAT_RO7bits __attribute__((address(0xEAE)));
# 11265 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CANCON_RO7 __attribute__((address(0xEAF)));

__asm("CANCON_RO7 equ 0EAFh");


typedef union {
    struct {
        unsigned FP0 :1;
        unsigned WIN0_FP1 :1;
        unsigned WIN1_FP2 :1;
        unsigned WIN2_FP3 :1;
        unsigned ABAT :1;
        unsigned REQOP :3;
    };
    struct {
        unsigned :1;
        unsigned WIN0 :1;
        unsigned WIN1 :1;
        unsigned WIN2 :1;
    };
    struct {
        unsigned :1;
        unsigned FP1 :1;
        unsigned FP2 :1;
        unsigned FP3 :1;
    };
} CANCON_RO7bits_t;
extern volatile CANCON_RO7bits_t CANCON_RO7bits __attribute__((address(0xEAF)));
# 11357 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B3CON __attribute__((address(0xEB0)));

__asm("B3CON equ 0EB0h");


typedef union {
    struct {
        unsigned FILHIT0_TXPRI0 :1;
        unsigned FILHIT1_TXPRI1 :1;
        unsigned FILHIT2_RTREN :1;
        unsigned FILHIT3_TXREQ :1;
        unsigned FILHIT4_TXERR :1;
        unsigned RXRTRRO_TXLARB :1;
        unsigned RXM1_TXABT :1;
        unsigned RXFUL_TXBIF :1;
    };
    struct {
        unsigned FILHIT0 :1;
        unsigned FILHIT1 :1;
        unsigned FILHIT2 :1;
        unsigned FILHIT3 :1;
        unsigned FILHIT4 :1;
        unsigned RXRTRRO :1;
        unsigned RXM1 :1;
        unsigned RXFUL :1;
    };
    struct {
        unsigned TXPRI0 :1;
        unsigned TXPRI1 :1;
        unsigned RTREN :1;
        unsigned TXREQ :1;
        unsigned TXERR :1;
        unsigned TXLARB :1;
        unsigned TXABT :1;
        unsigned TXBIF :1;
    };
    struct {
        unsigned B3FILHIT0 :1;
        unsigned B3FILHIT1 :1;
        unsigned B3FILHIT2 :1;
        unsigned B3FILHIT3 :1;
        unsigned B3FILHIT4 :1;
        unsigned B3RTRRO :1;
        unsigned B3RXM1 :1;
        unsigned B3RXFUL :1;
    };
    struct {
        unsigned B3TXPRI0 :1;
        unsigned B3TXPRI1 :1;
        unsigned B3RTREN :1;
        unsigned B3TXREQ :1;
        unsigned B3TXERR :1;
        unsigned B3TXLARB :1;
        unsigned B3TXABT :1;
        unsigned B3TXB3IF :1;
    };
} B3CONbits_t;
extern volatile B3CONbits_t B3CONbits __attribute__((address(0xEB0)));
# 11619 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B3SIDH __attribute__((address(0xEB1)));

__asm("B3SIDH equ 0EB1h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned B3SID3 :1;
        unsigned B3SID4 :1;
        unsigned B3SID5 :1;
        unsigned B3SID6 :1;
        unsigned B3SID7 :1;
        unsigned B3SID8 :1;
        unsigned B3SID9 :1;
        unsigned B3SID10 :1;
    };
} B3SIDHbits_t;
extern volatile B3SIDHbits_t B3SIDHbits __attribute__((address(0xEB1)));
# 11739 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B3SIDL __attribute__((address(0xEB2)));

__asm("B3SIDL equ 0EB2h");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDE :1;
        unsigned SRR :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned B3EID16 :1;
        unsigned B3EID17 :1;
        unsigned :1;
        unsigned B3EXID :1;
        unsigned B3SRR :1;
        unsigned B3SID0 :1;
        unsigned B3SID1 :1;
        unsigned B3SID2 :1;
    };
    struct {
        unsigned :3;
        unsigned B3EXIDE :1;
    };
} B3SIDLbits_t;
extern volatile B3SIDLbits_t B3SIDLbits __attribute__((address(0xEB2)));
# 11865 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B3EIDH __attribute__((address(0xEB3)));

__asm("B3EIDH equ 0EB3h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned B3EID8 :1;
        unsigned B3EID9 :1;
        unsigned B3EID10 :1;
        unsigned B3EID11 :1;
        unsigned B3EID12 :1;
        unsigned B3EID13 :1;
        unsigned B3EID14 :1;
        unsigned B3EID15 :1;
    };
} B3EIDHbits_t;
extern volatile B3EIDHbits_t B3EIDHbits __attribute__((address(0xEB3)));
# 11985 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B3EIDL __attribute__((address(0xEB4)));

__asm("B3EIDL equ 0EB4h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned B3EID0 :1;
        unsigned B3EID1 :1;
        unsigned B3EID2 :1;
        unsigned B3EID3 :1;
        unsigned B3EID4 :1;
        unsigned B3EID5 :1;
        unsigned B3EID6 :1;
        unsigned B3EID7 :1;
    };
} B3EIDLbits_t;
extern volatile B3EIDLbits_t B3EIDLbits __attribute__((address(0xEB4)));
# 12105 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B3DLC __attribute__((address(0xEB5)));

__asm("B3DLC equ 0EB5h");


typedef union {
    struct {
        unsigned DLC :4;
        unsigned RB :2;
        unsigned RXRTR_TXRTR :1;
    };
    struct {
        unsigned DLC0 :1;
        unsigned DLC1 :1;
        unsigned DLC2 :1;
        unsigned DLC3 :1;
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RXRTR :1;
    };
    struct {
        unsigned :6;
        unsigned TXRTR :1;
    };
    struct {
        unsigned B3DLC0 :1;
        unsigned B3DLC1 :1;
        unsigned B3DLC2 :1;
        unsigned B3DLC3 :1;
        unsigned B3RB0 :1;
        unsigned B3RB1 :1;
        unsigned B3RXRTR :1;
    };
} B3DLCbits_t;
extern volatile B3DLCbits_t B3DLCbits __attribute__((address(0xEB5)));
# 12234 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B3D0 __attribute__((address(0xEB6)));

__asm("B3D0 equ 0EB6h");


typedef union {
    struct {
        unsigned B3D0 :8;
    };
    struct {
        unsigned B3D00 :1;
        unsigned B3D01 :1;
        unsigned B3D02 :1;
        unsigned B3D03 :1;
        unsigned B3D04 :1;
        unsigned B3D05 :1;
        unsigned B3D06 :1;
        unsigned B3D07 :1;
    };
} B3D0bits_t;
extern volatile B3D0bits_t B3D0bits __attribute__((address(0xEB6)));
# 12304 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B3D1 __attribute__((address(0xEB7)));

__asm("B3D1 equ 0EB7h");


typedef union {
    struct {
        unsigned B3D1 :8;
    };
    struct {
        unsigned B3D10 :1;
        unsigned B3D11 :1;
        unsigned B3D12 :1;
        unsigned B3D13 :1;
        unsigned B3D14 :1;
        unsigned B3D15 :1;
        unsigned B3D16 :1;
        unsigned B3D17 :1;
    };
} B3D1bits_t;
extern volatile B3D1bits_t B3D1bits __attribute__((address(0xEB7)));
# 12374 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B3D2 __attribute__((address(0xEB8)));

__asm("B3D2 equ 0EB8h");


typedef union {
    struct {
        unsigned B3D2 :8;
    };
    struct {
        unsigned B3D20 :1;
        unsigned B3D21 :1;
        unsigned B3D22 :1;
        unsigned B3D23 :1;
        unsigned B3D24 :1;
        unsigned B3D25 :1;
        unsigned B3D26 :1;
        unsigned B3D27 :1;
    };
} B3D2bits_t;
extern volatile B3D2bits_t B3D2bits __attribute__((address(0xEB8)));
# 12444 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B3D3 __attribute__((address(0xEB9)));

__asm("B3D3 equ 0EB9h");


typedef union {
    struct {
        unsigned B3D3 :8;
    };
    struct {
        unsigned B3D30 :1;
        unsigned B3D31 :1;
        unsigned B3D32 :1;
        unsigned B3D33 :1;
        unsigned B3D34 :1;
        unsigned B3D35 :1;
        unsigned B3D36 :1;
        unsigned B3D37 :1;
    };
} B3D3bits_t;
extern volatile B3D3bits_t B3D3bits __attribute__((address(0xEB9)));
# 12514 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B3D4 __attribute__((address(0xEBA)));

__asm("B3D4 equ 0EBAh");


typedef union {
    struct {
        unsigned B3D4 :8;
    };
    struct {
        unsigned B3D40 :1;
        unsigned B3D41 :1;
        unsigned B3D42 :1;
        unsigned B3D43 :1;
        unsigned B3D44 :1;
        unsigned B3D45 :1;
        unsigned B3D46 :1;
        unsigned B3D47 :1;
    };
} B3D4bits_t;
extern volatile B3D4bits_t B3D4bits __attribute__((address(0xEBA)));
# 12584 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B3D5 __attribute__((address(0xEBB)));

__asm("B3D5 equ 0EBBh");


typedef union {
    struct {
        unsigned B3D5 :8;
    };
    struct {
        unsigned B3D50 :1;
        unsigned B3D51 :1;
        unsigned B3D52 :1;
        unsigned B3D53 :1;
        unsigned B3D54 :1;
        unsigned B3D55 :1;
        unsigned B3D56 :1;
        unsigned B3D57 :1;
    };
} B3D5bits_t;
extern volatile B3D5bits_t B3D5bits __attribute__((address(0xEBB)));
# 12654 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B3D6 __attribute__((address(0xEBC)));

__asm("B3D6 equ 0EBCh");


typedef union {
    struct {
        unsigned B3D6 :8;
    };
    struct {
        unsigned B3D60 :1;
        unsigned B3D61 :1;
        unsigned B3D62 :1;
        unsigned B3D63 :1;
        unsigned B3D64 :1;
        unsigned B3D65 :1;
        unsigned B3D66 :1;
        unsigned B3D67 :1;
    };
} B3D6bits_t;
extern volatile B3D6bits_t B3D6bits __attribute__((address(0xEBC)));
# 12724 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B3D7 __attribute__((address(0xEBD)));

__asm("B3D7 equ 0EBDh");


typedef union {
    struct {
        unsigned B3D7 :8;
    };
    struct {
        unsigned B3D70 :1;
        unsigned B3D71 :1;
        unsigned B3D72 :1;
        unsigned B3D73 :1;
        unsigned B3D74 :1;
        unsigned B3D75 :1;
        unsigned B3D76 :1;
        unsigned B3D77 :1;
    };
} B3D7bits_t;
extern volatile B3D7bits_t B3D7bits __attribute__((address(0xEBD)));
# 12794 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CANSTAT_RO6 __attribute__((address(0xEBE)));

__asm("CANSTAT_RO6 equ 0EBEh");


typedef union {
    struct {
        unsigned EICODE0 :1;
        unsigned EICODE1_ICODE0 :1;
        unsigned EICODE2_ICODE1 :1;
        unsigned EICODE3_ICODE2 :1;
        unsigned EICODE4 :1;
        unsigned OPMODE :3;
    };
    struct {
        unsigned :1;
        unsigned EICODE1 :1;
        unsigned EICODE2 :1;
        unsigned EICODE3 :1;
        unsigned :1;
        unsigned OPMODE0 :1;
        unsigned OPMODE1 :1;
        unsigned OPMODE2 :1;
    };
    struct {
        unsigned :1;
        unsigned ICODE0 :1;
        unsigned ICODE1 :1;
        unsigned ICODE2 :1;
    };
} CANSTAT_RO6bits_t;
extern volatile CANSTAT_RO6bits_t CANSTAT_RO6bits __attribute__((address(0xEBE)));
# 12905 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CANCON_RO6 __attribute__((address(0xEBF)));

__asm("CANCON_RO6 equ 0EBFh");


typedef union {
    struct {
        unsigned FP0 :1;
        unsigned WIN0_FP1 :1;
        unsigned WIN1_FP2 :1;
        unsigned WIN2_FP3 :1;
        unsigned ABAT :1;
        unsigned REQOP :3;
    };
    struct {
        unsigned :1;
        unsigned WIN0 :1;
        unsigned WIN1 :1;
        unsigned WIN2 :1;
    };
    struct {
        unsigned :1;
        unsigned FP1 :1;
        unsigned FP2 :1;
        unsigned FP3 :1;
    };
} CANCON_RO6bits_t;
extern volatile CANCON_RO6bits_t CANCON_RO6bits __attribute__((address(0xEBF)));
# 12997 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B4CON __attribute__((address(0xEC0)));

__asm("B4CON equ 0EC0h");


typedef union {
    struct {
        unsigned FILHIT0_TXPRI0 :1;
        unsigned FILHIT1_TXPRI1 :1;
        unsigned FILHIT2_RTREN :1;
        unsigned FILHIT3_TXREQ :1;
        unsigned FILHIT4_TXERR :1;
        unsigned RXRTRRO_TXLARB :1;
        unsigned RXM1_TXABT :1;
        unsigned RXFUL_TXBIF :1;
    };
    struct {
        unsigned FILHIT0 :1;
        unsigned FILHIT1 :1;
        unsigned FILHIT2 :1;
        unsigned FILHIT3 :1;
        unsigned FILHIT4 :1;
        unsigned RXRTRRO :1;
        unsigned RXM1 :1;
        unsigned RXFUL :1;
    };
    struct {
        unsigned TXPRI0 :1;
        unsigned TXPRI1 :1;
        unsigned RTREN :1;
        unsigned TXREQ :1;
        unsigned TXERR :1;
        unsigned TXLARB :1;
        unsigned TXABT :1;
        unsigned TXBIF :1;
    };
    struct {
        unsigned B4FILHIT0 :1;
        unsigned B4FILHIT1 :1;
        unsigned B4FILHIT2 :1;
        unsigned B4FILHIT3 :1;
        unsigned B4FILHIT4 :1;
        unsigned B4RTRRO :1;
        unsigned B4RXM1 :1;
        unsigned B4RXFUL :1;
    };
    struct {
        unsigned B4TXPRI0 :1;
        unsigned B4TXPRI1 :1;
        unsigned B4RTREN :1;
        unsigned B4TXREQ :1;
        unsigned B4TXERR :1;
        unsigned B4TXLARB :1;
        unsigned B4TXABT :1;
        unsigned B4TXB3IF :1;
    };
} B4CONbits_t;
extern volatile B4CONbits_t B4CONbits __attribute__((address(0xEC0)));
# 13259 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B4SIDH __attribute__((address(0xEC1)));

__asm("B4SIDH equ 0EC1h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned B4SID3 :1;
        unsigned B4SID4 :1;
        unsigned B4SID5 :1;
        unsigned B4SID6 :1;
        unsigned B4SID7 :1;
        unsigned B4SID8 :1;
        unsigned B4SID9 :1;
        unsigned B4SID10 :1;
    };
} B4SIDHbits_t;
extern volatile B4SIDHbits_t B4SIDHbits __attribute__((address(0xEC1)));
# 13379 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B4SIDL __attribute__((address(0xEC2)));

__asm("B4SIDL equ 0EC2h");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDE :1;
        unsigned SRR :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned B4EID16 :1;
        unsigned B4EID17 :1;
        unsigned :1;
        unsigned B4EXID :1;
        unsigned B4SRR :1;
        unsigned B4SID0 :1;
        unsigned B4SID1 :1;
        unsigned B4SID2 :1;
    };
    struct {
        unsigned :3;
        unsigned B4EXIDE :1;
    };
} B4SIDLbits_t;
extern volatile B4SIDLbits_t B4SIDLbits __attribute__((address(0xEC2)));
# 13505 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B4EIDH __attribute__((address(0xEC3)));

__asm("B4EIDH equ 0EC3h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned B4EID8 :1;
        unsigned B4EID9 :1;
        unsigned B4EID10 :1;
        unsigned B4EID11 :1;
        unsigned B4EID12 :1;
        unsigned B4EID13 :1;
        unsigned B4EID14 :1;
        unsigned B4EID15 :1;
    };
} B4EIDHbits_t;
extern volatile B4EIDHbits_t B4EIDHbits __attribute__((address(0xEC3)));
# 13625 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B4EIDL __attribute__((address(0xEC4)));

__asm("B4EIDL equ 0EC4h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned B4EID0 :1;
        unsigned B4EID1 :1;
        unsigned B4EID2 :1;
        unsigned B4EID3 :1;
        unsigned B4EID4 :1;
        unsigned B4EID5 :1;
        unsigned B4EID6 :1;
        unsigned B4EID7 :1;
    };
} B4EIDLbits_t;
extern volatile B4EIDLbits_t B4EIDLbits __attribute__((address(0xEC4)));
# 13745 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B4DLC __attribute__((address(0xEC5)));

__asm("B4DLC equ 0EC5h");


typedef union {
    struct {
        unsigned DLC :4;
        unsigned RB :2;
        unsigned RXRTR_TXRTR :1;
    };
    struct {
        unsigned DLC0 :1;
        unsigned DLC1 :1;
        unsigned DLC2 :1;
        unsigned DLC3 :1;
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RXRTR :1;
    };
    struct {
        unsigned :6;
        unsigned TXRTR :1;
    };
    struct {
        unsigned B4DLC0 :1;
        unsigned B4DLC1 :1;
        unsigned B4DLC2 :1;
        unsigned B4DLC3 :1;
        unsigned B4RB0 :1;
        unsigned B4RB1 :1;
        unsigned B4RXRTR :1;
    };
} B4DLCbits_t;
extern volatile B4DLCbits_t B4DLCbits __attribute__((address(0xEC5)));
# 13874 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B4D0 __attribute__((address(0xEC6)));

__asm("B4D0 equ 0EC6h");


typedef union {
    struct {
        unsigned B4D0 :8;
    };
    struct {
        unsigned B4D00 :1;
        unsigned B4D01 :1;
        unsigned B4D02 :1;
        unsigned B4D03 :1;
        unsigned B4D04 :1;
        unsigned B4D05 :1;
        unsigned B4D06 :1;
        unsigned B4D07 :1;
    };
} B4D0bits_t;
extern volatile B4D0bits_t B4D0bits __attribute__((address(0xEC6)));
# 13944 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B4D1 __attribute__((address(0xEC7)));

__asm("B4D1 equ 0EC7h");


typedef union {
    struct {
        unsigned B4D1 :8;
    };
    struct {
        unsigned B4D10 :1;
        unsigned B4D11 :1;
        unsigned B4D12 :1;
        unsigned B4D13 :1;
        unsigned B4D14 :1;
        unsigned B4D15 :1;
        unsigned B4D16 :1;
        unsigned B4D17 :1;
    };
} B4D1bits_t;
extern volatile B4D1bits_t B4D1bits __attribute__((address(0xEC7)));
# 14014 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B4D2 __attribute__((address(0xEC8)));

__asm("B4D2 equ 0EC8h");


typedef union {
    struct {
        unsigned B4D2 :8;
    };
    struct {
        unsigned B4D20 :1;
        unsigned B4D21 :1;
        unsigned B4D22 :1;
        unsigned B4D23 :1;
        unsigned B4D24 :1;
        unsigned B4D25 :1;
        unsigned B4D26 :1;
        unsigned B4D27 :1;
    };
} B4D2bits_t;
extern volatile B4D2bits_t B4D2bits __attribute__((address(0xEC8)));
# 14084 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B4D3 __attribute__((address(0xEC9)));

__asm("B4D3 equ 0EC9h");


typedef union {
    struct {
        unsigned B4D3 :8;
    };
    struct {
        unsigned B4D30 :1;
        unsigned B4D31 :1;
        unsigned B4D32 :1;
        unsigned B4D33 :1;
        unsigned B4D34 :1;
        unsigned B4D35 :1;
        unsigned B4D36 :1;
        unsigned B4D37 :1;
    };
} B4D3bits_t;
extern volatile B4D3bits_t B4D3bits __attribute__((address(0xEC9)));
# 14154 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B4D4 __attribute__((address(0xECA)));

__asm("B4D4 equ 0ECAh");


typedef union {
    struct {
        unsigned B4D4 :8;
    };
    struct {
        unsigned B4D40 :1;
        unsigned B4D41 :1;
        unsigned B4D42 :1;
        unsigned B4D43 :1;
        unsigned B4D44 :1;
        unsigned B4D45 :1;
        unsigned B4D46 :1;
        unsigned B4D47 :1;
    };
} B4D4bits_t;
extern volatile B4D4bits_t B4D4bits __attribute__((address(0xECA)));
# 14224 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B4D5 __attribute__((address(0xECB)));

__asm("B4D5 equ 0ECBh");


typedef union {
    struct {
        unsigned B4D5 :8;
    };
    struct {
        unsigned B4D50 :1;
        unsigned B4D51 :1;
        unsigned B4D52 :1;
        unsigned B4D53 :1;
        unsigned B4D54 :1;
        unsigned B4D55 :1;
        unsigned B4D56 :1;
        unsigned B4D57 :1;
    };
} B4D5bits_t;
extern volatile B4D5bits_t B4D5bits __attribute__((address(0xECB)));
# 14294 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B4D6 __attribute__((address(0xECC)));

__asm("B4D6 equ 0ECCh");


typedef union {
    struct {
        unsigned B4D6 :8;
    };
    struct {
        unsigned B4D60 :1;
        unsigned B4D61 :1;
        unsigned B4D62 :1;
        unsigned B4D63 :1;
        unsigned B4D64 :1;
        unsigned B4D65 :1;
        unsigned B4D66 :1;
        unsigned B4D67 :1;
    };
} B4D6bits_t;
extern volatile B4D6bits_t B4D6bits __attribute__((address(0xECC)));
# 14364 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B4D7 __attribute__((address(0xECD)));

__asm("B4D7 equ 0ECDh");


typedef union {
    struct {
        unsigned B4D7 :8;
    };
    struct {
        unsigned B4D70 :1;
        unsigned B4D71 :1;
        unsigned B4D72 :1;
        unsigned B4D73 :1;
        unsigned B4D74 :1;
        unsigned B4D75 :1;
        unsigned B4D76 :1;
        unsigned B4D77 :1;
    };
} B4D7bits_t;
extern volatile B4D7bits_t B4D7bits __attribute__((address(0xECD)));
# 14434 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CANSTAT_RO5 __attribute__((address(0xECE)));

__asm("CANSTAT_RO5 equ 0ECEh");


typedef union {
    struct {
        unsigned EICODE0 :1;
        unsigned EICODE1_ICODE0 :1;
        unsigned EICODE2_ICODE1 :1;
        unsigned EICODE3_ICODE2 :1;
        unsigned EICODE4 :1;
        unsigned OPMODE :3;
    };
    struct {
        unsigned :1;
        unsigned EICODE1 :1;
        unsigned EICODE2 :1;
        unsigned EICODE3 :1;
        unsigned :1;
        unsigned OPMODE0 :1;
        unsigned OPMODE1 :1;
        unsigned OPMODE2 :1;
    };
    struct {
        unsigned :1;
        unsigned ICODE0 :1;
        unsigned ICODE1 :1;
        unsigned ICODE2 :1;
    };
} CANSTAT_RO5bits_t;
extern volatile CANSTAT_RO5bits_t CANSTAT_RO5bits __attribute__((address(0xECE)));
# 14545 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CANCON_RO5 __attribute__((address(0xECF)));

__asm("CANCON_RO5 equ 0ECFh");


typedef union {
    struct {
        unsigned FP0 :1;
        unsigned WIN0_FP1 :1;
        unsigned WIN1_FP2 :1;
        unsigned WIN2_FP3 :1;
        unsigned ABAT :1;
        unsigned REQOP :3;
    };
    struct {
        unsigned :1;
        unsigned WIN0 :1;
        unsigned WIN1 :1;
        unsigned WIN2 :1;
    };
    struct {
        unsigned :1;
        unsigned FP1 :1;
        unsigned FP2 :1;
        unsigned FP3 :1;
    };
} CANCON_RO5bits_t;
extern volatile CANCON_RO5bits_t CANCON_RO5bits __attribute__((address(0xECF)));
# 14637 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B5CON __attribute__((address(0xED0)));

__asm("B5CON equ 0ED0h");


typedef union {
    struct {
        unsigned FILHIT0_TXPRI0 :1;
        unsigned FILHIT1_TXPRI1 :1;
        unsigned FILHIT2_RTREN :1;
        unsigned FILHIT3_TXREQ :1;
        unsigned FILHIT4_TXERR :1;
        unsigned RXRTRRO_TXLARB :1;
        unsigned RXM1_TXABT :1;
        unsigned RXFUL_TXBIF :1;
    };
    struct {
        unsigned FILHIT0 :1;
        unsigned FILHIT1 :1;
        unsigned FILHIT2 :1;
        unsigned FILHIT3 :1;
        unsigned FILHIT4 :1;
        unsigned RXRTRRO :1;
        unsigned RXM1 :1;
        unsigned RXFUL :1;
    };
    struct {
        unsigned TXPRI0 :1;
        unsigned TXPRI1 :1;
        unsigned RTREN :1;
        unsigned TXREQ :1;
        unsigned TXERR :1;
        unsigned TXLARB :1;
        unsigned TXABT :1;
        unsigned TXBIF :1;
    };
    struct {
        unsigned B5FILHIT0 :1;
        unsigned B5FILHIT1 :1;
        unsigned B5FILHIT2 :1;
        unsigned B5FILHIT3 :1;
        unsigned B5FILHIT4 :1;
        unsigned B5RTRRO :1;
        unsigned B5RXM1 :1;
        unsigned B5RXFUL :1;
    };
    struct {
        unsigned B5TXPRI0 :1;
        unsigned B5TXPRI1 :1;
        unsigned B5RTREN :1;
        unsigned B5TXREQ :1;
        unsigned B5TXERR :1;
        unsigned B5TXLARB :1;
        unsigned B5TXABT :1;
        unsigned B5TXBIF :1;
    };
} B5CONbits_t;
extern volatile B5CONbits_t B5CONbits __attribute__((address(0xED0)));
# 14899 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B5SIDH __attribute__((address(0xED1)));

__asm("B5SIDH equ 0ED1h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned B5SID3 :1;
        unsigned B5SID4 :1;
        unsigned B5SID5 :1;
        unsigned B5SID6 :1;
        unsigned B5SID7 :1;
        unsigned B5SID8 :1;
        unsigned B5SID9 :1;
        unsigned B5SID10 :1;
    };
} B5SIDHbits_t;
extern volatile B5SIDHbits_t B5SIDHbits __attribute__((address(0xED1)));
# 15019 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B5SIDL __attribute__((address(0xED2)));

__asm("B5SIDL equ 0ED2h");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDE :1;
        unsigned SRR :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned B5EID16 :1;
        unsigned B5EID17 :1;
        unsigned :1;
        unsigned B5EXID :1;
        unsigned B5SRR :1;
        unsigned B5SID0 :1;
        unsigned B5SID1 :1;
        unsigned B5SID2 :1;
    };
    struct {
        unsigned :3;
        unsigned B5EXIDE :1;
    };
} B5SIDLbits_t;
extern volatile B5SIDLbits_t B5SIDLbits __attribute__((address(0xED2)));
# 15145 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B5EIDH __attribute__((address(0xED3)));

__asm("B5EIDH equ 0ED3h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned B5EID8 :1;
        unsigned B5EID9 :1;
        unsigned B5EID10 :1;
        unsigned B5EID11 :1;
        unsigned B5EID12 :1;
        unsigned B5EID13 :1;
        unsigned B5EID14 :1;
        unsigned B5EID15 :1;
    };
} B5EIDHbits_t;
extern volatile B5EIDHbits_t B5EIDHbits __attribute__((address(0xED3)));
# 15265 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B5EIDL __attribute__((address(0xED4)));

__asm("B5EIDL equ 0ED4h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned B5EID0 :1;
        unsigned B5EID1 :1;
        unsigned B5EID2 :1;
        unsigned B5EID3 :1;
        unsigned B5EID4 :1;
        unsigned B5EID5 :1;
        unsigned B5EID6 :1;
        unsigned B5EID7 :1;
    };
} B5EIDLbits_t;
extern volatile B5EIDLbits_t B5EIDLbits __attribute__((address(0xED4)));
# 15385 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B5DLC __attribute__((address(0xED5)));

__asm("B5DLC equ 0ED5h");


typedef union {
    struct {
        unsigned DLC :4;
        unsigned RB :2;
        unsigned RXRTR_TXRTR :1;
    };
    struct {
        unsigned DLC0 :1;
        unsigned DLC1 :1;
        unsigned DLC2 :1;
        unsigned DLC3 :1;
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RXRTR :1;
    };
    struct {
        unsigned :6;
        unsigned TXRTR :1;
    };
    struct {
        unsigned B5DLC0 :1;
        unsigned B5DLC1 :1;
        unsigned B5DLC2 :1;
        unsigned B5DLC3 :1;
        unsigned B5RB0 :1;
        unsigned B5RB1 :1;
        unsigned B5RXRTR :1;
    };
} B5DLCbits_t;
extern volatile B5DLCbits_t B5DLCbits __attribute__((address(0xED5)));
# 15514 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B5D0 __attribute__((address(0xED6)));

__asm("B5D0 equ 0ED6h");


typedef union {
    struct {
        unsigned B5D0 :8;
    };
    struct {
        unsigned B5D00 :1;
        unsigned B5D01 :1;
        unsigned B5D02 :1;
        unsigned B5D03 :1;
        unsigned B5D04 :1;
        unsigned B5D05 :1;
        unsigned B5D06 :1;
        unsigned B5D07 :1;
    };
} B5D0bits_t;
extern volatile B5D0bits_t B5D0bits __attribute__((address(0xED6)));
# 15584 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B5D1 __attribute__((address(0xED7)));

__asm("B5D1 equ 0ED7h");


typedef union {
    struct {
        unsigned B5D1 :8;
    };
    struct {
        unsigned B5D10 :1;
        unsigned B5D11 :1;
        unsigned B5D12 :1;
        unsigned B5D13 :1;
        unsigned B5D14 :1;
        unsigned B5D15 :1;
        unsigned B5D16 :1;
        unsigned B5D17 :1;
    };
} B5D1bits_t;
extern volatile B5D1bits_t B5D1bits __attribute__((address(0xED7)));
# 15654 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B5D2 __attribute__((address(0xED8)));

__asm("B5D2 equ 0ED8h");


typedef union {
    struct {
        unsigned B5D2 :8;
    };
    struct {
        unsigned B5D20 :1;
        unsigned B5D21 :1;
        unsigned B5D22 :1;
        unsigned B5D23 :1;
        unsigned B5D24 :1;
        unsigned B5D25 :1;
        unsigned B5D26 :1;
        unsigned B5D27 :1;
    };
} B5D2bits_t;
extern volatile B5D2bits_t B5D2bits __attribute__((address(0xED8)));
# 15724 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B5D3 __attribute__((address(0xED9)));

__asm("B5D3 equ 0ED9h");


typedef union {
    struct {
        unsigned B5D3 :8;
    };
    struct {
        unsigned B5D30 :1;
        unsigned B5D31 :1;
        unsigned B5D32 :1;
        unsigned B5D33 :1;
        unsigned B5D34 :1;
        unsigned B5D35 :1;
        unsigned B5D36 :1;
        unsigned B5D37 :1;
    };
} B5D3bits_t;
extern volatile B5D3bits_t B5D3bits __attribute__((address(0xED9)));
# 15794 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B5D4 __attribute__((address(0xEDA)));

__asm("B5D4 equ 0EDAh");


typedef union {
    struct {
        unsigned B5D4 :8;
    };
    struct {
        unsigned B5D40 :1;
        unsigned B5D41 :1;
        unsigned B5D42 :1;
        unsigned B5D43 :1;
        unsigned B5D44 :1;
        unsigned B5D45 :1;
        unsigned B5D46 :1;
        unsigned B5D47 :1;
    };
} B5D4bits_t;
extern volatile B5D4bits_t B5D4bits __attribute__((address(0xEDA)));
# 15864 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B5D5 __attribute__((address(0xEDB)));

__asm("B5D5 equ 0EDBh");


typedef union {
    struct {
        unsigned B5D5 :8;
    };
    struct {
        unsigned B5D50 :1;
        unsigned B5D51 :1;
        unsigned B5D52 :1;
        unsigned B5D53 :1;
        unsigned B5D54 :1;
        unsigned B5D55 :1;
        unsigned B5D56 :1;
        unsigned B5D57 :1;
    };
} B5D5bits_t;
extern volatile B5D5bits_t B5D5bits __attribute__((address(0xEDB)));
# 15934 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B5D6 __attribute__((address(0xEDC)));

__asm("B5D6 equ 0EDCh");


typedef union {
    struct {
        unsigned B5D6 :8;
    };
    struct {
        unsigned B5D60 :1;
        unsigned B5D61 :1;
        unsigned B5D62 :1;
        unsigned B5D63 :1;
        unsigned B5D64 :1;
        unsigned B5D65 :1;
        unsigned B5D66 :1;
        unsigned B5D67 :1;
    };
} B5D6bits_t;
extern volatile B5D6bits_t B5D6bits __attribute__((address(0xEDC)));
# 16004 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char B5D7 __attribute__((address(0xEDD)));

__asm("B5D7 equ 0EDDh");


typedef union {
    struct {
        unsigned B5D7 :8;
    };
    struct {
        unsigned B5D70 :1;
        unsigned B5D71 :1;
        unsigned B5D72 :1;
        unsigned B5D73 :1;
        unsigned B5D74 :1;
        unsigned B5D75 :1;
        unsigned B5D76 :1;
        unsigned B5D77 :1;
    };
} B5D7bits_t;
extern volatile B5D7bits_t B5D7bits __attribute__((address(0xEDD)));
# 16074 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CANSTAT_RO4 __attribute__((address(0xEDE)));

__asm("CANSTAT_RO4 equ 0EDEh");


typedef union {
    struct {
        unsigned EICODE0 :1;
        unsigned EICODE1_ICODE0 :1;
        unsigned EICODE2_ICODE1 :1;
        unsigned EICODE3_ICODE2 :1;
        unsigned EICODE4 :1;
        unsigned OPMODE :3;
    };
    struct {
        unsigned :1;
        unsigned EICODE1 :1;
        unsigned EICODE2 :1;
        unsigned EICODE3 :1;
        unsigned :1;
        unsigned OPMODE0 :1;
        unsigned OPMODE1 :1;
        unsigned OPMODE2 :1;
    };
    struct {
        unsigned :1;
        unsigned ICODE0 :1;
        unsigned ICODE1 :1;
        unsigned ICODE2 :1;
    };
} CANSTAT_RO4bits_t;
extern volatile CANSTAT_RO4bits_t CANSTAT_RO4bits __attribute__((address(0xEDE)));
# 16185 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CANCON_RO4 __attribute__((address(0xEDF)));

__asm("CANCON_RO4 equ 0EDFh");


typedef union {
    struct {
        unsigned FP0 :1;
        unsigned WIN0_FP1 :1;
        unsigned WIN1_FP2 :1;
        unsigned WIN2_FP3 :1;
        unsigned ABAT :1;
        unsigned REQOP :3;
    };
    struct {
        unsigned :1;
        unsigned WIN0 :1;
        unsigned WIN1 :1;
        unsigned WIN2 :1;
    };
    struct {
        unsigned :1;
        unsigned FP1 :1;
        unsigned FP2 :1;
        unsigned FP3 :1;
    };
} CANCON_RO4bits_t;
extern volatile CANCON_RO4bits_t CANCON_RO4bits __attribute__((address(0xEDF)));
# 16277 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF0SIDH __attribute__((address(0xEE0)));

__asm("RXF0SIDH equ 0EE0h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned RXF0SID3 :1;
        unsigned RXF0SID4 :1;
        unsigned RXF0SID5 :1;
        unsigned RXF0SID6 :1;
        unsigned RXF0SID7 :1;
        unsigned RXF0SID8 :1;
        unsigned RXF0SID9 :1;
        unsigned RXF0SID10 :1;
    };
} RXF0SIDHbits_t;
extern volatile RXF0SIDHbits_t RXF0SIDHbits __attribute__((address(0xEE0)));
# 16397 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF0SIDL __attribute__((address(0xEE1)));

__asm("RXF0SIDL equ 0EE1h");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDEN :1;
        unsigned :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned RXF0EID16 :1;
        unsigned RXF0EID17 :1;
        unsigned :1;
        unsigned RXF0EXIDEN :1;
        unsigned :1;
        unsigned RXF0SID0 :1;
        unsigned RXF0SID1 :1;
        unsigned RXF0SID2 :1;
    };
} RXF0SIDLbits_t;
extern volatile RXF0SIDLbits_t RXF0SIDLbits __attribute__((address(0xEE1)));
# 16504 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF0EIDH __attribute__((address(0xEE2)));

__asm("RXF0EIDH equ 0EE2h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned RXF0EID8 :1;
        unsigned RXF0EID9 :1;
        unsigned RXF0EID10 :1;
        unsigned RXF0EID11 :1;
        unsigned RXF0EID12 :1;
        unsigned RXF0EID13 :1;
        unsigned RXF0EID14 :1;
        unsigned RXF0EID15 :1;
    };
} RXF0EIDHbits_t;
extern volatile RXF0EIDHbits_t RXF0EIDHbits __attribute__((address(0xEE2)));
# 16624 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF0EIDL __attribute__((address(0xEE3)));

__asm("RXF0EIDL equ 0EE3h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned RXF0EID0 :1;
        unsigned RXF0EID1 :1;
        unsigned RXF0EID2 :1;
        unsigned RXF0EID3 :1;
        unsigned RXF0EID4 :1;
        unsigned RXF0EID5 :1;
        unsigned RXF0EID6 :1;
        unsigned RXF0EID7 :1;
    };
} RXF0EIDLbits_t;
extern volatile RXF0EIDLbits_t RXF0EIDLbits __attribute__((address(0xEE3)));
# 16744 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF1SIDH __attribute__((address(0xEE4)));

__asm("RXF1SIDH equ 0EE4h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned RXF1SID3 :1;
        unsigned RXF1SID4 :1;
        unsigned RXF1SID5 :1;
        unsigned RXF1SID6 :1;
        unsigned RXF1SID7 :1;
        unsigned RXF1SID8 :1;
        unsigned RXF1SID9 :1;
        unsigned RXF1SID10 :1;
    };
} RXF1SIDHbits_t;
extern volatile RXF1SIDHbits_t RXF1SIDHbits __attribute__((address(0xEE4)));
# 16864 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF1SIDL __attribute__((address(0xEE5)));

__asm("RXF1SIDL equ 0EE5h");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDEN :1;
        unsigned :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned RXF1EID16 :1;
        unsigned RXF1EID17 :1;
        unsigned :1;
        unsigned RXF1EXIDEN :1;
        unsigned :1;
        unsigned RXF1SID0 :1;
        unsigned RXF1SID1 :1;
        unsigned RXF1SID2 :1;
    };
} RXF1SIDLbits_t;
extern volatile RXF1SIDLbits_t RXF1SIDLbits __attribute__((address(0xEE5)));
# 16971 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF1EIDH __attribute__((address(0xEE6)));

__asm("RXF1EIDH equ 0EE6h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned RXF1EID8 :1;
        unsigned RXF1EID9 :1;
        unsigned RXF1EID10 :1;
        unsigned RXF1EID11 :1;
        unsigned RXF1EID12 :1;
        unsigned RXF1EID13 :1;
        unsigned RXF1EID14 :1;
        unsigned RXF1EID15 :1;
    };
} RXF1EIDHbits_t;
extern volatile RXF1EIDHbits_t RXF1EIDHbits __attribute__((address(0xEE6)));
# 17091 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF1EIDL __attribute__((address(0xEE7)));

__asm("RXF1EIDL equ 0EE7h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned RXF1EID0 :1;
        unsigned RXF1EID1 :1;
        unsigned RXF1EID2 :1;
        unsigned RXF1EID3 :1;
        unsigned RXF1EID4 :1;
        unsigned RXF1EID5 :1;
        unsigned RXF1EID6 :1;
        unsigned RXF1EID7 :1;
    };
} RXF1EIDLbits_t;
extern volatile RXF1EIDLbits_t RXF1EIDLbits __attribute__((address(0xEE7)));
# 17211 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF2SIDH __attribute__((address(0xEE8)));

__asm("RXF2SIDH equ 0EE8h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned RXF2SID3 :1;
        unsigned RXF2SID4 :1;
        unsigned RXF2SID5 :1;
        unsigned RXF2SID6 :1;
        unsigned RXF2SID7 :1;
        unsigned RXF2SID8 :1;
        unsigned RXF2SID9 :1;
        unsigned RXF2SID10 :1;
    };
} RXF2SIDHbits_t;
extern volatile RXF2SIDHbits_t RXF2SIDHbits __attribute__((address(0xEE8)));
# 17331 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF2SIDL __attribute__((address(0xEE9)));

__asm("RXF2SIDL equ 0EE9h");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDEN :1;
        unsigned :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned RXF2EID16 :1;
        unsigned RXF2EID17 :1;
        unsigned :1;
        unsigned RXF2EXIDEN :1;
        unsigned :1;
        unsigned RXF2SID0 :1;
        unsigned RXF2SID1 :1;
        unsigned RXF2SID2 :1;
    };
} RXF2SIDLbits_t;
extern volatile RXF2SIDLbits_t RXF2SIDLbits __attribute__((address(0xEE9)));
# 17438 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF2EIDH __attribute__((address(0xEEA)));

__asm("RXF2EIDH equ 0EEAh");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned RXF2EID8 :1;
        unsigned RXF2EID9 :1;
        unsigned RXF2EID10 :1;
        unsigned RXF2EID11 :1;
        unsigned RXF2EID12 :1;
        unsigned RXF2EID13 :1;
        unsigned RXF2EID14 :1;
        unsigned RXF2EID15 :1;
    };
} RXF2EIDHbits_t;
extern volatile RXF2EIDHbits_t RXF2EIDHbits __attribute__((address(0xEEA)));
# 17558 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF2EIDL __attribute__((address(0xEEB)));

__asm("RXF2EIDL equ 0EEBh");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned RXF2EID0 :1;
        unsigned RXF2EID1 :1;
        unsigned RXF2EID2 :1;
        unsigned RXF2EID3 :1;
        unsigned RXF2EID4 :1;
        unsigned RXF2EID5 :1;
        unsigned RXF2EID6 :1;
        unsigned RXF2EID7 :1;
    };
} RXF2EIDLbits_t;
extern volatile RXF2EIDLbits_t RXF2EIDLbits __attribute__((address(0xEEB)));
# 17678 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF3SIDH __attribute__((address(0xEEC)));

__asm("RXF3SIDH equ 0EECh");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned RXF3SID3 :1;
        unsigned RXF3SID4 :1;
        unsigned RXF3SID5 :1;
        unsigned RXF3SID6 :1;
        unsigned RXF3SID7 :1;
        unsigned RXF3SID8 :1;
        unsigned RXF3SID9 :1;
        unsigned RXF3SID10 :1;
    };
} RXF3SIDHbits_t;
extern volatile RXF3SIDHbits_t RXF3SIDHbits __attribute__((address(0xEEC)));
# 17798 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF3SIDL __attribute__((address(0xEED)));

__asm("RXF3SIDL equ 0EEDh");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDEN :1;
        unsigned :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned RXF3EID16 :1;
        unsigned RXF3EID17 :1;
        unsigned :1;
        unsigned RXF3EXIDEN :1;
        unsigned :1;
        unsigned RXF3SID0 :1;
        unsigned RXF3SID1 :1;
        unsigned RXF3SID2 :1;
    };
} RXF3SIDLbits_t;
extern volatile RXF3SIDLbits_t RXF3SIDLbits __attribute__((address(0xEED)));
# 17905 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF3EIDH __attribute__((address(0xEEE)));

__asm("RXF3EIDH equ 0EEEh");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned RXF3EID8 :1;
        unsigned RXF3EID9 :1;
        unsigned RXF3EID10 :1;
        unsigned RXF3EID11 :1;
        unsigned RXF3EID12 :1;
        unsigned RXF3EID13 :1;
        unsigned RXF3EID14 :1;
        unsigned RXF3EID15 :1;
    };
} RXF3EIDHbits_t;
extern volatile RXF3EIDHbits_t RXF3EIDHbits __attribute__((address(0xEEE)));
# 18025 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF3EIDL __attribute__((address(0xEEF)));

__asm("RXF3EIDL equ 0EEFh");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned RXF3EID0 :1;
        unsigned RXF3EID1 :1;
        unsigned RXF3EID2 :1;
        unsigned RXF3EID3 :1;
        unsigned RXF3EID4 :1;
        unsigned RXF3EID5 :1;
        unsigned RXF3EID6 :1;
        unsigned RXF3EID7 :1;
    };
} RXF3EIDLbits_t;
extern volatile RXF3EIDLbits_t RXF3EIDLbits __attribute__((address(0xEEF)));
# 18145 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF4SIDH __attribute__((address(0xEF0)));

__asm("RXF4SIDH equ 0EF0h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned RXF4SID3 :1;
        unsigned RXF4SID4 :1;
        unsigned RXF4SID5 :1;
        unsigned RXF4SID6 :1;
        unsigned RXF4SID7 :1;
        unsigned RXF4SID8 :1;
        unsigned RXF4SID9 :1;
        unsigned RXF4SID10 :1;
    };
} RXF4SIDHbits_t;
extern volatile RXF4SIDHbits_t RXF4SIDHbits __attribute__((address(0xEF0)));
# 18265 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF4SIDL __attribute__((address(0xEF1)));

__asm("RXF4SIDL equ 0EF1h");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDEN :1;
        unsigned :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned RXF4EID16 :1;
        unsigned RXF4EID17 :1;
        unsigned :1;
        unsigned RXF4EXIDEN :1;
        unsigned :1;
        unsigned RXF4SID0 :1;
        unsigned RXF4SID1 :1;
        unsigned RXF4SID2 :1;
    };
} RXF4SIDLbits_t;
extern volatile RXF4SIDLbits_t RXF4SIDLbits __attribute__((address(0xEF1)));
# 18372 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF4EIDH __attribute__((address(0xEF2)));

__asm("RXF4EIDH equ 0EF2h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned RXF4EID8 :1;
        unsigned RXF4EID9 :1;
        unsigned RXF4EID10 :1;
        unsigned RXF4EID11 :1;
        unsigned RXF4EID12 :1;
        unsigned RXF4EID13 :1;
        unsigned RXF4EID14 :1;
        unsigned RXF4EID15 :1;
    };
} RXF4EIDHbits_t;
extern volatile RXF4EIDHbits_t RXF4EIDHbits __attribute__((address(0xEF2)));
# 18492 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF4EIDL __attribute__((address(0xEF3)));

__asm("RXF4EIDL equ 0EF3h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned RXF4EID0 :1;
        unsigned RXF4EID1 :1;
        unsigned RXF4EID2 :1;
        unsigned RXF4EID3 :1;
        unsigned RXF4EID4 :1;
        unsigned RXF4EID5 :1;
        unsigned RXF4EID6 :1;
        unsigned RXF4EID7 :1;
    };
} RXF4EIDLbits_t;
extern volatile RXF4EIDLbits_t RXF4EIDLbits __attribute__((address(0xEF3)));
# 18612 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF5SIDH __attribute__((address(0xEF4)));

__asm("RXF5SIDH equ 0EF4h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned RXF5SID3 :1;
        unsigned RXF5SID4 :1;
        unsigned RXF5SID5 :1;
        unsigned RXF5SID6 :1;
        unsigned RXF5SID7 :1;
        unsigned RXF5SID8 :1;
        unsigned RXF5SID9 :1;
        unsigned RXF5SID10 :1;
    };
} RXF5SIDHbits_t;
extern volatile RXF5SIDHbits_t RXF5SIDHbits __attribute__((address(0xEF4)));
# 18732 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF5SIDL __attribute__((address(0xEF5)));

__asm("RXF5SIDL equ 0EF5h");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDEN :1;
        unsigned :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned RXF5EID16 :1;
        unsigned RXF5EID17 :1;
        unsigned :1;
        unsigned RXF5EXIDEN :1;
        unsigned :1;
        unsigned RXF5SID0 :1;
        unsigned RXF5SID1 :1;
        unsigned RXF5SID2 :1;
    };
} RXF5SIDLbits_t;
extern volatile RXF5SIDLbits_t RXF5SIDLbits __attribute__((address(0xEF5)));
# 18839 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF5EIDH __attribute__((address(0xEF6)));

__asm("RXF5EIDH equ 0EF6h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned RXF5EID8 :1;
        unsigned RXF5EID9 :1;
        unsigned RXF5EID10 :1;
        unsigned RXF5EID11 :1;
        unsigned RXF5EID12 :1;
        unsigned RXF5EID13 :1;
        unsigned RXF5EID14 :1;
        unsigned RXF5EID15 :1;
    };
} RXF5EIDHbits_t;
extern volatile RXF5EIDHbits_t RXF5EIDHbits __attribute__((address(0xEF6)));
# 18959 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXF5EIDL __attribute__((address(0xEF7)));

__asm("RXF5EIDL equ 0EF7h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned RXF5EID0 :1;
        unsigned RXF5EID1 :1;
        unsigned RXF5EID2 :1;
        unsigned RXF5EID3 :1;
        unsigned RXF5EID4 :1;
        unsigned RXF5EID5 :1;
        unsigned RXF5EID6 :1;
        unsigned RXF5EID7 :1;
    };
} RXF5EIDLbits_t;
extern volatile RXF5EIDLbits_t RXF5EIDLbits __attribute__((address(0xEF7)));
# 19079 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXM0SIDH __attribute__((address(0xEF8)));

__asm("RXM0SIDH equ 0EF8h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned RXM0SID3 :1;
        unsigned RXM0SID4 :1;
        unsigned RXM0SID5 :1;
        unsigned RXM0SID6 :1;
        unsigned RXM0SID7 :1;
        unsigned RXM0SID8 :1;
        unsigned RXM0SID9 :1;
        unsigned RXM0SID10 :1;
    };
} RXM0SIDHbits_t;
extern volatile RXM0SIDHbits_t RXM0SIDHbits __attribute__((address(0xEF8)));
# 19199 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXM0SIDL __attribute__((address(0xEF9)));

__asm("RXM0SIDL equ 0EF9h");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDEN :1;
        unsigned :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned RXM0EID16 :1;
        unsigned RXM0EID17 :1;
        unsigned :1;
        unsigned RXM0EXIDM :1;
        unsigned :1;
        unsigned RXM0SID0 :1;
        unsigned RXM0SID1 :1;
        unsigned RXM0SID2 :1;
    };
} RXM0SIDLbits_t;
extern volatile RXM0SIDLbits_t RXM0SIDLbits __attribute__((address(0xEF9)));
# 19306 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXM0EIDH __attribute__((address(0xEFA)));

__asm("RXM0EIDH equ 0EFAh");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned RXM0EID8 :1;
        unsigned RXM0EID9 :1;
        unsigned RXM0EID10 :1;
        unsigned RXM0EID11 :1;
        unsigned RXM0EID12 :1;
        unsigned RXM0EID13 :1;
        unsigned RXM0EID14 :1;
        unsigned RXM0EID15 :1;
    };
} RXM0EIDHbits_t;
extern volatile RXM0EIDHbits_t RXM0EIDHbits __attribute__((address(0xEFA)));
# 19426 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXM0EIDL __attribute__((address(0xEFB)));

__asm("RXM0EIDL equ 0EFBh");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned RXM0EID0 :1;
        unsigned RXM0EID1 :1;
        unsigned RXM0EID2 :1;
        unsigned RXM0EID3 :1;
        unsigned RXM0EID4 :1;
        unsigned RXM0EID5 :1;
        unsigned RXM0EID6 :1;
        unsigned RXM0EID7 :1;
    };
} RXM0EIDLbits_t;
extern volatile RXM0EIDLbits_t RXM0EIDLbits __attribute__((address(0xEFB)));
# 19546 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXM1SIDH __attribute__((address(0xEFC)));

__asm("RXM1SIDH equ 0EFCh");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned RXM1SID3 :1;
        unsigned RXM1SID4 :1;
        unsigned RXM1SID5 :1;
        unsigned RXM1SID6 :1;
        unsigned RXM1SID7 :1;
        unsigned RXM1SID8 :1;
        unsigned RXM1SID9 :1;
        unsigned RXM1SID10 :1;
    };
} RXM1SIDHbits_t;
extern volatile RXM1SIDHbits_t RXM1SIDHbits __attribute__((address(0xEFC)));
# 19666 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXM1SIDL __attribute__((address(0xEFD)));

__asm("RXM1SIDL equ 0EFDh");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDEN :1;
        unsigned :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned RXM1EID16 :1;
        unsigned RXM1EID17 :1;
        unsigned :1;
        unsigned RXM1EXIDEN :1;
        unsigned :1;
        unsigned RXM1SID0 :1;
        unsigned RXM1SID1 :1;
        unsigned RXM1SID2 :1;
    };
} RXM1SIDLbits_t;
extern volatile RXM1SIDLbits_t RXM1SIDLbits __attribute__((address(0xEFD)));
# 19773 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXM1EIDH __attribute__((address(0xEFE)));

__asm("RXM1EIDH equ 0EFEh");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned RXM1EID8 :1;
        unsigned RXM1EID9 :1;
        unsigned RXM1EID10 :1;
        unsigned RXM1EID11 :1;
        unsigned RXM1EID12 :1;
        unsigned RXM1EID13 :1;
        unsigned RXM1EID14 :1;
        unsigned RXM1EID15 :1;
    };
} RXM1EIDHbits_t;
extern volatile RXM1EIDHbits_t RXM1EIDHbits __attribute__((address(0xEFE)));
# 19893 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXM1EIDL __attribute__((address(0xEFF)));

__asm("RXM1EIDL equ 0EFFh");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned RXM1EID0 :1;
        unsigned RXM1EID1 :1;
        unsigned RXM1EID2 :1;
        unsigned RXM1EID3 :1;
        unsigned RXM1EID4 :1;
        unsigned RXM1EID5 :1;
        unsigned RXM1EID6 :1;
        unsigned RXM1EID7 :1;
    };
} RXM1EIDLbits_t;
extern volatile RXM1EIDLbits_t RXM1EIDLbits __attribute__((address(0xEFF)));
# 20013 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB2CON __attribute__((address(0xF00)));

__asm("TXB2CON equ 0F00h");


typedef union {
    struct {
        unsigned TXPRI :2;
        unsigned :1;
        unsigned TXREQ :1;
        unsigned TXERR :1;
        unsigned TXLARB :1;
        unsigned TXABT :1;
        unsigned TXBIF :1;
    };
    struct {
        unsigned TXPRI0 :1;
        unsigned TXPRI1 :1;
    };
    struct {
        unsigned TXB2PRI0 :1;
        unsigned TXB2PRI1 :1;
        unsigned :1;
        unsigned TXB2REQ :1;
        unsigned TXB2ERR :1;
        unsigned TXB2LARB :1;
        unsigned TXB2ABT :1;
        unsigned TX2IF :1;
    };
} TXB2CONbits_t;
extern volatile TXB2CONbits_t TXB2CONbits __attribute__((address(0xF00)));
# 20123 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB2SIDH __attribute__((address(0xF01)));

__asm("TXB2SIDH equ 0F01h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned TXB2SID3 :1;
        unsigned TXB2SID4 :1;
        unsigned TXB2SID5 :1;
        unsigned TXB2SID6 :1;
        unsigned TXB2SID7 :1;
        unsigned TXB2SID8 :1;
        unsigned TXB2SID9 :1;
        unsigned TXB2SID10 :1;
    };
} TXB2SIDHbits_t;
extern volatile TXB2SIDHbits_t TXB2SIDHbits __attribute__((address(0xF01)));
# 20243 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB2SIDL __attribute__((address(0xF02)));

__asm("TXB2SIDL equ 0F02h");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDE :1;
        unsigned SRR :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned TXB2EID16 :1;
        unsigned TXB2EID17 :1;
        unsigned :1;
        unsigned TXB2EXIDE :1;
        unsigned :1;
        unsigned TXB2SID0 :1;
        unsigned TXB2SID1 :1;
        unsigned TXB2SID2 :1;
    };
} TXB2SIDLbits_t;
extern volatile TXB2SIDLbits_t TXB2SIDLbits __attribute__((address(0xF02)));
# 20355 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB2EIDH __attribute__((address(0xF03)));

__asm("TXB2EIDH equ 0F03h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned TXB2EID8 :1;
        unsigned TXB2EID9 :1;
        unsigned TXB2EID10 :1;
        unsigned TXB2EID11 :1;
        unsigned TXB2EID12 :1;
        unsigned TXB2EID13 :1;
        unsigned TXB2EID14 :1;
        unsigned TXB2EID15 :1;
    };
} TXB2EIDHbits_t;
extern volatile TXB2EIDHbits_t TXB2EIDHbits __attribute__((address(0xF03)));
# 20475 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB2EIDL __attribute__((address(0xF04)));

__asm("TXB2EIDL equ 0F04h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned TXB2EID0 :1;
        unsigned TXB2EID1 :1;
        unsigned TXB2EID2 :1;
        unsigned TXB2EID3 :1;
        unsigned TXB2EID4 :1;
        unsigned TXB2EID5 :1;
        unsigned TXB2EID6 :1;
        unsigned TXB2EID7 :1;
    };
} TXB2EIDLbits_t;
extern volatile TXB2EIDLbits_t TXB2EIDLbits __attribute__((address(0xF04)));
# 20595 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB2DLC __attribute__((address(0xF05)));

__asm("TXB2DLC equ 0F05h");


typedef union {
    struct {
        unsigned DLC :4;
        unsigned :2;
        unsigned TXRTR :1;
    };
    struct {
        unsigned DLC0 :1;
        unsigned DLC1 :1;
        unsigned DLC2 :1;
        unsigned DLC3 :1;
    };
    struct {
        unsigned TXB2DLC0 :1;
        unsigned TXB2DLC1 :1;
        unsigned TXB2DLC2 :1;
        unsigned TXB2DLC3 :1;
        unsigned :2;
        unsigned TXB2RTR :1;
    };
} TXB2DLCbits_t;
extern volatile TXB2DLCbits_t TXB2DLCbits __attribute__((address(0xF05)));
# 20681 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB2D0 __attribute__((address(0xF06)));

__asm("TXB2D0 equ 0F06h");


typedef union {
    struct {
        unsigned TXB2D0 :8;
    };
    struct {
        unsigned TXB2D00 :1;
        unsigned TXB2D01 :1;
        unsigned TXB2D02 :1;
        unsigned TXB2D03 :1;
        unsigned TXB2D04 :1;
        unsigned TXB2D05 :1;
        unsigned TXB2D06 :1;
        unsigned TXB2D07 :1;
    };
} TXB2D0bits_t;
extern volatile TXB2D0bits_t TXB2D0bits __attribute__((address(0xF06)));
# 20751 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB2D1 __attribute__((address(0xF07)));

__asm("TXB2D1 equ 0F07h");


typedef union {
    struct {
        unsigned TXB2D1 :8;
    };
    struct {
        unsigned TXB2D10 :1;
        unsigned TXB2D11 :1;
        unsigned TXB2D12 :1;
        unsigned TXB2D13 :1;
        unsigned TXB2D14 :1;
        unsigned TXB2D15 :1;
        unsigned TXB2D16 :1;
        unsigned TXB2D17 :1;
    };
} TXB2D1bits_t;
extern volatile TXB2D1bits_t TXB2D1bits __attribute__((address(0xF07)));
# 20821 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB2D2 __attribute__((address(0xF08)));

__asm("TXB2D2 equ 0F08h");


typedef union {
    struct {
        unsigned TXB2D2 :8;
    };
    struct {
        unsigned TXB2D20 :1;
        unsigned TXB2D21 :1;
        unsigned TXB2D22 :1;
        unsigned TXB2D23 :1;
        unsigned TXB2D24 :1;
        unsigned TXB2D25 :1;
        unsigned TXB2D26 :1;
        unsigned TXB2D27 :1;
    };
} TXB2D2bits_t;
extern volatile TXB2D2bits_t TXB2D2bits __attribute__((address(0xF08)));
# 20891 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB2D3 __attribute__((address(0xF09)));

__asm("TXB2D3 equ 0F09h");


typedef union {
    struct {
        unsigned TXB2D3 :8;
    };
    struct {
        unsigned TXB2D30 :1;
        unsigned TXB2D31 :1;
        unsigned TXB2D32 :1;
        unsigned TXB2D33 :1;
        unsigned TXB2D34 :1;
        unsigned TXB2D35 :1;
        unsigned TXB2D36 :1;
        unsigned TXB2D37 :1;
    };
} TXB2D3bits_t;
extern volatile TXB2D3bits_t TXB2D3bits __attribute__((address(0xF09)));
# 20961 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB2D4 __attribute__((address(0xF0A)));

__asm("TXB2D4 equ 0F0Ah");


typedef union {
    struct {
        unsigned TXB2D4 :8;
    };
    struct {
        unsigned TXB2D40 :1;
        unsigned TXB2D41 :1;
        unsigned TXB2D42 :1;
        unsigned TXB2D43 :1;
        unsigned TXB2D44 :1;
        unsigned TXB2D45 :1;
        unsigned TXB2D46 :1;
        unsigned TXB2D47 :1;
    };
} TXB2D4bits_t;
extern volatile TXB2D4bits_t TXB2D4bits __attribute__((address(0xF0A)));
# 21031 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB2D5 __attribute__((address(0xF0B)));

__asm("TXB2D5 equ 0F0Bh");


typedef union {
    struct {
        unsigned TXB2D5 :8;
    };
    struct {
        unsigned TXB2D50 :1;
        unsigned TXB2D51 :1;
        unsigned TXB2D52 :1;
        unsigned TXB2D53 :1;
        unsigned TXB2D54 :1;
        unsigned TXB2D55 :1;
        unsigned TXB2D56 :1;
        unsigned TXB2D57 :1;
    };
} TXB2D5bits_t;
extern volatile TXB2D5bits_t TXB2D5bits __attribute__((address(0xF0B)));
# 21101 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB2D6 __attribute__((address(0xF0C)));

__asm("TXB2D6 equ 0F0Ch");


typedef union {
    struct {
        unsigned TXB2D6 :8;
    };
    struct {
        unsigned TXB2D60 :1;
        unsigned TXB2D61 :1;
        unsigned TXB2D62 :1;
        unsigned TXB2D63 :1;
        unsigned TXB2D64 :1;
        unsigned TXB2D65 :1;
        unsigned TXB2D66 :1;
        unsigned TXB2D67 :1;
    };
} TXB2D6bits_t;
extern volatile TXB2D6bits_t TXB2D6bits __attribute__((address(0xF0C)));
# 21171 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB2D7 __attribute__((address(0xF0D)));

__asm("TXB2D7 equ 0F0Dh");


typedef union {
    struct {
        unsigned TXB2D7 :8;
    };
    struct {
        unsigned TXB2D70 :1;
        unsigned TXB2D71 :1;
        unsigned TXB2D72 :1;
        unsigned TXB2D73 :1;
        unsigned TXB2D74 :1;
        unsigned TXB2D75 :1;
        unsigned TXB2D76 :1;
        unsigned TXB2D77 :1;
    };
} TXB2D7bits_t;
extern volatile TXB2D7bits_t TXB2D7bits __attribute__((address(0xF0D)));
# 21241 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CANSTAT_RO3 __attribute__((address(0xF0E)));

__asm("CANSTAT_RO3 equ 0F0Eh");


typedef union {
    struct {
        unsigned EICODE0 :1;
        unsigned EICODE1_ICODE0 :1;
        unsigned EICODE2_ICODE1 :1;
        unsigned EICODE3_ICODE2 :1;
        unsigned EICODE4 :1;
        unsigned OPMODE :3;
    };
    struct {
        unsigned :1;
        unsigned EICODE1 :1;
        unsigned EICODE2 :1;
        unsigned EICODE3 :1;
        unsigned :1;
        unsigned OPMODE0 :1;
        unsigned OPMODE1 :1;
        unsigned OPMODE2 :1;
    };
    struct {
        unsigned :1;
        unsigned ICODE0 :1;
        unsigned ICODE1 :1;
        unsigned ICODE2 :1;
    };
} CANSTAT_RO3bits_t;
extern volatile CANSTAT_RO3bits_t CANSTAT_RO3bits __attribute__((address(0xF0E)));
# 21352 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CANCON_RO3 __attribute__((address(0xF0F)));

__asm("CANCON_RO3 equ 0F0Fh");


typedef union {
    struct {
        unsigned FP0 :1;
        unsigned WIN0_FP1 :1;
        unsigned WIN1_FP2 :1;
        unsigned WIN2_FP3 :1;
        unsigned ABAT :1;
        unsigned REQOP :3;
    };
    struct {
        unsigned :1;
        unsigned WIN0 :1;
        unsigned WIN1 :1;
        unsigned WIN2 :1;
    };
    struct {
        unsigned :1;
        unsigned FP1 :1;
        unsigned FP2 :1;
        unsigned FP3 :1;
    };
} CANCON_RO3bits_t;
extern volatile CANCON_RO3bits_t CANCON_RO3bits __attribute__((address(0xF0F)));
# 21444 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB1CON __attribute__((address(0xF10)));

__asm("TXB1CON equ 0F10h");


typedef union {
    struct {
        unsigned TXPRI :2;
        unsigned :1;
        unsigned TXREQ :1;
        unsigned TXERR :1;
        unsigned TXLARB :1;
        unsigned TXABT :1;
        unsigned TXBIF :1;
    };
    struct {
        unsigned TXPRI0 :1;
        unsigned TXPRI1 :1;
    };
    struct {
        unsigned TXB1PRI0 :1;
        unsigned TXB1PRI1 :1;
        unsigned :1;
        unsigned TXB1REQ :1;
        unsigned TXB1ERR :1;
        unsigned TXB1LARB :1;
        unsigned TXB1ABT :1;
        unsigned TX1IF :1;
    };
} TXB1CONbits_t;
extern volatile TXB1CONbits_t TXB1CONbits __attribute__((address(0xF10)));
# 21554 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB1SIDH __attribute__((address(0xF11)));

__asm("TXB1SIDH equ 0F11h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned TXB1SID3 :1;
        unsigned TXB1SID4 :1;
        unsigned TXB1SID5 :1;
        unsigned TXB1SID6 :1;
        unsigned TXB1SID7 :1;
        unsigned TXB1SID8 :1;
        unsigned TXB1SID9 :1;
        unsigned TXB1SID10 :1;
    };
} TXB1SIDHbits_t;
extern volatile TXB1SIDHbits_t TXB1SIDHbits __attribute__((address(0xF11)));
# 21674 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB1SIDL __attribute__((address(0xF12)));

__asm("TXB1SIDL equ 0F12h");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDE :1;
        unsigned SRR :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned TXB1EID16 :1;
        unsigned TXB1EID17 :1;
        unsigned :1;
        unsigned TXB1EXIDE :1;
        unsigned :1;
        unsigned TXB1SID0 :1;
        unsigned TXB1SID1 :1;
        unsigned TXB1SID2 :1;
    };
} TXB1SIDLbits_t;
extern volatile TXB1SIDLbits_t TXB1SIDLbits __attribute__((address(0xF12)));
# 21786 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB1EIDH __attribute__((address(0xF13)));

__asm("TXB1EIDH equ 0F13h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned TXB1EID8 :1;
        unsigned TXB1EID9 :1;
        unsigned TXB1EID10 :1;
        unsigned TXB1EID11 :1;
        unsigned TXB1EID12 :1;
        unsigned TXB1EID13 :1;
        unsigned TXB1EID14 :1;
        unsigned TXB1EID15 :1;
    };
} TXB1EIDHbits_t;
extern volatile TXB1EIDHbits_t TXB1EIDHbits __attribute__((address(0xF13)));
# 21906 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB1EIDL __attribute__((address(0xF14)));

__asm("TXB1EIDL equ 0F14h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned TXB1EID0 :1;
        unsigned TXB1EID1 :1;
        unsigned TXB1EID2 :1;
        unsigned TXB1EID3 :1;
        unsigned TXB1EID4 :1;
        unsigned TXB1EID5 :1;
        unsigned TXB1EID6 :1;
        unsigned TXB1EID7 :1;
    };
} TXB1EIDLbits_t;
extern volatile TXB1EIDLbits_t TXB1EIDLbits __attribute__((address(0xF14)));
# 22026 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB1DLC __attribute__((address(0xF15)));

__asm("TXB1DLC equ 0F15h");


typedef union {
    struct {
        unsigned DLC :4;
        unsigned :2;
        unsigned TXRTR :1;
    };
    struct {
        unsigned DLC0 :1;
        unsigned DLC1 :1;
        unsigned DLC2 :1;
        unsigned DLC3 :1;
    };
    struct {
        unsigned TXB1DLC0 :1;
        unsigned TXB1DLC1 :1;
        unsigned TXB1DLC2 :1;
        unsigned TXB1DLC3 :1;
        unsigned :2;
        unsigned TXB1RTR :1;
    };
} TXB1DLCbits_t;
extern volatile TXB1DLCbits_t TXB1DLCbits __attribute__((address(0xF15)));
# 22112 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB1D0 __attribute__((address(0xF16)));

__asm("TXB1D0 equ 0F16h");


typedef union {
    struct {
        unsigned TXB1D0 :8;
    };
    struct {
        unsigned TXB1D00 :1;
        unsigned TXB1D01 :1;
        unsigned TXB1D02 :1;
        unsigned TXB1D03 :1;
        unsigned TXB1D04 :1;
        unsigned TXB1D05 :1;
        unsigned TXB1D06 :1;
        unsigned TXB1D07 :1;
    };
} TXB1D0bits_t;
extern volatile TXB1D0bits_t TXB1D0bits __attribute__((address(0xF16)));
# 22182 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB1D1 __attribute__((address(0xF17)));

__asm("TXB1D1 equ 0F17h");


typedef union {
    struct {
        unsigned TXB1D1 :8;
    };
    struct {
        unsigned TXB1D10 :1;
        unsigned TXB1D11 :1;
        unsigned TXB1D12 :1;
        unsigned TXB1D13 :1;
        unsigned TXB1D14 :1;
        unsigned TXB1D15 :1;
        unsigned TXB1D16 :1;
        unsigned TXB1D17 :1;
    };
} TXB1D1bits_t;
extern volatile TXB1D1bits_t TXB1D1bits __attribute__((address(0xF17)));
# 22252 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB1D2 __attribute__((address(0xF18)));

__asm("TXB1D2 equ 0F18h");


typedef union {
    struct {
        unsigned TXB1D2 :8;
    };
    struct {
        unsigned TXB1D20 :1;
        unsigned TXB1D21 :1;
        unsigned TXB1D22 :1;
        unsigned TXB1D23 :1;
        unsigned TXB1D24 :1;
        unsigned TXB1D25 :1;
        unsigned TXB1D26 :1;
        unsigned TXB1D27 :1;
    };
} TXB1D2bits_t;
extern volatile TXB1D2bits_t TXB1D2bits __attribute__((address(0xF18)));
# 22322 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB1D3 __attribute__((address(0xF19)));

__asm("TXB1D3 equ 0F19h");


typedef union {
    struct {
        unsigned TXB1D3 :8;
    };
    struct {
        unsigned TXB1D30 :1;
        unsigned TXB1D31 :1;
        unsigned TXB1D32 :1;
        unsigned TXB1D33 :1;
        unsigned TXB1D34 :1;
        unsigned TXB1D35 :1;
        unsigned TXB1D36 :1;
        unsigned TXB1D37 :1;
    };
} TXB1D3bits_t;
extern volatile TXB1D3bits_t TXB1D3bits __attribute__((address(0xF19)));
# 22392 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB1D4 __attribute__((address(0xF1A)));

__asm("TXB1D4 equ 0F1Ah");


typedef union {
    struct {
        unsigned TXB1D4 :8;
    };
    struct {
        unsigned TXB1D40 :1;
        unsigned TXB1D41 :1;
        unsigned TXB1D42 :1;
        unsigned TXB1D43 :1;
        unsigned TXB1D44 :1;
        unsigned TXB1D45 :1;
        unsigned TXB1D46 :1;
        unsigned TXB1D47 :1;
    };
} TXB1D4bits_t;
extern volatile TXB1D4bits_t TXB1D4bits __attribute__((address(0xF1A)));
# 22462 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB1D5 __attribute__((address(0xF1B)));

__asm("TXB1D5 equ 0F1Bh");


typedef union {
    struct {
        unsigned TXB1D5 :8;
    };
    struct {
        unsigned TXB1D50 :1;
        unsigned TXB1D51 :1;
        unsigned TXB1D52 :1;
        unsigned TXB1D53 :1;
        unsigned TXB1D54 :1;
        unsigned TXB1D55 :1;
        unsigned TXB1D56 :1;
        unsigned TXB1D57 :1;
    };
} TXB1D5bits_t;
extern volatile TXB1D5bits_t TXB1D5bits __attribute__((address(0xF1B)));
# 22532 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB1D6 __attribute__((address(0xF1C)));

__asm("TXB1D6 equ 0F1Ch");


typedef union {
    struct {
        unsigned TXB1D6 :8;
    };
    struct {
        unsigned TXB1D60 :1;
        unsigned TXB1D61 :1;
        unsigned TXB1D62 :1;
        unsigned TXB1D63 :1;
        unsigned TXB1D64 :1;
        unsigned TXB1D65 :1;
        unsigned TXB1D66 :1;
        unsigned TXB1D67 :1;
    };
} TXB1D6bits_t;
extern volatile TXB1D6bits_t TXB1D6bits __attribute__((address(0xF1C)));
# 22602 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB1D7 __attribute__((address(0xF1D)));

__asm("TXB1D7 equ 0F1Dh");


typedef union {
    struct {
        unsigned TXB1D7 :8;
    };
    struct {
        unsigned TXB1D70 :1;
        unsigned TXB1D71 :1;
        unsigned TXB1D72 :1;
        unsigned TXB1D73 :1;
        unsigned TXB1D74 :1;
        unsigned TXB1D75 :1;
        unsigned TXB1D76 :1;
        unsigned TXB1D77 :1;
    };
} TXB1D7bits_t;
extern volatile TXB1D7bits_t TXB1D7bits __attribute__((address(0xF1D)));
# 22672 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CANSTAT_RO2 __attribute__((address(0xF1E)));

__asm("CANSTAT_RO2 equ 0F1Eh");


typedef union {
    struct {
        unsigned EICODE0 :1;
        unsigned EICODE1_ICODE0 :1;
        unsigned EICODE2_ICODE1 :1;
        unsigned EICODE3_ICODE2 :1;
        unsigned EICODE4 :1;
        unsigned OPMODE :3;
    };
    struct {
        unsigned :1;
        unsigned EICODE1 :1;
        unsigned EICODE2 :1;
        unsigned EICODE3 :1;
        unsigned :1;
        unsigned OPMODE0 :1;
        unsigned OPMODE1 :1;
        unsigned OPMODE2 :1;
    };
    struct {
        unsigned :1;
        unsigned ICODE20 :1;
        unsigned ICODE21 :1;
        unsigned ICODE2 :1;
    };
} CANSTAT_RO2bits_t;
extern volatile CANSTAT_RO2bits_t CANSTAT_RO2bits __attribute__((address(0xF1E)));
# 22783 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CANCON_RO2 __attribute__((address(0xF1F)));

__asm("CANCON_RO2 equ 0F1Fh");


typedef union {
    struct {
        unsigned FP0 :1;
        unsigned WIN0_FP1 :1;
        unsigned WIN1_FP2 :1;
        unsigned WIN2_FP3 :1;
        unsigned ABAT :1;
        unsigned REQOP :3;
    };
    struct {
        unsigned :1;
        unsigned WIN0 :1;
        unsigned WIN1 :1;
        unsigned WIN2 :1;
    };
    struct {
        unsigned :1;
        unsigned FP1 :1;
        unsigned FP2 :1;
        unsigned FP3 :1;
    };
} CANCON_RO2bits_t;
extern volatile CANCON_RO2bits_t CANCON_RO2bits __attribute__((address(0xF1F)));
# 22875 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB0CON __attribute__((address(0xF20)));

__asm("TXB0CON equ 0F20h");


typedef union {
    struct {
        unsigned TXPRI :2;
        unsigned :1;
        unsigned TXREQ :1;
        unsigned TXERR :1;
        unsigned TXLARB :1;
        unsigned TXABT :1;
        unsigned TXBIF :1;
    };
    struct {
        unsigned TXPRI0 :1;
        unsigned TXPRI1 :1;
    };
    struct {
        unsigned TXB0PRI0 :1;
        unsigned TXB0PRI1 :1;
        unsigned :1;
        unsigned TXB0REQ :1;
        unsigned TXB0ERR :1;
        unsigned TXB0LARB :1;
        unsigned TXB0ABT :1;
        unsigned TX0IF :1;
    };
} TXB0CONbits_t;
extern volatile TXB0CONbits_t TXB0CONbits __attribute__((address(0xF20)));
# 22985 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB0SIDH __attribute__((address(0xF21)));

__asm("TXB0SIDH equ 0F21h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned TXB0SID3 :1;
        unsigned TXB0SID4 :1;
        unsigned TXB0SID5 :1;
        unsigned TXB0SID6 :1;
        unsigned TXB0SID7 :1;
        unsigned TXB0SID8 :1;
        unsigned TXB0SID9 :1;
        unsigned TXB0SID10 :1;
    };
} TXB0SIDHbits_t;
extern volatile TXB0SIDHbits_t TXB0SIDHbits __attribute__((address(0xF21)));
# 23105 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB0SIDL __attribute__((address(0xF22)));

__asm("TXB0SIDL equ 0F22h");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXIDE :1;
        unsigned SRR :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned TXB0EID16 :1;
        unsigned TXB0EID17 :1;
        unsigned :1;
        unsigned TXB0EXIDE :1;
        unsigned :1;
        unsigned TXB0SID0 :1;
        unsigned TXB0SID1 :1;
        unsigned TXB0SID2 :1;
    };
} TXB0SIDLbits_t;
extern volatile TXB0SIDLbits_t TXB0SIDLbits __attribute__((address(0xF22)));
# 23217 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB0EIDH __attribute__((address(0xF23)));

__asm("TXB0EIDH equ 0F23h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned TXB0EID8 :1;
        unsigned TXB0EID9 :1;
        unsigned TXB0EID10 :1;
        unsigned TXB0EID11 :1;
        unsigned TXB0EID12 :1;
        unsigned TXB0EID13 :1;
        unsigned TXB0EID14 :1;
        unsigned TXB0EID15 :1;
    };
} TXB0EIDHbits_t;
extern volatile TXB0EIDHbits_t TXB0EIDHbits __attribute__((address(0xF23)));
# 23337 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB0EIDL __attribute__((address(0xF24)));

__asm("TXB0EIDL equ 0F24h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned TXB0EID0 :1;
        unsigned TXB0EID1 :1;
        unsigned TXB0EID2 :1;
        unsigned TXB0EID3 :1;
        unsigned TXB0EID4 :1;
        unsigned TXB0EID5 :1;
        unsigned TXB0EID6 :1;
        unsigned TXB0EID7 :1;
    };
} TXB0EIDLbits_t;
extern volatile TXB0EIDLbits_t TXB0EIDLbits __attribute__((address(0xF24)));
# 23457 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB0DLC __attribute__((address(0xF25)));

__asm("TXB0DLC equ 0F25h");


typedef union {
    struct {
        unsigned DLC :4;
        unsigned :2;
        unsigned TXRTR :1;
    };
    struct {
        unsigned DLC0 :1;
        unsigned DLC1 :1;
        unsigned DLC2 :1;
        unsigned DLC3 :1;
    };
    struct {
        unsigned TXB0DLC0 :1;
        unsigned TXB0DLC1 :1;
        unsigned TXB0DLC2 :1;
        unsigned TXB0DLC3 :1;
        unsigned :2;
        unsigned TXB0RTR :1;
    };
} TXB0DLCbits_t;
extern volatile TXB0DLCbits_t TXB0DLCbits __attribute__((address(0xF25)));
# 23543 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB0D0 __attribute__((address(0xF26)));

__asm("TXB0D0 equ 0F26h");


typedef union {
    struct {
        unsigned TXB0D0 :8;
    };
    struct {
        unsigned TXB0D00 :1;
        unsigned TXB0D01 :1;
        unsigned TXB0D02 :1;
        unsigned TXB0D03 :1;
        unsigned TXB0D04 :1;
        unsigned TXB0D05 :1;
        unsigned TXB0D06 :1;
        unsigned TXB0D07 :1;
    };
} TXB0D0bits_t;
extern volatile TXB0D0bits_t TXB0D0bits __attribute__((address(0xF26)));
# 23613 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB0D1 __attribute__((address(0xF27)));

__asm("TXB0D1 equ 0F27h");


typedef union {
    struct {
        unsigned TXB0D1 :8;
    };
    struct {
        unsigned TXB0D10 :1;
        unsigned TXB0D11 :1;
        unsigned TXB0D12 :1;
        unsigned TXB0D13 :1;
        unsigned TXB0D14 :1;
        unsigned TXB0D15 :1;
        unsigned TXB0D16 :1;
        unsigned TXB0D17 :1;
    };
} TXB0D1bits_t;
extern volatile TXB0D1bits_t TXB0D1bits __attribute__((address(0xF27)));
# 23683 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB0D2 __attribute__((address(0xF28)));

__asm("TXB0D2 equ 0F28h");


typedef union {
    struct {
        unsigned TXB0D2 :8;
    };
    struct {
        unsigned TXB0D20 :1;
        unsigned TXB0D21 :1;
        unsigned TXB0D22 :1;
        unsigned TXB0D23 :1;
        unsigned TXB0D24 :1;
        unsigned TXB0D25 :1;
        unsigned TXB0D26 :1;
        unsigned TXB0D27 :1;
    };
} TXB0D2bits_t;
extern volatile TXB0D2bits_t TXB0D2bits __attribute__((address(0xF28)));
# 23753 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB0D3 __attribute__((address(0xF29)));

__asm("TXB0D3 equ 0F29h");


typedef union {
    struct {
        unsigned TXB0D3 :8;
    };
    struct {
        unsigned TXB0D30 :1;
        unsigned TXB0D31 :1;
        unsigned TXB0D32 :1;
        unsigned TXB0D33 :1;
        unsigned TXB0D34 :1;
        unsigned TXB0D35 :1;
        unsigned TXB0D36 :1;
        unsigned TXB0D37 :1;
    };
} TXB0D3bits_t;
extern volatile TXB0D3bits_t TXB0D3bits __attribute__((address(0xF29)));
# 23823 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB0D4 __attribute__((address(0xF2A)));

__asm("TXB0D4 equ 0F2Ah");


typedef union {
    struct {
        unsigned TXB0D4 :8;
    };
    struct {
        unsigned TXB0D40 :1;
        unsigned TXB0D41 :1;
        unsigned TXB0D42 :1;
        unsigned TXB0D43 :1;
        unsigned TXB0D44 :1;
        unsigned TXB0D45 :1;
        unsigned TXB0D46 :1;
        unsigned TXB0D47 :1;
    };
} TXB0D4bits_t;
extern volatile TXB0D4bits_t TXB0D4bits __attribute__((address(0xF2A)));
# 23893 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB0D5 __attribute__((address(0xF2B)));

__asm("TXB0D5 equ 0F2Bh");


typedef union {
    struct {
        unsigned TXB0D5 :8;
    };
    struct {
        unsigned TXB0D50 :1;
        unsigned TXB0D51 :1;
        unsigned TXB0D52 :1;
        unsigned TXB0D53 :1;
        unsigned TXB0D54 :1;
        unsigned TXB0D55 :1;
        unsigned TXB0D56 :1;
        unsigned TXB0D57 :1;
    };
} TXB0D5bits_t;
extern volatile TXB0D5bits_t TXB0D5bits __attribute__((address(0xF2B)));
# 23963 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB0D6 __attribute__((address(0xF2C)));

__asm("TXB0D6 equ 0F2Ch");


typedef union {
    struct {
        unsigned TXB0D6 :8;
    };
    struct {
        unsigned TXB0D60 :1;
        unsigned TXB0D61 :1;
        unsigned TXB0D62 :1;
        unsigned TXB0D63 :1;
        unsigned TXB0D64 :1;
        unsigned TXB0D65 :1;
        unsigned TXB0D66 :1;
        unsigned TXB0D67 :1;
    };
} TXB0D6bits_t;
extern volatile TXB0D6bits_t TXB0D6bits __attribute__((address(0xF2C)));
# 24033 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXB0D7 __attribute__((address(0xF2D)));

__asm("TXB0D7 equ 0F2Dh");


typedef union {
    struct {
        unsigned TXB0D7 :8;
    };
    struct {
        unsigned TXB0D70 :1;
        unsigned TXB0D71 :1;
        unsigned TXB0D72 :1;
        unsigned TXB0D73 :1;
        unsigned TXB0D74 :1;
        unsigned TXB0D75 :1;
        unsigned TXB0D76 :1;
        unsigned TXB0D77 :1;
    };
} TXB0D7bits_t;
extern volatile TXB0D7bits_t TXB0D7bits __attribute__((address(0xF2D)));
# 24103 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CANSTAT_RO1 __attribute__((address(0xF2E)));

__asm("CANSTAT_RO1 equ 0F2Eh");


typedef union {
    struct {
        unsigned EICODE0 :1;
        unsigned EICODE1_ICODE0 :1;
        unsigned EICODE2_ICODE1 :1;
        unsigned EICODE3_ICODE2 :1;
        unsigned EICODE4 :1;
        unsigned OPMODE :3;
    };
    struct {
        unsigned :1;
        unsigned EICODE1 :1;
        unsigned EICODE2 :1;
        unsigned EICODE3 :1;
        unsigned :1;
        unsigned OPMODE0 :1;
        unsigned OPMODE1 :1;
        unsigned OPMODE2 :1;
    };
    struct {
        unsigned :1;
        unsigned ICODE0 :1;
        unsigned ICODE1 :1;
        unsigned ICODE2 :1;
    };
} CANSTAT_RO1bits_t;
extern volatile CANSTAT_RO1bits_t CANSTAT_RO1bits __attribute__((address(0xF2E)));
# 24214 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CANCON_RO1 __attribute__((address(0xF2F)));

__asm("CANCON_RO1 equ 0F2Fh");


typedef union {
    struct {
        unsigned FP0 :1;
        unsigned WIN0_FP1 :1;
        unsigned WIN1_FP2 :1;
        unsigned WIN2_FP3 :1;
        unsigned ABAT :1;
        unsigned REQOP :3;
    };
    struct {
        unsigned :1;
        unsigned WIN0 :1;
        unsigned WIN1 :1;
        unsigned WIN2 :1;
    };
    struct {
        unsigned :1;
        unsigned FP1 :1;
        unsigned FP2 :1;
        unsigned FP3 :1;
    };
} CANCON_RO1bits_t;
extern volatile CANCON_RO1bits_t CANCON_RO1bits __attribute__((address(0xF2F)));
# 24306 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB1CON __attribute__((address(0xF30)));

__asm("RXB1CON equ 0F30h");


typedef union {
    struct {
        unsigned FILHIT0 :1;
        unsigned FILHIT1 :1;
        unsigned FILHIT2 :1;
        unsigned RXRTRRO_FILHIT3 :1;
        unsigned FILHIT4 :1;
        unsigned RXM0_RTRRO :1;
        unsigned RXM1 :1;
        unsigned RXFUL :1;
    };
    struct {
        unsigned :3;
        unsigned RXRTRRO :1;
        unsigned :1;
        unsigned RXM0 :1;
    };
    struct {
        unsigned :3;
        unsigned FILHIT3 :1;
        unsigned :1;
        unsigned RTRRO :1;
    };
    struct {
        unsigned RXB1FILHIT0 :1;
        unsigned RXB1FILHIT1 :1;
        unsigned RXB1FILHIT2 :1;
        unsigned RXB1FILHIT3 :1;
        unsigned RXB1FILHIT4 :1;
        unsigned RXB1M0 :1;
        unsigned RXB1M1 :1;
        unsigned RXB1FUL :1;
    };
    struct {
        unsigned :3;
        unsigned RXB1RTRR0 :1;
        unsigned :1;
        unsigned RXB1RTRRO :1;
    };
} RXB1CONbits_t;
extern volatile RXB1CONbits_t RXB1CONbits __attribute__((address(0xF30)));
# 24466 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB1SIDH __attribute__((address(0xF31)));

__asm("RXB1SIDH equ 0F31h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned RXB1SID3 :1;
        unsigned RXB1SID4 :1;
        unsigned RXB1SID5 :1;
        unsigned RXB1SID6 :1;
        unsigned RXB1SID7 :1;
        unsigned RXB1SID8 :1;
        unsigned RXB1SID9 :1;
        unsigned RXB1SID10 :1;
    };
} RXB1SIDHbits_t;
extern volatile RXB1SIDHbits_t RXB1SIDHbits __attribute__((address(0xF31)));
# 24586 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB1SIDL __attribute__((address(0xF32)));

__asm("RXB1SIDL equ 0F32h");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXID :1;
        unsigned SRR :1;
        unsigned SID :3;
    };
    struct {
        unsigned EDI16 :1;
        unsigned EDI17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned RXB1EID16 :1;
        unsigned RXB1EID17 :1;
        unsigned :1;
        unsigned RXB1EXID :1;
        unsigned RXB1SRR :1;
        unsigned RXB1SID0 :1;
        unsigned RXB1SID1 :1;
        unsigned RXB1SID2 :1;
    };
} RXB1SIDLbits_t;
extern volatile RXB1SIDLbits_t RXB1SIDLbits __attribute__((address(0xF32)));
# 24703 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB1EIDH __attribute__((address(0xF33)));

__asm("RXB1EIDH equ 0F33h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned RXB1EID8 :1;
        unsigned RXB1EID9 :1;
        unsigned RXB1EID10 :1;
        unsigned RXB1EID11 :1;
        unsigned RXB1EID12 :1;
        unsigned RXB1EID13 :1;
        unsigned RXB1EID14 :1;
        unsigned RXB1EID15 :1;
    };
} RXB1EIDHbits_t;
extern volatile RXB1EIDHbits_t RXB1EIDHbits __attribute__((address(0xF33)));
# 24823 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB1EIDL __attribute__((address(0xF34)));

__asm("RXB1EIDL equ 0F34h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned RXB1EID0 :1;
        unsigned RXB1EID1 :1;
        unsigned RXB1EID2 :1;
        unsigned RXB1EID3 :1;
        unsigned RXB1EID4 :1;
        unsigned RXB1EID5 :1;
        unsigned RXB1EID6 :1;
        unsigned RXB1EID7 :1;
    };
} RXB1EIDLbits_t;
extern volatile RXB1EIDLbits_t RXB1EIDLbits __attribute__((address(0xF34)));
# 24943 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB1DLC __attribute__((address(0xF35)));

__asm("RXB1DLC equ 0F35h");


typedef union {
    struct {
        unsigned DLC :4;
        unsigned RB :2;
        unsigned RXRTR :1;
    };
    struct {
        unsigned DLC0 :1;
        unsigned DLC1 :1;
        unsigned DLC2 :1;
        unsigned DLC3 :1;
        unsigned RB0 :1;
        unsigned RB1 :1;
    };
    struct {
        unsigned RXB1DLC0 :1;
        unsigned RXB1DLC1 :1;
        unsigned RXB1DLC2 :1;
        unsigned RXB1DLC3 :1;
        unsigned RXB1RB0 :1;
        unsigned RXB1RB1 :1;
        unsigned RXB1RTR :1;
    };
} RXB1DLCbits_t;
extern volatile RXB1DLCbits_t RXB1DLCbits __attribute__((address(0xF35)));
# 25057 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB1D0 __attribute__((address(0xF36)));

__asm("RXB1D0 equ 0F36h");


typedef union {
    struct {
        unsigned RXB1D0 :8;
    };
    struct {
        unsigned RXB1D00 :1;
        unsigned RXB1D01 :1;
        unsigned RXB1D02 :1;
        unsigned RXB1D03 :1;
        unsigned RXB1D04 :1;
        unsigned RXB1D05 :1;
        unsigned RXB1D06 :1;
        unsigned RXB1D07 :1;
    };
} RXB1D0bits_t;
extern volatile RXB1D0bits_t RXB1D0bits __attribute__((address(0xF36)));
# 25127 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB1D1 __attribute__((address(0xF37)));

__asm("RXB1D1 equ 0F37h");


typedef union {
    struct {
        unsigned RXB1D1 :8;
    };
    struct {
        unsigned RXB1D10 :1;
        unsigned RXB1D11 :1;
        unsigned RXB1D12 :1;
        unsigned RXB1D13 :1;
        unsigned RXB1D14 :1;
        unsigned RXB1D15 :1;
        unsigned RXB1D16 :1;
        unsigned RXB1D17 :1;
    };
} RXB1D1bits_t;
extern volatile RXB1D1bits_t RXB1D1bits __attribute__((address(0xF37)));
# 25197 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB1D2 __attribute__((address(0xF38)));

__asm("RXB1D2 equ 0F38h");


typedef union {
    struct {
        unsigned RXB1D2 :8;
    };
    struct {
        unsigned RXB1D20 :1;
        unsigned RXB1D21 :1;
        unsigned RXB1D22 :1;
        unsigned RXB1D23 :1;
        unsigned RXB1D24 :1;
        unsigned RXB1D25 :1;
        unsigned RXB1D26 :1;
        unsigned RXB1D27 :1;
    };
} RXB1D2bits_t;
extern volatile RXB1D2bits_t RXB1D2bits __attribute__((address(0xF38)));
# 25267 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB1D3 __attribute__((address(0xF39)));

__asm("RXB1D3 equ 0F39h");


typedef union {
    struct {
        unsigned RXB1D3 :8;
    };
    struct {
        unsigned RXB1D30 :1;
        unsigned RXB1D31 :1;
        unsigned RXB1D32 :1;
        unsigned RXB1D33 :1;
        unsigned RXB1D34 :1;
        unsigned RXB1D35 :1;
        unsigned RXB1D36 :1;
        unsigned RXB1D37 :1;
    };
} RXB1D3bits_t;
extern volatile RXB1D3bits_t RXB1D3bits __attribute__((address(0xF39)));
# 25337 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB1D4 __attribute__((address(0xF3A)));

__asm("RXB1D4 equ 0F3Ah");


typedef union {
    struct {
        unsigned RXB1D4 :8;
    };
    struct {
        unsigned RXB1D40 :1;
        unsigned RXB1D41 :1;
        unsigned RXB1D42 :1;
        unsigned RXB1D43 :1;
        unsigned RXB1D44 :1;
        unsigned RXB1D45 :1;
        unsigned RXB1D46 :1;
        unsigned RXB1D47 :1;
    };
} RXB1D4bits_t;
extern volatile RXB1D4bits_t RXB1D4bits __attribute__((address(0xF3A)));
# 25407 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB1D5 __attribute__((address(0xF3B)));

__asm("RXB1D5 equ 0F3Bh");


typedef union {
    struct {
        unsigned RXB1D5 :8;
    };
    struct {
        unsigned RXB1D50 :1;
        unsigned RXB1D51 :1;
        unsigned RXB1D52 :1;
        unsigned RXB1D53 :1;
        unsigned RXB1D54 :1;
        unsigned RXB1D55 :1;
        unsigned RXB1D56 :1;
        unsigned RXB1D57 :1;
    };
} RXB1D5bits_t;
extern volatile RXB1D5bits_t RXB1D5bits __attribute__((address(0xF3B)));
# 25477 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB1D6 __attribute__((address(0xF3C)));

__asm("RXB1D6 equ 0F3Ch");


typedef union {
    struct {
        unsigned RXB1D6 :8;
    };
    struct {
        unsigned RXB1D60 :1;
        unsigned RXB1D61 :1;
        unsigned RXB1D62 :1;
        unsigned RXB1D63 :1;
        unsigned RXB1D64 :1;
        unsigned RXB1D65 :1;
        unsigned RXB1D66 :1;
        unsigned RXB1D67 :1;
    };
} RXB1D6bits_t;
extern volatile RXB1D6bits_t RXB1D6bits __attribute__((address(0xF3C)));
# 25547 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB1D7 __attribute__((address(0xF3D)));

__asm("RXB1D7 equ 0F3Dh");


typedef union {
    struct {
        unsigned RXB1D7 :8;
    };
    struct {
        unsigned RXB1D70 :1;
        unsigned RXB1D71 :1;
        unsigned RXB1D72 :1;
        unsigned RXB1D73 :1;
        unsigned RXB1D74 :1;
        unsigned RXB1D75 :1;
        unsigned RXB1D76 :1;
        unsigned RXB1D77 :1;
    };
} RXB1D7bits_t;
extern volatile RXB1D7bits_t RXB1D7bits __attribute__((address(0xF3D)));
# 25617 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CANSTAT_RO0 __attribute__((address(0xF3E)));

__asm("CANSTAT_RO0 equ 0F3Eh");


typedef union {
    struct {
        unsigned EICODE0 :1;
        unsigned EICODE1_ICODE0 :1;
        unsigned EICODE2_ICODE1 :1;
        unsigned EICODE3_ICODE2 :1;
        unsigned EICODE4 :1;
        unsigned OPMODE :3;
    };
    struct {
        unsigned :1;
        unsigned EICODE1 :1;
        unsigned EICODE2 :1;
        unsigned EICODE3 :1;
        unsigned :1;
        unsigned OPMODE0 :1;
        unsigned OPMODE1 :1;
        unsigned OPMODE2 :1;
    };
    struct {
        unsigned :1;
        unsigned ICODE0 :1;
        unsigned ICODE1 :1;
        unsigned ICODE2 :1;
    };
} CANSTAT_RO0bits_t;
extern volatile CANSTAT_RO0bits_t CANSTAT_RO0bits __attribute__((address(0xF3E)));
# 25728 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CANCON_RO0 __attribute__((address(0xF3F)));

__asm("CANCON_RO0 equ 0F3Fh");


typedef union {
    struct {
        unsigned FP0 :1;
        unsigned WIN0_FP1 :1;
        unsigned WIN1_FP2 :1;
        unsigned WIN2_FP3 :1;
        unsigned ABAT :1;
        unsigned REQOP :3;
    };
    struct {
        unsigned :1;
        unsigned WIN0 :1;
        unsigned WIN1 :1;
        unsigned WIN2 :1;
    };
    struct {
        unsigned :1;
        unsigned FP1 :1;
        unsigned FP2 :1;
        unsigned FP3 :1;
    };
} CANCON_RO0bits_t;
extern volatile CANCON_RO0bits_t CANCON_RO0bits __attribute__((address(0xF3F)));
# 25820 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CCP5CON __attribute__((address(0xF47)));

__asm("CCP5CON equ 0F47h");


typedef union {
    struct {
        unsigned CCP5M :4;
        unsigned DC5B :2;
    };
    struct {
        unsigned CCP5M0 :1;
        unsigned CCP5M1 :1;
        unsigned CCP5M2 :1;
        unsigned CCP5M3 :1;
        unsigned DC5B0 :1;
        unsigned DC5B1 :1;
    };
    struct {
        unsigned :4;
        unsigned CCP5Y :1;
        unsigned CCP5X :1;
    };
} CCP5CONbits_t;
extern volatile CCP5CONbits_t CCP5CONbits __attribute__((address(0xF47)));
# 25899 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned short CCPR5 __attribute__((address(0xF48)));

__asm("CCPR5 equ 0F48h");




extern volatile unsigned char CCPR5L __attribute__((address(0xF48)));

__asm("CCPR5L equ 0F48h");


typedef union {
    struct {
        unsigned CCPR5L :8;
    };
} CCPR5Lbits_t;
extern volatile CCPR5Lbits_t CCPR5Lbits __attribute__((address(0xF48)));
# 25926 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CCPR5H __attribute__((address(0xF49)));

__asm("CCPR5H equ 0F49h");


typedef union {
    struct {
        unsigned CCPR5H :8;
    };
} CCPR5Hbits_t;
extern volatile CCPR5Hbits_t CCPR5Hbits __attribute__((address(0xF49)));
# 25946 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CCP4CON __attribute__((address(0xF4A)));

__asm("CCP4CON equ 0F4Ah");


typedef union {
    struct {
        unsigned CCP4M :4;
        unsigned DC4B :2;
    };
    struct {
        unsigned CCP4M0 :1;
        unsigned CCP4M1 :1;
        unsigned CCP4M2 :1;
        unsigned CCP4M3 :1;
        unsigned DC4B0 :1;
        unsigned DC4B1 :1;
    };
    struct {
        unsigned :4;
        unsigned CCP4Y :1;
        unsigned CCP4X :1;
    };
} CCP4CONbits_t;
extern volatile CCP4CONbits_t CCP4CONbits __attribute__((address(0xF4A)));
# 26025 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned short CCPR4 __attribute__((address(0xF4B)));

__asm("CCPR4 equ 0F4Bh");




extern volatile unsigned char CCPR4L __attribute__((address(0xF4B)));

__asm("CCPR4L equ 0F4Bh");


typedef union {
    struct {
        unsigned CCPR4L :8;
    };
} CCPR4Lbits_t;
extern volatile CCPR4Lbits_t CCPR4Lbits __attribute__((address(0xF4B)));
# 26052 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CCPR4H __attribute__((address(0xF4C)));

__asm("CCPR4H equ 0F4Ch");


typedef union {
    struct {
        unsigned CCPR4H :8;
    };
} CCPR4Hbits_t;
extern volatile CCPR4Hbits_t CCPR4Hbits __attribute__((address(0xF4C)));
# 26072 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CCP3CON __attribute__((address(0xF4D)));

__asm("CCP3CON equ 0F4Dh");


typedef union {
    struct {
        unsigned CCP3M :4;
        unsigned DC3B :2;
    };
    struct {
        unsigned CCP3M0 :1;
        unsigned CCP3M1 :1;
        unsigned CCP3M2 :1;
        unsigned CCP3M3 :1;
        unsigned DC3B0 :1;
        unsigned DC3B1 :1;
    };
    struct {
        unsigned :4;
        unsigned CCP3Y :1;
        unsigned CCP3X :1;
    };
} CCP3CONbits_t;
extern volatile CCP3CONbits_t CCP3CONbits __attribute__((address(0xF4D)));
# 26151 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned short CCPR3 __attribute__((address(0xF4E)));

__asm("CCPR3 equ 0F4Eh");




extern volatile unsigned char CCPR3L __attribute__((address(0xF4E)));

__asm("CCPR3L equ 0F4Eh");


typedef union {
    struct {
        unsigned CCPR3L :8;
    };
} CCPR3Lbits_t;
extern volatile CCPR3Lbits_t CCPR3Lbits __attribute__((address(0xF4E)));
# 26178 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CCPR3H __attribute__((address(0xF4F)));

__asm("CCPR3H equ 0F4Fh");


typedef union {
    struct {
        unsigned CCPR3H :8;
    };
} CCPR3Hbits_t;
extern volatile CCPR3Hbits_t CCPR3Hbits __attribute__((address(0xF4F)));
# 26198 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CCP2CON __attribute__((address(0xF50)));

__asm("CCP2CON equ 0F50h");


extern volatile unsigned char ECCP2CON __attribute__((address(0xF50)));

__asm("ECCP2CON equ 0F50h");


typedef union {
    struct {
        unsigned CCP2M :4;
        unsigned DC2B :2;
    };
    struct {
        unsigned CCP2M0 :1;
        unsigned CCP2M1 :1;
        unsigned CCP2M2 :1;
        unsigned CCP2M3 :1;
        unsigned DC2B0 :1;
        unsigned DC2B1 :1;
    };
    struct {
        unsigned :4;
        unsigned CCP2Y :1;
        unsigned CCP2X :1;
    };
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __attribute__((address(0xF50)));
# 26280 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
typedef union {
    struct {
        unsigned CCP2M :4;
        unsigned DC2B :2;
    };
    struct {
        unsigned CCP2M0 :1;
        unsigned CCP2M1 :1;
        unsigned CCP2M2 :1;
        unsigned CCP2M3 :1;
        unsigned DC2B0 :1;
        unsigned DC2B1 :1;
    };
    struct {
        unsigned :4;
        unsigned CCP2Y :1;
        unsigned CCP2X :1;
    };
} ECCP2CONbits_t;
extern volatile ECCP2CONbits_t ECCP2CONbits __attribute__((address(0xF50)));
# 26354 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned short CCPR2 __attribute__((address(0xF51)));

__asm("CCPR2 equ 0F51h");




extern volatile unsigned char CCPR2L __attribute__((address(0xF51)));

__asm("CCPR2L equ 0F51h");


typedef union {
    struct {
        unsigned CCPR2L :8;
    };
} CCPR2Lbits_t;
extern volatile CCPR2Lbits_t CCPR2Lbits __attribute__((address(0xF51)));
# 26381 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CCPR2H __attribute__((address(0xF52)));

__asm("CCPR2H equ 0F52h");


typedef union {
    struct {
        unsigned CCPR2H :8;
    };
} CCPR2Hbits_t;
extern volatile CCPR2Hbits_t CCPR2Hbits __attribute__((address(0xF52)));
# 26401 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CTMUICON __attribute__((address(0xF53)));

__asm("CTMUICON equ 0F53h");


typedef union {
    struct {
        unsigned IRNG :2;
        unsigned ITRIM :6;
    };
    struct {
        unsigned IRNG0 :1;
        unsigned IRNG1 :1;
        unsigned ITRIM0 :1;
        unsigned ITRIM1 :1;
        unsigned ITRIM2 :1;
        unsigned ITRIM3 :1;
        unsigned ITRIM4 :1;
        unsigned ITRIM5 :1;
    };
} CTMUICONbits_t;
extern volatile CTMUICONbits_t CTMUICONbits __attribute__((address(0xF53)));
# 26477 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CTMUCONL __attribute__((address(0xF54)));

__asm("CTMUCONL equ 0F54h");


typedef union {
    struct {
        unsigned EDG1STAT :1;
        unsigned EDG2STAT :1;
        unsigned EDG1SEL :2;
        unsigned EDG1POL :1;
        unsigned EDG2SEL :2;
        unsigned EDG2POL :1;
    };
    struct {
        unsigned :2;
        unsigned EDG1SEL0 :1;
        unsigned EDG1SEL1 :1;
        unsigned :1;
        unsigned EDG2SEL0 :1;
        unsigned EDG2SEL1 :1;
    };
} CTMUCONLbits_t;
extern volatile CTMUCONLbits_t CTMUCONLbits __attribute__((address(0xF54)));
# 26555 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CTMUCONH __attribute__((address(0xF55)));

__asm("CTMUCONH equ 0F55h");


typedef union {
    struct {
        unsigned CTTRIG :1;
        unsigned IDISSEN :1;
        unsigned EDGSEQEN :1;
        unsigned EDGEN :1;
        unsigned TGEN :1;
        unsigned CTMUSIDL :1;
        unsigned :1;
        unsigned CTMUEN :1;
    };
} CTMUCONHbits_t;
extern volatile CTMUCONHbits_t CTMUCONHbits __attribute__((address(0xF55)));
# 26612 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PADCFG1 __attribute__((address(0xF56)));

__asm("PADCFG1 equ 0F56h");


typedef union {
    struct {
        unsigned CTMUDS :1;
    };
    struct {
        unsigned PMPTTL :1;
    };
} PADCFG1bits_t;
extern volatile PADCFG1bits_t PADCFG1bits __attribute__((address(0xF56)));
# 26640 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PMD2 __attribute__((address(0xF57)));

__asm("PMD2 equ 0F57h");


typedef union {
    struct {
        unsigned CMP1MD :1;
        unsigned CMP2MD :1;
        unsigned ECANMD :1;
    };
} PMD2bits_t;
extern volatile PMD2bits_t PMD2bits __attribute__((address(0xF57)));
# 26672 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PMD1 __attribute__((address(0xF58)));

__asm("PMD1 equ 0F58h");


typedef union {
    struct {
        unsigned TMR0MD :1;
        unsigned TMR1MD :1;
        unsigned TMR2MD :1;
        unsigned TMR3MD :1;
        unsigned TMR4MD :1;
        unsigned ADCMD :1;
        unsigned CTMUMD :1;
        unsigned PSPMD :1;
    };
    struct {
        unsigned EMBMD :1;
    };
} PMD1bits_t;
extern volatile PMD1bits_t PMD1bits __attribute__((address(0xF58)));
# 26742 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PMD0 __attribute__((address(0xF59)));

__asm("PMD0 equ 0F59h");


typedef union {
    struct {
        unsigned SSPMD :1;
        unsigned UART1MD :1;
        unsigned UART2MD :1;
        unsigned CCP1MD :1;
        unsigned CCP2MD :1;
        unsigned CCP3MD :1;
        unsigned CCP4MD :1;
        unsigned CCP5MD :1;
    };
    struct {
        unsigned :1;
        unsigned SPI1MD :1;
        unsigned SPI2MD :1;
    };
} PMD0bits_t;
extern volatile PMD0bits_t PMD0bits __attribute__((address(0xF59)));
# 26819 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char IOCB __attribute__((address(0xF5A)));

__asm("IOCB equ 0F5Ah");


typedef union {
    struct {
        unsigned :4;
        unsigned IOCB4 :1;
        unsigned IOCB5 :1;
        unsigned IOCB6 :1;
        unsigned IOCB7 :1;
    };
} IOCBbits_t;
extern volatile IOCBbits_t IOCBbits __attribute__((address(0xF5A)));
# 26858 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char WPUB __attribute__((address(0xF5B)));

__asm("WPUB equ 0F5Bh");


typedef union {
    struct {
        unsigned WPUB0 :1;
        unsigned WPUB1 :1;
        unsigned WPUB2 :1;
        unsigned WPUB3 :1;
        unsigned WPUB4 :1;
        unsigned WPUB5 :1;
        unsigned WPUB6 :1;
        unsigned WPUB7 :1;
    };
} WPUBbits_t;
extern volatile WPUBbits_t WPUBbits __attribute__((address(0xF5B)));
# 26920 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char ANCON1 __attribute__((address(0xF5C)));

__asm("ANCON1 equ 0F5Ch");


typedef union {
    struct {
        unsigned ANSEL8 :1;
        unsigned ANSEL9 :1;
        unsigned ANSEL10 :1;
    };
    struct {
        unsigned PCFG8 :1;
        unsigned PCFG9 :1;
        unsigned PCFG10 :1;
    };
} ANCON1bits_t;
extern volatile ANCON1bits_t ANCON1bits __attribute__((address(0xF5C)));
# 26972 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char ANCON0 __attribute__((address(0xF5D)));

__asm("ANCON0 equ 0F5Dh");


typedef union {
    struct {
        unsigned ANSEL0 :1;
        unsigned ANSEL1 :1;
        unsigned ANSEL2 :1;
        unsigned ANSEL3 :1;
        unsigned ANSEL4 :1;
    };
    struct {
        unsigned PCFG0 :1;
        unsigned PCFG1 :1;
        unsigned PCFG2 :1;
        unsigned PCFG3 :1;
        unsigned PCFG4 :1;
    };
} ANCON0bits_t;
extern volatile ANCON0bits_t ANCON0bits __attribute__((address(0xF5D)));
# 27048 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CM2CON __attribute__((address(0xF5E)));

__asm("CM2CON equ 0F5Eh");


extern volatile unsigned char CM2CON1 __attribute__((address(0xF5E)));

__asm("CM2CON1 equ 0F5Eh");


typedef union {
    struct {
        unsigned CCH :2;
        unsigned CREF :1;
        unsigned EVPOL :2;
        unsigned CPOL :1;
        unsigned COE :1;
        unsigned CON :1;
    };
    struct {
        unsigned CCH0 :1;
        unsigned CCH1 :1;
        unsigned :1;
        unsigned EVPOL0 :1;
        unsigned EVPOL1 :1;
    };
    struct {
        unsigned CCH02 :1;
        unsigned CCH12 :1;
        unsigned CREF2 :1;
        unsigned EVPOL02 :1;
        unsigned EVPOL12 :1;
        unsigned CPOL2 :1;
        unsigned COE2 :1;
        unsigned CON2 :1;
    };
} CM2CONbits_t;
extern volatile CM2CONbits_t CM2CONbits __attribute__((address(0xF5E)));
# 27178 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
typedef union {
    struct {
        unsigned CCH :2;
        unsigned CREF :1;
        unsigned EVPOL :2;
        unsigned CPOL :1;
        unsigned COE :1;
        unsigned CON :1;
    };
    struct {
        unsigned CCH0 :1;
        unsigned CCH1 :1;
        unsigned :1;
        unsigned EVPOL0 :1;
        unsigned EVPOL1 :1;
    };
    struct {
        unsigned CCH02 :1;
        unsigned CCH12 :1;
        unsigned CREF2 :1;
        unsigned EVPOL02 :1;
        unsigned EVPOL12 :1;
        unsigned CPOL2 :1;
        unsigned COE2 :1;
        unsigned CON2 :1;
    };
} CM2CON1bits_t;
extern volatile CM2CON1bits_t CM2CON1bits __attribute__((address(0xF5E)));
# 27300 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CM1CON __attribute__((address(0xF5F)));

__asm("CM1CON equ 0F5Fh");


extern volatile unsigned char CM1CON1 __attribute__((address(0xF5F)));

__asm("CM1CON1 equ 0F5Fh");


typedef union {
    struct {
        unsigned CCH :2;
        unsigned CREF :1;
        unsigned EVPOL :2;
        unsigned CPOL :1;
        unsigned COE :1;
        unsigned CON :1;
    };
    struct {
        unsigned CCH0 :1;
        unsigned CCH1 :1;
        unsigned :1;
        unsigned EVPOL0 :1;
        unsigned EVPOL1 :1;
    };
    struct {
        unsigned C1CH0 :1;
        unsigned C1CH1 :1;
        unsigned CREF1 :1;
        unsigned EVPOL01 :1;
        unsigned EVPOL11 :1;
        unsigned CPOL1 :1;
        unsigned COE1 :1;
        unsigned CON1 :1;
    };
    struct {
        unsigned CCH01 :1;
        unsigned CCH11 :1;
    };
} CM1CONbits_t;
extern volatile CM1CONbits_t CM1CONbits __attribute__((address(0xF5F)));
# 27444 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
typedef union {
    struct {
        unsigned CCH :2;
        unsigned CREF :1;
        unsigned EVPOL :2;
        unsigned CPOL :1;
        unsigned COE :1;
        unsigned CON :1;
    };
    struct {
        unsigned CCH0 :1;
        unsigned CCH1 :1;
        unsigned :1;
        unsigned EVPOL0 :1;
        unsigned EVPOL1 :1;
    };
    struct {
        unsigned C1CH0 :1;
        unsigned C1CH1 :1;
        unsigned CREF1 :1;
        unsigned EVPOL01 :1;
        unsigned EVPOL11 :1;
        unsigned CPOL1 :1;
        unsigned COE1 :1;
        unsigned CON1 :1;
    };
    struct {
        unsigned CCH01 :1;
        unsigned CCH11 :1;
    };
} CM1CON1bits_t;
extern volatile CM1CON1bits_t CM1CON1bits __attribute__((address(0xF5F)));
# 27580 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB0CON __attribute__((address(0xF60)));

__asm("RXB0CON equ 0F60h");


typedef union {
    struct {
        unsigned FILHIT0 :1;
        unsigned JTOFF_FILHIT1 :1;
        unsigned RB0DBEN_FILHIT2 :1;
        unsigned RXRTRRO_FILHIT3 :1;
        unsigned FILHIT4 :1;
        unsigned RXM0_RTRRO :1;
        unsigned RXM1 :1;
        unsigned RXFUL :1;
    };
    struct {
        unsigned :1;
        unsigned JTOFF :1;
        unsigned RB0DBEN :1;
        unsigned RXRTRRO :1;
        unsigned :1;
        unsigned RTRRO :1;
    };
    struct {
        unsigned :1;
        unsigned FILHIT1 :1;
        unsigned FILHIT2 :1;
        unsigned FILHIT3 :1;
        unsigned :1;
        unsigned RXM0 :1;
    };
    struct {
        unsigned RXB0FILHIT0 :1;
        unsigned RXB0FILHIT1 :1;
        unsigned RXB0FILHIT2 :1;
        unsigned RXB0FILHIT3 :1;
        unsigned RXB0FILHIT4 :1;
        unsigned RXB0M0 :1;
        unsigned RXB0M1 :1;
        unsigned RXB0FUL :1;
    };
    struct {
        unsigned :3;
        unsigned RXB0RTRR0 :1;
        unsigned :1;
        unsigned RXB0RTRRO :1;
    };
} RXB0CONbits_t;
extern volatile RXB0CONbits_t RXB0CONbits __attribute__((address(0xF60)));
# 27764 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB0SIDH __attribute__((address(0xF61)));

__asm("RXB0SIDH equ 0F61h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
    };
    struct {
        unsigned RXB0SID3 :1;
        unsigned RXB0SID4 :1;
        unsigned RXB0SID5 :1;
        unsigned RXB0SID6 :1;
        unsigned RXB0SID7 :1;
        unsigned RXB0SID8 :1;
        unsigned RXB0SID9 :1;
        unsigned RXB0SID10 :1;
    };
} RXB0SIDHbits_t;
extern volatile RXB0SIDHbits_t RXB0SIDHbits __attribute__((address(0xF61)));
# 27884 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB0SIDL __attribute__((address(0xF62)));

__asm("RXB0SIDL equ 0F62h");


typedef union {
    struct {
        unsigned EID :2;
        unsigned :1;
        unsigned EXID :1;
        unsigned SRR :1;
        unsigned SID :3;
    };
    struct {
        unsigned EID16 :1;
        unsigned EID17 :1;
        unsigned :3;
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
    };
    struct {
        unsigned RXB0EID16 :1;
        unsigned RXB0EID17 :1;
        unsigned :1;
        unsigned RXB0EXID :1;
        unsigned RXB0SRR :1;
        unsigned RXB0SID0 :1;
        unsigned RXB0SID1 :1;
        unsigned RXB0SID2 :1;
    };
} RXB0SIDLbits_t;
extern volatile RXB0SIDLbits_t RXB0SIDLbits __attribute__((address(0xF62)));
# 28001 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB0EIDH __attribute__((address(0xF63)));

__asm("RXB0EIDH equ 0F63h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
    };
    struct {
        unsigned RXB0EID8 :1;
        unsigned RXB0EID9 :1;
        unsigned RXB0EID10 :1;
        unsigned RXB0EID11 :1;
        unsigned RXB0EID12 :1;
        unsigned RXB0EID13 :1;
        unsigned RXB0EID14 :1;
        unsigned RXB0EID15 :1;
    };
} RXB0EIDHbits_t;
extern volatile RXB0EIDHbits_t RXB0EIDHbits __attribute__((address(0xF63)));
# 28121 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB0EIDL __attribute__((address(0xF64)));

__asm("RXB0EIDL equ 0F64h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
    };
    struct {
        unsigned RXB0EID0 :1;
        unsigned RXB0EID1 :1;
        unsigned RXB0EID2 :1;
        unsigned RXB0EID3 :1;
        unsigned RXB0EID4 :1;
        unsigned RXB0EID5 :1;
        unsigned RXB0EID6 :1;
        unsigned RXB0EID7 :1;
    };
} RXB0EIDLbits_t;
extern volatile RXB0EIDLbits_t RXB0EIDLbits __attribute__((address(0xF64)));
# 28241 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB0DLC __attribute__((address(0xF65)));

__asm("RXB0DLC equ 0F65h");


typedef union {
    struct {
        unsigned DLC :4;
        unsigned RB :2;
        unsigned RXRTR :1;
    };
    struct {
        unsigned DLC0 :1;
        unsigned DLC1 :1;
        unsigned DLC2 :1;
        unsigned DLC3 :1;
        unsigned RB0 :1;
        unsigned RB1 :1;
    };
    struct {
        unsigned RXB0DLC0 :1;
        unsigned RXB0DLC1 :1;
        unsigned RXB0DLC2 :1;
        unsigned RXB0DLC3 :1;
        unsigned RXB0RB0 :1;
        unsigned RXB0RB1 :1;
        unsigned RXB0RTR :1;
    };
} RXB0DLCbits_t;
extern volatile RXB0DLCbits_t RXB0DLCbits __attribute__((address(0xF65)));
# 28355 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB0D0 __attribute__((address(0xF66)));

__asm("RXB0D0 equ 0F66h");


typedef union {
    struct {
        unsigned RXB0D0 :8;
    };
    struct {
        unsigned RXB0D00 :1;
        unsigned RXB0D01 :1;
        unsigned RXB0D02 :1;
        unsigned RXB0D03 :1;
        unsigned RXB0D04 :1;
        unsigned RXB0D05 :1;
        unsigned RXB0D06 :1;
        unsigned RXB0D07 :1;
    };
} RXB0D0bits_t;
extern volatile RXB0D0bits_t RXB0D0bits __attribute__((address(0xF66)));
# 28425 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB0D1 __attribute__((address(0xF67)));

__asm("RXB0D1 equ 0F67h");


typedef union {
    struct {
        unsigned RXB0D1 :8;
    };
    struct {
        unsigned RXB0D10 :1;
        unsigned RXB0D11 :1;
        unsigned RXB0D12 :1;
        unsigned RXB0D13 :1;
        unsigned RXB0D14 :1;
        unsigned RXB0D15 :1;
        unsigned RXB0D16 :1;
        unsigned RXB0D17 :1;
    };
} RXB0D1bits_t;
extern volatile RXB0D1bits_t RXB0D1bits __attribute__((address(0xF67)));
# 28495 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB0D2 __attribute__((address(0xF68)));

__asm("RXB0D2 equ 0F68h");


typedef union {
    struct {
        unsigned RXB0D2 :8;
    };
    struct {
        unsigned RXB0D20 :1;
        unsigned RXB0D21 :1;
        unsigned RXB0D22 :1;
        unsigned RXB0D23 :1;
        unsigned RXB0D24 :1;
        unsigned RXB0D25 :1;
        unsigned RXB0D26 :1;
        unsigned RXB0D27 :1;
    };
} RXB0D2bits_t;
extern volatile RXB0D2bits_t RXB0D2bits __attribute__((address(0xF68)));
# 28565 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB0D3 __attribute__((address(0xF69)));

__asm("RXB0D3 equ 0F69h");


typedef union {
    struct {
        unsigned RXB0D3 :8;
    };
    struct {
        unsigned RXB0D30 :1;
        unsigned RXB0D31 :1;
        unsigned RXB0D32 :1;
        unsigned RXB0D33 :1;
        unsigned RXB0D34 :1;
        unsigned RXB0D35 :1;
        unsigned RXB0D36 :1;
        unsigned RXB0D37 :1;
    };
} RXB0D3bits_t;
extern volatile RXB0D3bits_t RXB0D3bits __attribute__((address(0xF69)));
# 28635 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB0D4 __attribute__((address(0xF6A)));

__asm("RXB0D4 equ 0F6Ah");


typedef union {
    struct {
        unsigned RXB0D4 :8;
    };
    struct {
        unsigned RXB0D40 :1;
        unsigned RXB0D41 :1;
        unsigned RXB0D42 :1;
        unsigned RXB0D43 :1;
        unsigned RXB0D44 :1;
        unsigned RXB0D45 :1;
        unsigned RXB0D46 :1;
        unsigned RXB0D47 :1;
    };
} RXB0D4bits_t;
extern volatile RXB0D4bits_t RXB0D4bits __attribute__((address(0xF6A)));
# 28705 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB0D5 __attribute__((address(0xF6B)));

__asm("RXB0D5 equ 0F6Bh");


typedef union {
    struct {
        unsigned RXB0D5 :8;
    };
    struct {
        unsigned RXB0D50 :1;
        unsigned RXB0D51 :1;
        unsigned RXB0D52 :1;
        unsigned RXB0D53 :1;
        unsigned RXB0D54 :1;
        unsigned RXB0D55 :1;
        unsigned RXB0D56 :1;
        unsigned RXB0D57 :1;
    };
} RXB0D5bits_t;
extern volatile RXB0D5bits_t RXB0D5bits __attribute__((address(0xF6B)));
# 28775 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB0D6 __attribute__((address(0xF6C)));

__asm("RXB0D6 equ 0F6Ch");


typedef union {
    struct {
        unsigned RXB0D6 :8;
    };
    struct {
        unsigned RXB0D60 :1;
        unsigned RXB0D61 :1;
        unsigned RXB0D62 :1;
        unsigned RXB0D63 :1;
        unsigned RXB0D64 :1;
        unsigned RXB0D65 :1;
        unsigned RXB0D66 :1;
        unsigned RXB0D67 :1;
    };
} RXB0D6bits_t;
extern volatile RXB0D6bits_t RXB0D6bits __attribute__((address(0xF6C)));
# 28845 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RXB0D7 __attribute__((address(0xF6D)));

__asm("RXB0D7 equ 0F6Dh");


typedef union {
    struct {
        unsigned RXB0D7 :8;
    };
    struct {
        unsigned RXB0D70 :1;
        unsigned RXB0D71 :1;
        unsigned RXB0D72 :1;
        unsigned RXB0D73 :1;
        unsigned RXB0D74 :1;
        unsigned RXB0D75 :1;
        unsigned RXB0D76 :1;
        unsigned RXB0D77 :1;
    };
} RXB0D7bits_t;
extern volatile RXB0D7bits_t RXB0D7bits __attribute__((address(0xF6D)));
# 28915 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CANSTAT __attribute__((address(0xF6E)));

__asm("CANSTAT equ 0F6Eh");


typedef union {
    struct {
        unsigned EICODE0 :1;
        unsigned EICODE1_ICODE0 :1;
        unsigned EICODE2_ICODE1 :1;
        unsigned EICODE3_ICODE2 :1;
        unsigned EICODE4 :1;
        unsigned OPMODE :3;
    };
    struct {
        unsigned :1;
        unsigned EICODE1 :1;
        unsigned EICODE2 :1;
        unsigned EICODE3 :1;
        unsigned :1;
        unsigned OPMODE0 :1;
        unsigned OPMODE1 :1;
        unsigned OPMODE2 :1;
    };
    struct {
        unsigned :1;
        unsigned ICODE0 :1;
        unsigned ICODE1 :1;
        unsigned ICODE2 :1;
    };
} CANSTATbits_t;
extern volatile CANSTATbits_t CANSTATbits __attribute__((address(0xF6E)));
# 29026 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CANCON __attribute__((address(0xF6F)));

__asm("CANCON equ 0F6Fh");


typedef union {
    struct {
        unsigned FP0 :1;
        unsigned WIN0_FP1 :1;
        unsigned WIN1_FP2 :1;
        unsigned WIN2_FP3 :1;
        unsigned ABAT :1;
        unsigned REQOP :3;
    };
    struct {
        unsigned :1;
        unsigned WIN0 :1;
        unsigned WIN1 :1;
        unsigned WIN2 :1;
    };
    struct {
        unsigned :1;
        unsigned FP1 :1;
        unsigned FP2 :1;
        unsigned FP3 :1;
    };
} CANCONbits_t;
extern volatile CANCONbits_t CANCONbits __attribute__((address(0xF6F)));
# 29118 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CIOCON __attribute__((address(0xF70)));

__asm("CIOCON equ 0F70h");


typedef union {
    struct {
        unsigned CLKSEL :1;
        unsigned :3;
        unsigned CANCAP :1;
        unsigned ENDRHI :1;
        unsigned TX2EN :1;
        unsigned TX2SRC :1;
    };
} CIOCONbits_t;
extern volatile CIOCONbits_t CIOCONbits __attribute__((address(0xF70)));
# 29163 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char COMSTAT __attribute__((address(0xF71)));

__asm("COMSTAT equ 0F71h");


typedef union {
    struct {
        unsigned EWARN :1;
        unsigned RXWARN :1;
        unsigned TXWARN :1;
        unsigned RXBP :1;
        unsigned TXBP :1;
        unsigned TXBO :1;
        unsigned RXB1OVFL :1;
        unsigned RXB0OVFL :1;
    };
    struct {
        unsigned :7;
        unsigned NOT_FIFOEMPTY :1;
    };
    struct {
        unsigned :7;
        unsigned nFIFOEMPTY :1;
    };
    struct {
        unsigned :6;
        unsigned RXBNOVFL :1;
        unsigned FIFOEMPTY :1;
    };
} COMSTATbits_t;
extern volatile COMSTATbits_t COMSTATbits __attribute__((address(0xF71)));
# 29258 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char ECANCON __attribute__((address(0xF72)));

__asm("ECANCON equ 0F72h");


typedef union {
    struct {
        unsigned EWIN :5;
        unsigned FIFOWM :1;
        unsigned MDSEL :2;
    };
    struct {
        unsigned EWIN0 :1;
        unsigned EWIN1 :1;
        unsigned EWIN2 :1;
        unsigned EWIN3 :1;
        unsigned EWIN4 :1;
        unsigned :1;
        unsigned MDSEL0 :1;
        unsigned MDSEL1 :1;
    };
} ECANCONbits_t;
extern volatile ECANCONbits_t ECANCONbits __attribute__((address(0xF72)));
# 29335 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char EEDATA __attribute__((address(0xF73)));

__asm("EEDATA equ 0F73h");


typedef union {
    struct {
        unsigned EEDATA :8;
    };
} EEDATAbits_t;
extern volatile EEDATAbits_t EEDATAbits __attribute__((address(0xF73)));
# 29355 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char EEADR __attribute__((address(0xF74)));

__asm("EEADR equ 0F74h");


typedef union {
    struct {
        unsigned EEADR :8;
    };
} EEADRbits_t;
extern volatile EEADRbits_t EEADRbits __attribute__((address(0xF74)));
# 29375 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char EEADRH __attribute__((address(0xF75)));

__asm("EEADRH equ 0F75h");


typedef union {
    struct {
        unsigned EEADRH :8;
    };
} EEADRHbits_t;
extern volatile EEADRHbits_t EEADRHbits __attribute__((address(0xF75)));
# 29395 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PIE5 __attribute__((address(0xF76)));

__asm("PIE5 equ 0F76h");


typedef union {
    struct {
        unsigned RXB0IE :1;
        unsigned RXB1IE :1;
        unsigned TXB0IE :1;
        unsigned TXB1IE :1;
        unsigned TXB2IE :1;
        unsigned ERRIE :1;
        unsigned WAKIE :1;
        unsigned IRXIE :1;
    };
    struct {
        unsigned FIFOWMIE :1;
        unsigned RXBnIE :1;
        unsigned :2;
        unsigned TXBnIE :1;
    };
} PIE5bits_t;
extern volatile PIE5bits_t PIE5bits __attribute__((address(0xF76)));
# 29478 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PIR5 __attribute__((address(0xF77)));

__asm("PIR5 equ 0F77h");


typedef union {
    struct {
        unsigned RXB0IF :1;
        unsigned RXB1IF :1;
        unsigned TXB0IF :1;
        unsigned TXB1IF :1;
        unsigned TXB2IF :1;
        unsigned ERRIF :1;
        unsigned WAKIF :1;
        unsigned IRXIF :1;
    };
    struct {
        unsigned FIFOWMIF :1;
        unsigned RXBnIF :1;
        unsigned :2;
        unsigned TXBnIF :1;
    };
} PIR5bits_t;
extern volatile PIR5bits_t PIR5bits __attribute__((address(0xF77)));
# 29561 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char IPR5 __attribute__((address(0xF78)));

__asm("IPR5 equ 0F78h");


typedef union {
    struct {
        unsigned RXB0IP :1;
        unsigned RXB1IP :1;
        unsigned TXB0IP :1;
        unsigned TXB1IP :1;
        unsigned TXB2IP :1;
        unsigned ERRIP :1;
        unsigned WAKIP :1;
        unsigned IRXIP :1;
    };
    struct {
        unsigned FIFOWMIP :1;
        unsigned RXBnIP :1;
        unsigned :2;
        unsigned TXBnIP :1;
    };
    struct {
        unsigned CCH05 :1;
        unsigned CCH15 :1;
        unsigned :1;
        unsigned EVPOL05 :1;
        unsigned EVPOL15 :1;
    };
} IPR5bits_t;
extern volatile IPR5bits_t IPR5bits __attribute__((address(0xF78)));
# 29671 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXREG2 __attribute__((address(0xF79)));

__asm("TXREG2 equ 0F79h");


typedef union {
    struct {
        unsigned TXREG2 :8;
    };
} TXREG2bits_t;
extern volatile TXREG2bits_t TXREG2bits __attribute__((address(0xF79)));
# 29691 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RCREG2 __attribute__((address(0xF7A)));

__asm("RCREG2 equ 0F7Ah");


typedef union {
    struct {
        unsigned RCREG2 :8;
    };
} RCREG2bits_t;
extern volatile RCREG2bits_t RCREG2bits __attribute__((address(0xF7A)));
# 29711 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char SPBRG2 __attribute__((address(0xF7B)));

__asm("SPBRG2 equ 0F7Bh");


typedef union {
    struct {
        unsigned SPBRG2 :8;
    };
} SPBRG2bits_t;
extern volatile SPBRG2bits_t SPBRG2bits __attribute__((address(0xF7B)));
# 29731 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char SPBRGH2 __attribute__((address(0xF7C)));

__asm("SPBRGH2 equ 0F7Ch");


typedef union {
    struct {
        unsigned SPBRGH2 :8;
    };
} SPBRGH2bits_t;
extern volatile SPBRGH2bits_t SPBRGH2bits __attribute__((address(0xF7C)));
# 29751 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char SPBRGH1 __attribute__((address(0xF7D)));

__asm("SPBRGH1 equ 0F7Dh");


typedef union {
    struct {
        unsigned SPBRGH1 :8;
    };
} SPBRGH1bits_t;
extern volatile SPBRGH1bits_t SPBRGH1bits __attribute__((address(0xF7D)));
# 29771 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char EECON2 __attribute__((address(0xF7E)));

__asm("EECON2 equ 0F7Eh");


typedef union {
    struct {
        unsigned EECON2 :8;
    };
} EECON2bits_t;
extern volatile EECON2bits_t EECON2bits __attribute__((address(0xF7E)));
# 29791 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char EECON1 __attribute__((address(0xF7F)));

__asm("EECON1 equ 0F7Fh");


typedef union {
    struct {
        unsigned RD :1;
        unsigned WR :1;
        unsigned WREN :1;
        unsigned WRERR :1;
        unsigned FREE :1;
        unsigned :1;
        unsigned CFGS :1;
        unsigned EEPGD :1;
    };
    struct {
        unsigned :6;
        unsigned EEFS :1;
    };
} EECON1bits_t;
extern volatile EECON1bits_t EECON1bits __attribute__((address(0xF7F)));
# 29857 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PORTA __attribute__((address(0xF80)));

__asm("PORTA equ 0F80h");


typedef union {
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned :1;
        unsigned RA5 :1;
        unsigned RA6 :1;
        unsigned RA7 :1;
    };
    struct {
        unsigned ULPWUIN :1;
        unsigned :4;
        unsigned LVDIN :1;
        unsigned :1;
        unsigned RJPU :1;
    };
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __attribute__((address(0xF80)));
# 29936 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PORTB __attribute__((address(0xF81)));

__asm("PORTB equ 0F81h");


typedef union {
    struct {
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RB2 :1;
        unsigned RB3 :1;
        unsigned RB4 :1;
        unsigned RB5 :1;
        unsigned RB6 :1;
        unsigned RB7 :1;
    };
    struct {
        unsigned :3;
        unsigned CCP2_PA2 :1;
    };
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __attribute__((address(0xF81)));
# 30007 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PORTC __attribute__((address(0xF82)));

__asm("PORTC equ 0F82h");


typedef union {
    struct {
        unsigned RC0 :1;
        unsigned RC1 :1;
        unsigned RC2 :1;
        unsigned RC3 :1;
        unsigned RC4 :1;
        unsigned RC5 :1;
        unsigned RC6 :1;
        unsigned RC7 :1;
    };
    struct {
        unsigned :1;
        unsigned CCP2 :1;
        unsigned PA1 :1;
    };
    struct {
        unsigned :1;
        unsigned PA2 :1;
    };
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __attribute__((address(0xF82)));
# 30093 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PORTE __attribute__((address(0xF84)));

__asm("PORTE equ 0F84h");


typedef union {
    struct {
        unsigned :3;
        unsigned RE3 :1;
    };
    struct {
        unsigned :3;
        unsigned CCP9E :1;
    };
    struct {
        unsigned :3;
        unsigned PC3E :1;
    };
} PORTEbits_t;
extern volatile PORTEbits_t PORTEbits __attribute__((address(0xF84)));
# 30132 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TMR4 __attribute__((address(0xF87)));

__asm("TMR4 equ 0F87h");


typedef union {
    struct {
        unsigned TMR4 :8;
    };
} TMR4bits_t;
extern volatile TMR4bits_t TMR4bits __attribute__((address(0xF87)));
# 30152 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char T4CON __attribute__((address(0xF88)));

__asm("T4CON equ 0F88h");


typedef union {
    struct {
        unsigned T4CKPS :2;
        unsigned TMR4ON :1;
        unsigned T4OUTPS :4;
    };
    struct {
        unsigned T4CKPS0 :1;
        unsigned T4CKPS1 :1;
        unsigned :1;
        unsigned T4OUTPS0 :1;
        unsigned T4OUTPS1 :1;
        unsigned T4OUTPS2 :1;
        unsigned T4OUTPS3 :1;
    };
} T4CONbits_t;
extern volatile T4CONbits_t T4CONbits __attribute__((address(0xF88)));
# 30223 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char LATA __attribute__((address(0xF89)));

__asm("LATA equ 0F89h");


typedef union {
    struct {
        unsigned LATA0 :1;
        unsigned LATA1 :1;
        unsigned LATA2 :1;
        unsigned LATA3 :1;
        unsigned :1;
        unsigned LATA5 :1;
        unsigned LATA6 :1;
        unsigned LATA7 :1;
    };
    struct {
        unsigned LA0 :1;
        unsigned LA1 :1;
        unsigned LA2 :1;
        unsigned LA3 :1;
        unsigned :1;
        unsigned LA5 :1;
        unsigned LA6 :1;
        unsigned LA7 :1;
    };
} LATAbits_t;
extern volatile LATAbits_t LATAbits __attribute__((address(0xF89)));
# 30325 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char LATB __attribute__((address(0xF8A)));

__asm("LATB equ 0F8Ah");


typedef union {
    struct {
        unsigned LATB0 :1;
        unsigned LATB1 :1;
        unsigned LATB2 :1;
        unsigned LATB3 :1;
        unsigned LATB4 :1;
        unsigned LATB5 :1;
        unsigned LATB6 :1;
        unsigned LATB7 :1;
    };
    struct {
        unsigned LB0 :1;
        unsigned LB1 :1;
        unsigned LB2 :1;
        unsigned LB3 :1;
        unsigned LB4 :1;
        unsigned LB5 :1;
        unsigned LB6 :1;
        unsigned LB7 :1;
    };
} LATBbits_t;
extern volatile LATBbits_t LATBbits __attribute__((address(0xF8A)));
# 30437 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char LATC __attribute__((address(0xF8B)));

__asm("LATC equ 0F8Bh");


typedef union {
    struct {
        unsigned LATC0 :1;
        unsigned LATC1 :1;
        unsigned LATC2 :1;
        unsigned LATC3 :1;
        unsigned LATC4 :1;
        unsigned LATC5 :1;
        unsigned LATC6 :1;
        unsigned LATC7 :1;
    };
    struct {
        unsigned LC0 :1;
        unsigned LC1 :1;
        unsigned LC2 :1;
        unsigned LC3 :1;
        unsigned LC4 :1;
        unsigned LC5 :1;
        unsigned LC6 :1;
        unsigned LC7 :1;
    };
} LATCbits_t;
extern volatile LATCbits_t LATCbits __attribute__((address(0xF8B)));
# 30549 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char SLRCON __attribute__((address(0xF90)));

__asm("SLRCON equ 0F90h");


typedef union {
    struct {
        unsigned SLRA :1;
        unsigned SLRB :1;
        unsigned SLRC :1;
    };
} SLRCONbits_t;
extern volatile SLRCONbits_t SLRCONbits __attribute__((address(0xF90)));
# 30581 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char ODCON __attribute__((address(0xF91)));

__asm("ODCON equ 0F91h");


typedef union {
    struct {
        unsigned U1OD :1;
        unsigned U2OD :1;
        unsigned CCP1OD :1;
        unsigned CCP2OD :1;
        unsigned CCP3OD :1;
        unsigned CCP4OD :1;
        unsigned CCP5OD :1;
        unsigned SSPOD :1;
    };
} ODCONbits_t;
extern volatile ODCONbits_t ODCONbits __attribute__((address(0xF91)));
# 30643 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TRISA __attribute__((address(0xF92)));

__asm("TRISA equ 0F92h");


typedef union {
    struct {
        unsigned TRISA0 :1;
        unsigned TRISA1 :1;
        unsigned TRISA2 :1;
        unsigned TRISA3 :1;
        unsigned :1;
        unsigned TRISA5 :1;
        unsigned TRISA6 :1;
        unsigned TRISA7 :1;
    };
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __attribute__((address(0xF92)));
# 30700 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TRISB __attribute__((address(0xF93)));

__asm("TRISB equ 0F93h");


typedef union {
    struct {
        unsigned TRISB0 :1;
        unsigned TRISB1 :1;
        unsigned TRISB2 :1;
        unsigned TRISB3 :1;
        unsigned TRISB4 :1;
        unsigned TRISB5 :1;
        unsigned TRISB6 :1;
        unsigned TRISB7 :1;
    };
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __attribute__((address(0xF93)));
# 30762 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TRISC __attribute__((address(0xF94)));

__asm("TRISC equ 0F94h");


typedef union {
    struct {
        unsigned TRISC0 :1;
        unsigned TRISC1 :1;
        unsigned TRISC2 :1;
        unsigned TRISC3 :1;
        unsigned TRISC4 :1;
        unsigned TRISC5 :1;
        unsigned TRISC6 :1;
        unsigned TRISC7 :1;
    };
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __attribute__((address(0xF94)));
# 30824 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CCPTMRS __attribute__((address(0xF99)));

__asm("CCPTMRS equ 0F99h");


typedef union {
    struct {
        unsigned C1TSEL :1;
        unsigned C2TSEL :1;
        unsigned C3TSEL :1;
        unsigned C4TSEL :1;
        unsigned C5TSEL :1;
    };
} CCPTMRSbits_t;
extern volatile CCPTMRSbits_t CCPTMRSbits __attribute__((address(0xF99)));
# 30868 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char REFOCON __attribute__((address(0xF9A)));

__asm("REFOCON equ 0F9Ah");


typedef union {
    struct {
        unsigned RODIV :4;
        unsigned ROSEL :1;
        unsigned ROSSLP :1;
        unsigned :1;
        unsigned ROON :1;
    };
    struct {
        unsigned RODIV0 :1;
        unsigned RODIV1 :1;
        unsigned RODIV2 :1;
        unsigned RODIV3 :1;
    };
} REFOCONbits_t;
extern volatile REFOCONbits_t REFOCONbits __attribute__((address(0xF9A)));
# 30933 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char OSCTUNE __attribute__((address(0xF9B)));

__asm("OSCTUNE equ 0F9Bh");


typedef union {
    struct {
        unsigned TUN :6;
        unsigned PLLEN :1;
        unsigned INTSRC :1;
    };
    struct {
        unsigned TUN0 :1;
        unsigned TUN1 :1;
        unsigned TUN2 :1;
        unsigned TUN3 :1;
        unsigned TUN4 :1;
        unsigned TUN5 :1;
    };
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __attribute__((address(0xF9B)));
# 31003 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PSTR1CON __attribute__((address(0xF9C)));

__asm("PSTR1CON equ 0F9Ch");


typedef union {
    struct {
        unsigned STRA :1;
        unsigned STRB :1;
        unsigned STRC :1;
        unsigned STRD :1;
        unsigned STRSYNC :1;
        unsigned :1;
        unsigned CMPL :2;
    };
    struct {
        unsigned :6;
        unsigned CMPL0 :1;
        unsigned CMPL1 :1;
    };
} PSTR1CONbits_t;
extern volatile PSTR1CONbits_t PSTR1CONbits __attribute__((address(0xF9C)));
# 31069 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PIE1 __attribute__((address(0xF9D)));

__asm("PIE1 equ 0F9Dh");


typedef union {
    struct {
        unsigned TMR1IE :1;
        unsigned TMR2IE :1;
        unsigned TMR1GIE :1;
        unsigned SSPIE :1;
        unsigned TX1IE :1;
        unsigned RC1IE :1;
        unsigned ADIE :1;
    };
    struct {
        unsigned :4;
        unsigned TXIE :1;
        unsigned RCIE :1;
    };
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __attribute__((address(0xF9D)));
# 31140 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PIR1 __attribute__((address(0xF9E)));

__asm("PIR1 equ 0F9Eh");


typedef union {
    struct {
        unsigned TMR1IF :1;
        unsigned TMR2IF :1;
        unsigned TMR1GIF :1;
        unsigned SSPIF :1;
        unsigned TX1IF :1;
        unsigned RC1IF :1;
        unsigned ADIF :1;
    };
    struct {
        unsigned :4;
        unsigned TXIF :1;
        unsigned RCIF :1;
    };
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __attribute__((address(0xF9E)));
# 31211 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char IPR1 __attribute__((address(0xF9F)));

__asm("IPR1 equ 0F9Fh");


typedef union {
    struct {
        unsigned TMR1IP :1;
        unsigned TMR2IP :1;
        unsigned TMR1GIP :1;
        unsigned SSPIP :1;
        unsigned TX1IP :1;
        unsigned RC1IP :1;
        unsigned ADIP :1;
    };
    struct {
        unsigned :4;
        unsigned TXIP :1;
        unsigned RCIP :1;
    };
} IPR1bits_t;
extern volatile IPR1bits_t IPR1bits __attribute__((address(0xF9F)));
# 31282 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PIE2 __attribute__((address(0xFA0)));

__asm("PIE2 equ 0FA0h");


typedef union {
    struct {
        unsigned TMR3GIE :1;
        unsigned TMR3IE :1;
        unsigned HLVDIE :1;
        unsigned BCLIE :1;
        unsigned :3;
        unsigned OSCFIE :1;
    };
    struct {
        unsigned :2;
        unsigned LVDIE :1;
    };
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __attribute__((address(0xFA0)));
# 31336 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PIR2 __attribute__((address(0xFA1)));

__asm("PIR2 equ 0FA1h");


typedef union {
    struct {
        unsigned TMR3GIF :1;
        unsigned TMR3IF :1;
        unsigned HLVDIF :1;
        unsigned BCLIF :1;
        unsigned :3;
        unsigned OSCFIF :1;
    };
    struct {
        unsigned :2;
        unsigned LVDIF :1;
    };
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __attribute__((address(0xFA1)));
# 31390 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char IPR2 __attribute__((address(0xFA2)));

__asm("IPR2 equ 0FA2h");


typedef union {
    struct {
        unsigned TMR3GIP :1;
        unsigned TMR3IP :1;
        unsigned HLVDIP :1;
        unsigned BCLIP :1;
        unsigned :3;
        unsigned OSCFIP :1;
    };
    struct {
        unsigned :2;
        unsigned LVDIP :1;
    };
} IPR2bits_t;
extern volatile IPR2bits_t IPR2bits __attribute__((address(0xFA2)));
# 31444 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PIE3 __attribute__((address(0xFA3)));

__asm("PIE3 equ 0FA3h");


typedef union {
    struct {
        unsigned :1;
        unsigned CCP1IE :1;
        unsigned CCP2IE :1;
        unsigned CTMUIE :1;
        unsigned TX2IE :1;
        unsigned RC2IE :1;
    };
    struct {
        unsigned :1;
        unsigned RXB1IE :1;
        unsigned TXB0IE :1;
        unsigned TXB1IE :1;
        unsigned TXB2IE :1;
    };
    struct {
        unsigned :1;
        unsigned RXBNIE :1;
        unsigned :2;
        unsigned TXBNIE :1;
    };
} PIE3bits_t;
extern volatile PIE3bits_t PIE3bits __attribute__((address(0xFA3)));
# 31532 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PIR3 __attribute__((address(0xFA4)));

__asm("PIR3 equ 0FA4h");


typedef union {
    struct {
        unsigned :1;
        unsigned CCP1IF :1;
        unsigned CCP2IF :1;
        unsigned CTMUIF :1;
        unsigned TX2IF :1;
        unsigned RC2IF :1;
    };
    struct {
        unsigned :1;
        unsigned RXBNIF :1;
        unsigned :2;
        unsigned TXBNIF :1;
    };
} PIR3bits_t;
extern volatile PIR3bits_t PIR3bits __attribute__((address(0xFA4)));
# 31593 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char IPR3 __attribute__((address(0xFA5)));

__asm("IPR3 equ 0FA5h");


typedef union {
    struct {
        unsigned :1;
        unsigned CCP1IP :1;
        unsigned CCP2IP :1;
        unsigned CTMUIP :1;
        unsigned TX2IP :1;
        unsigned RC2IP :1;
    };
    struct {
        unsigned :1;
        unsigned RXBNIP :1;
        unsigned :2;
        unsigned TXBNIP :1;
    };
} IPR3bits_t;
extern volatile IPR3bits_t IPR3bits __attribute__((address(0xFA5)));
# 31654 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RCSTA2 __attribute__((address(0xFA6)));

__asm("RCSTA2 equ 0FA6h");


typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
    struct {
        unsigned RX9D2 :1;
        unsigned OERR2 :1;
        unsigned FERR2 :1;
        unsigned ADDEN2 :1;
        unsigned CREN2 :1;
        unsigned SREN2 :1;
        unsigned RX92 :1;
        unsigned SPEN2 :1;
    };
    struct {
        unsigned RCD82 :1;
        unsigned :5;
        unsigned RC8_92 :1;
    };
    struct {
        unsigned :6;
        unsigned RC92 :1;
    };
} RCSTA2bits_t;
extern volatile RCSTA2bits_t RCSTA2bits __attribute__((address(0xFA6)));
# 31790 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char BAUDCON1 __attribute__((address(0xFA7)));

__asm("BAUDCON1 equ 0FA7h");


typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned TXCKP :1;
        unsigned RXDTP :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
    struct {
        unsigned :6;
        unsigned RCMT :1;
    };
    struct {
        unsigned ABDEN1 :1;
        unsigned WUE1 :1;
        unsigned :1;
        unsigned BRG161 :1;
        unsigned CKTXP :1;
        unsigned DTRXP :1;
        unsigned RCIDL1 :1;
        unsigned ABDOVF1 :1;
    };
    struct {
        unsigned :4;
        unsigned SCKP :1;
        unsigned DTRXP1 :1;
        unsigned RCMT1 :1;
    };
    struct {
        unsigned :4;
        unsigned SCKP1 :1;
        unsigned RXDTP1 :1;
    };
    struct {
        unsigned :4;
        unsigned TXCKP1 :1;
    };
} BAUDCON1bits_t;
extern volatile BAUDCON1bits_t BAUDCON1bits __attribute__((address(0xFA7)));
# 31946 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char HLVDCON __attribute__((address(0xFA8)));

__asm("HLVDCON equ 0FA8h");


typedef union {
    struct {
        unsigned HLVDL :4;
        unsigned HLVDEN :1;
        unsigned IRVST :1;
        unsigned BGVST :1;
        unsigned VDIRMAG :1;
    };
    struct {
        unsigned HLVDL0 :1;
        unsigned HLVDL1 :1;
        unsigned HLVDL2 :1;
        unsigned HLVDL3 :1;
    };
} HLVDCONbits_t;
extern volatile HLVDCONbits_t HLVDCONbits __attribute__((address(0xFA8)));
# 32016 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PR4 __attribute__((address(0xFA9)));

__asm("PR4 equ 0FA9h");


typedef union {
    struct {
        unsigned PR4 :8;
    };
} PR4bits_t;
extern volatile PR4bits_t PR4bits __attribute__((address(0xFA9)));
# 32036 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char T1GCON __attribute__((address(0xFAA)));

__asm("T1GCON equ 0FAAh");


typedef union {
    struct {
        unsigned :3;
        unsigned T1GGO_NOT_T1DONE :1;
    };
    struct {
        unsigned T1GSS :2;
        unsigned T1GVAL :1;
        unsigned T1GGO_nT1DONE :1;
        unsigned T1GSPM :1;
        unsigned T1GTM :1;
        unsigned T1GPOL :1;
        unsigned TMR1GE :1;
    };
    struct {
        unsigned T1GSS0 :1;
        unsigned T1GSS1 :1;
        unsigned :1;
        unsigned T1GGO :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_T1DONE :1;
    };
    struct {
        unsigned :3;
        unsigned nT1DONE :1;
    };
} T1GCONbits_t;
extern volatile T1GCONbits_t T1GCONbits __attribute__((address(0xFAA)));
# 32140 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RCSTA1 __attribute__((address(0xFAB)));

__asm("RCSTA1 equ 0FABh");


extern volatile unsigned char RCSTA __attribute__((address(0xFAB)));

__asm("RCSTA equ 0FABh");


typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
    struct {
        unsigned RCD8 :1;
        unsigned :2;
        unsigned ADEN :1;
        unsigned :2;
        unsigned RC9 :1;
    };
    struct {
        unsigned :6;
        unsigned NOT_RC8 :1;
    };
    struct {
        unsigned :6;
        unsigned nRC8 :1;
    };
    struct {
        unsigned :6;
        unsigned RC8_9 :1;
    };
    struct {
        unsigned RX9D1 :1;
        unsigned OERR1 :1;
        unsigned FERR1 :1;
        unsigned ADDEN1 :1;
        unsigned CREN1 :1;
        unsigned SREN1 :1;
        unsigned RX91 :1;
        unsigned SPEN1 :1;
    };
    struct {
        unsigned :5;
        unsigned SRENA :1;
    };
} RCSTA1bits_t;
extern volatile RCSTA1bits_t RCSTA1bits __attribute__((address(0xFAB)));
# 32313 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
    struct {
        unsigned RCD8 :1;
        unsigned :2;
        unsigned ADEN :1;
        unsigned :2;
        unsigned RC9 :1;
    };
    struct {
        unsigned :6;
        unsigned NOT_RC8 :1;
    };
    struct {
        unsigned :6;
        unsigned nRC8 :1;
    };
    struct {
        unsigned :6;
        unsigned RC8_9 :1;
    };
    struct {
        unsigned RX9D1 :1;
        unsigned OERR1 :1;
        unsigned FERR1 :1;
        unsigned ADDEN1 :1;
        unsigned CREN1 :1;
        unsigned SREN1 :1;
        unsigned RX91 :1;
        unsigned SPEN1 :1;
    };
    struct {
        unsigned :5;
        unsigned SRENA :1;
    };
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __attribute__((address(0xFAB)));
# 32478 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXSTA1 __attribute__((address(0xFAC)));

__asm("TXSTA1 equ 0FACh");


extern volatile unsigned char TXSTA __attribute__((address(0xFAC)));

__asm("TXSTA equ 0FACh");


typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned SENDB :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
    struct {
        unsigned TXD8 :1;
        unsigned :5;
        unsigned TX8_9 :1;
    };
    struct {
        unsigned :6;
        unsigned NOT_TX8 :1;
    };
    struct {
        unsigned :6;
        unsigned nTX8 :1;
    };
    struct {
        unsigned TX9D1 :1;
        unsigned TRMT1 :1;
        unsigned BRGH1 :1;
        unsigned SENDB1 :1;
        unsigned SYNC1 :1;
        unsigned TXEN1 :1;
        unsigned TX91 :1;
        unsigned CSRC1 :1;
    };
} TXSTA1bits_t;
extern volatile TXSTA1bits_t TXSTA1bits __attribute__((address(0xFAC)));
# 32626 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned SENDB :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
    struct {
        unsigned TXD8 :1;
        unsigned :5;
        unsigned TX8_9 :1;
    };
    struct {
        unsigned :6;
        unsigned NOT_TX8 :1;
    };
    struct {
        unsigned :6;
        unsigned nTX8 :1;
    };
    struct {
        unsigned TX9D1 :1;
        unsigned TRMT1 :1;
        unsigned BRGH1 :1;
        unsigned SENDB1 :1;
        unsigned SYNC1 :1;
        unsigned TXEN1 :1;
        unsigned TX91 :1;
        unsigned CSRC1 :1;
    };
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __attribute__((address(0xFAC)));
# 32766 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXREG1 __attribute__((address(0xFAD)));

__asm("TXREG1 equ 0FADh");


extern volatile unsigned char TXREG __attribute__((address(0xFAD)));

__asm("TXREG equ 0FADh");


typedef union {
    struct {
        unsigned TXREG1 :8;
    };
} TXREG1bits_t;
extern volatile TXREG1bits_t TXREG1bits __attribute__((address(0xFAD)));







typedef union {
    struct {
        unsigned TXREG1 :8;
    };
} TXREGbits_t;
extern volatile TXREGbits_t TXREGbits __attribute__((address(0xFAD)));
# 32804 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RCREG1 __attribute__((address(0xFAE)));

__asm("RCREG1 equ 0FAEh");


extern volatile unsigned char RCREG __attribute__((address(0xFAE)));

__asm("RCREG equ 0FAEh");


typedef union {
    struct {
        unsigned RCREG1 :8;
    };
} RCREG1bits_t;
extern volatile RCREG1bits_t RCREG1bits __attribute__((address(0xFAE)));







typedef union {
    struct {
        unsigned RCREG1 :8;
    };
} RCREGbits_t;
extern volatile RCREGbits_t RCREGbits __attribute__((address(0xFAE)));
# 32842 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char SPBRG1 __attribute__((address(0xFAF)));

__asm("SPBRG1 equ 0FAFh");


extern volatile unsigned char SPBRG __attribute__((address(0xFAF)));

__asm("SPBRG equ 0FAFh");


typedef union {
    struct {
        unsigned SPBRG1 :8;
    };
} SPBRG1bits_t;
extern volatile SPBRG1bits_t SPBRG1bits __attribute__((address(0xFAF)));







typedef union {
    struct {
        unsigned SPBRG1 :8;
    };
} SPBRGbits_t;
extern volatile SPBRGbits_t SPBRGbits __attribute__((address(0xFAF)));
# 32880 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char T3GCON __attribute__((address(0xFB0)));

__asm("T3GCON equ 0FB0h");


typedef union {
    struct {
        unsigned :3;
        unsigned T3GGO_NOT_T3DONE :1;
    };
    struct {
        unsigned T3GSS :2;
        unsigned T3GVAL :1;
        unsigned T3GGO_nT3DONE :1;
        unsigned T3GSPM :1;
        unsigned T3GTM :1;
        unsigned T3GPOL :1;
        unsigned TMR3GE :1;
    };
    struct {
        unsigned T3GSS0 :1;
        unsigned T3GSS1 :1;
        unsigned :1;
        unsigned T3GGO :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_T3DONE :1;
    };
    struct {
        unsigned :3;
        unsigned nT3DONE :1;
    };
} T3GCONbits_t;
extern volatile T3GCONbits_t T3GCONbits __attribute__((address(0xFB0)));
# 32984 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char T3CON __attribute__((address(0xFB1)));

__asm("T3CON equ 0FB1h");


typedef union {
    struct {
        unsigned :2;
        unsigned NOT_T3SYNC :1;
    };
    struct {
        unsigned TMR3ON :1;
        unsigned RD16 :1;
        unsigned nT3SYNC :1;
        unsigned SOSCEN :1;
        unsigned T3CKPS :2;
        unsigned TMR3CS :2;
    };
    struct {
        unsigned :4;
        unsigned T3CKPS0 :1;
        unsigned T3CKPS1 :1;
        unsigned TMR3CS0 :1;
        unsigned TMR3CS1 :1;
    };
    struct {
        unsigned :3;
        unsigned SOSCEN3 :1;
        unsigned :3;
        unsigned RD163 :1;
    };
    struct {
        unsigned :7;
        unsigned T3RD16 :1;
    };
} T3CONbits_t;
extern volatile T3CONbits_t T3CONbits __attribute__((address(0xFB1)));
# 33095 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned short TMR3 __attribute__((address(0xFB2)));

__asm("TMR3 equ 0FB2h");




extern volatile unsigned char TMR3L __attribute__((address(0xFB2)));

__asm("TMR3L equ 0FB2h");


typedef union {
    struct {
        unsigned TMR3L :8;
    };
} TMR3Lbits_t;
extern volatile TMR3Lbits_t TMR3Lbits __attribute__((address(0xFB2)));
# 33122 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TMR3H __attribute__((address(0xFB3)));

__asm("TMR3H equ 0FB3h");


typedef union {
    struct {
        unsigned TMR3H :8;
    };
} TMR3Hbits_t;
extern volatile TMR3Hbits_t TMR3Hbits __attribute__((address(0xFB3)));
# 33142 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CMSTAT __attribute__((address(0xFB4)));

__asm("CMSTAT equ 0FB4h");


extern volatile unsigned char CMSTATUS __attribute__((address(0xFB4)));

__asm("CMSTATUS equ 0FB4h");


typedef union {
    struct {
        unsigned :6;
        unsigned CMP1OUT :1;
        unsigned CMP2OUT :1;
    };
    struct {
        unsigned :6;
        unsigned C2OUT :1;
        unsigned C3OUT :1;
    };
} CMSTATbits_t;
extern volatile CMSTATbits_t CMSTATbits __attribute__((address(0xFB4)));
# 33187 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
typedef union {
    struct {
        unsigned :6;
        unsigned CMP1OUT :1;
        unsigned CMP2OUT :1;
    };
    struct {
        unsigned :6;
        unsigned C2OUT :1;
        unsigned C3OUT :1;
    };
} CMSTATUSbits_t;
extern volatile CMSTATUSbits_t CMSTATUSbits __attribute__((address(0xFB4)));
# 33224 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CVRCON __attribute__((address(0xFB5)));

__asm("CVRCON equ 0FB5h");


typedef union {
    struct {
        unsigned CVR :5;
        unsigned CVRSS :1;
        unsigned CVROE :1;
        unsigned CVREN :1;
    };
    struct {
        unsigned CVR0 :1;
        unsigned CVR1 :1;
        unsigned CVR2 :1;
        unsigned CVR3 :1;
        unsigned CVR4 :1;
    };
    struct {
        unsigned :5;
        unsigned CVRR :1;
        unsigned CVROEN :1;
    };
} CVRCONbits_t;
extern volatile CVRCONbits_t CVRCONbits __attribute__((address(0xFB5)));
# 33309 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PIE4 __attribute__((address(0xFB6)));

__asm("PIE4 equ 0FB6h");


typedef union {
    struct {
        unsigned CCP3IE :1;
        unsigned CCP4IE :1;
        unsigned CCP5IE :1;
        unsigned :1;
        unsigned CMP1IE :1;
        unsigned CMP2IE :1;
        unsigned EEIE :1;
        unsigned TMR4IE :1;
    };
} PIE4bits_t;
extern volatile PIE4bits_t PIE4bits __attribute__((address(0xFB6)));
# 33366 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PIR4 __attribute__((address(0xFB7)));

__asm("PIR4 equ 0FB7h");


typedef union {
    struct {
        unsigned CCP3IF :1;
        unsigned CCP4IF :1;
        unsigned CCP5IF :1;
        unsigned :1;
        unsigned CMP1IF :1;
        unsigned CMP2IF :1;
        unsigned EEIF :1;
        unsigned TMR4IF :1;
    };
} PIR4bits_t;
extern volatile PIR4bits_t PIR4bits __attribute__((address(0xFB7)));
# 33423 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char IPR4 __attribute__((address(0xFB8)));

__asm("IPR4 equ 0FB8h");


typedef union {
    struct {
        unsigned CCP3IP :1;
        unsigned CCP4IP :1;
        unsigned CCP5IP :1;
        unsigned :1;
        unsigned CMP1IP :1;
        unsigned CMP2IP :1;
        unsigned EEIP :1;
        unsigned TMR4IP :1;
    };
    struct {
        unsigned CCIP3IP :1;
    };
} IPR4bits_t;
extern volatile IPR4bits_t IPR4bits __attribute__((address(0xFB8)));
# 33488 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char BAUDCON2 __attribute__((address(0xFB9)));

__asm("BAUDCON2 equ 0FB9h");


typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned TXCKP :1;
        unsigned RXDTP :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
    struct {
        unsigned :6;
        unsigned RCMT :1;
    };
    struct {
        unsigned ABDEN2 :1;
        unsigned WUE2 :1;
        unsigned :1;
        unsigned BRG162 :1;
        unsigned SCKP2 :1;
        unsigned DTRXP2 :1;
        unsigned RCIDL2 :1;
        unsigned ABDOVF2 :1;
    };
    struct {
        unsigned :4;
        unsigned TXCKP2 :1;
        unsigned RXDTP2 :1;
        unsigned RCMT2 :1;
    };
} BAUDCON2bits_t;
extern volatile BAUDCON2bits_t BAUDCON2bits __attribute__((address(0xFB9)));
# 33620 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TXSTA2 __attribute__((address(0xFBA)));

__asm("TXSTA2 equ 0FBAh");


typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned SENDB :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
    struct {
        unsigned TX9D2 :1;
        unsigned TRMT2 :1;
        unsigned BRGH2 :1;
        unsigned SENDB2 :1;
        unsigned SYNC2 :1;
        unsigned TXEN2 :1;
        unsigned TX92 :1;
        unsigned CSRC2 :1;
    };
    struct {
        unsigned TXD82 :1;
        unsigned :5;
        unsigned TX8_92 :1;
    };
} TXSTA2bits_t;
extern volatile TXSTA2bits_t TXSTA2bits __attribute__((address(0xFBA)));
# 33747 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CCP1CON __attribute__((address(0xFBB)));

__asm("CCP1CON equ 0FBBh");


extern volatile unsigned char ECCP1CON __attribute__((address(0xFBB)));

__asm("ECCP1CON equ 0FBBh");


typedef union {
    struct {
        unsigned CCP1M :4;
        unsigned DC1B :2;
        unsigned P1M :2;
    };
    struct {
        unsigned CCP1M0 :1;
        unsigned CCP1M1 :1;
        unsigned CCP1M2 :1;
        unsigned CCP1M3 :1;
        unsigned DC1B0 :1;
        unsigned DC1B1 :1;
        unsigned P1M0 :1;
        unsigned P1M1 :1;
    };
    struct {
        unsigned :4;
        unsigned CCP1Y :1;
        unsigned CCP1X :1;
    };
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __attribute__((address(0xFBB)));
# 33847 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
typedef union {
    struct {
        unsigned CCP1M :4;
        unsigned DC1B :2;
        unsigned P1M :2;
    };
    struct {
        unsigned CCP1M0 :1;
        unsigned CCP1M1 :1;
        unsigned CCP1M2 :1;
        unsigned CCP1M3 :1;
        unsigned DC1B0 :1;
        unsigned DC1B1 :1;
        unsigned P1M0 :1;
        unsigned P1M1 :1;
    };
    struct {
        unsigned :4;
        unsigned CCP1Y :1;
        unsigned CCP1X :1;
    };
} ECCP1CONbits_t;
extern volatile ECCP1CONbits_t ECCP1CONbits __attribute__((address(0xFBB)));
# 33939 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned short CCPR1 __attribute__((address(0xFBC)));

__asm("CCPR1 equ 0FBCh");




extern volatile unsigned char CCPR1L __attribute__((address(0xFBC)));

__asm("CCPR1L equ 0FBCh");


typedef union {
    struct {
        unsigned CCPR1L :8;
    };
} CCPR1Lbits_t;
extern volatile CCPR1Lbits_t CCPR1Lbits __attribute__((address(0xFBC)));
# 33966 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char CCPR1H __attribute__((address(0xFBD)));

__asm("CCPR1H equ 0FBDh");


typedef union {
    struct {
        unsigned CCPR1H :8;
    };
} CCPR1Hbits_t;
extern volatile CCPR1Hbits_t CCPR1Hbits __attribute__((address(0xFBD)));
# 33986 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char ECCP1DEL __attribute__((address(0xFBE)));

__asm("ECCP1DEL equ 0FBEh");


extern volatile unsigned char PWM1CON __attribute__((address(0xFBE)));

__asm("PWM1CON equ 0FBEh");


typedef union {
    struct {
        unsigned P1DC :7;
        unsigned P1RSEN :1;
    };
    struct {
        unsigned P1DC0 :1;
        unsigned P1DC1 :1;
        unsigned P1DC2 :1;
        unsigned P1DC3 :1;
        unsigned P1DC4 :1;
        unsigned P1DC5 :1;
        unsigned P1DC6 :1;
    };
} ECCP1DELbits_t;
extern volatile ECCP1DELbits_t ECCP1DELbits __attribute__((address(0xFBE)));
# 34059 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
typedef union {
    struct {
        unsigned P1DC :7;
        unsigned P1RSEN :1;
    };
    struct {
        unsigned P1DC0 :1;
        unsigned P1DC1 :1;
        unsigned P1DC2 :1;
        unsigned P1DC3 :1;
        unsigned P1DC4 :1;
        unsigned P1DC5 :1;
        unsigned P1DC6 :1;
    };
} PWM1CONbits_t;
extern volatile PWM1CONbits_t PWM1CONbits __attribute__((address(0xFBE)));
# 34124 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char ECCP1AS __attribute__((address(0xFBF)));

__asm("ECCP1AS equ 0FBFh");


typedef union {
    struct {
        unsigned PSS1BD :2;
        unsigned PSS1AC :2;
        unsigned ECCP1AS :3;
        unsigned ECCP1ASE :1;
    };
    struct {
        unsigned PSS1BD0 :1;
        unsigned PSS1BD1 :1;
        unsigned PSS1AC0 :1;
        unsigned PSS1AC1 :1;
        unsigned ECCP1AS0 :1;
        unsigned ECCP1AS1 :1;
        unsigned ECCP1AS2 :1;
    };
} ECCP1ASbits_t;
extern volatile ECCP1ASbits_t ECCP1ASbits __attribute__((address(0xFBF)));
# 34206 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char ADCON2 __attribute__((address(0xFC0)));

__asm("ADCON2 equ 0FC0h");


typedef union {
    struct {
        unsigned ADCS :3;
        unsigned ACQT :3;
        unsigned :1;
        unsigned ADFM :1;
    };
    struct {
        unsigned ADCS0 :1;
        unsigned ADCS1 :1;
        unsigned ADCS2 :1;
        unsigned ACQT0 :1;
        unsigned ACQT1 :1;
        unsigned ACQT2 :1;
    };
} ADCON2bits_t;
extern volatile ADCON2bits_t ADCON2bits __attribute__((address(0xFC0)));
# 34277 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char ADCON1 __attribute__((address(0xFC1)));

__asm("ADCON1 equ 0FC1h");


typedef union {
    struct {
        unsigned CHSN :3;
        unsigned VNCFG :1;
        unsigned VCFG :2;
        unsigned TRIGSEL :2;
    };
    struct {
        unsigned CHSN0 :1;
        unsigned CHSN1 :1;
        unsigned CHSN2 :1;
        unsigned :1;
        unsigned VCFG0 :1;
        unsigned VCFG1 :1;
        unsigned TRIGSEL0 :1;
        unsigned TRIGSEL1 :1;
    };
    struct {
        unsigned :3;
        unsigned CHSN3 :1;
        unsigned VCFG01 :1;
        unsigned VCFG11 :1;
    };
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __attribute__((address(0xFC1)));
# 34381 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char ADCON0 __attribute__((address(0xFC2)));

__asm("ADCON0 equ 0FC2h");


typedef union {
    struct {
        unsigned :1;
        unsigned GO_NOT_DONE :1;
    };
    struct {
        unsigned ADON :1;
        unsigned GO_nDONE :1;
        unsigned CHS :5;
    };
    struct {
        unsigned :1;
        unsigned DONE :1;
        unsigned CHS0 :1;
        unsigned CHS1 :1;
        unsigned CHS2 :1;
        unsigned CHS3 :1;
        unsigned CHS4 :1;
    };
    struct {
        unsigned :1;
        unsigned GO :1;
    };
    struct {
        unsigned :1;
        unsigned NOT_DONE :1;
    };
    struct {
        unsigned :1;
        unsigned nDONE :1;
    };
    struct {
        unsigned :1;
        unsigned GODONE :1;
    };
    struct {
        unsigned :1;
        unsigned GO_DONE :1;
    };
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __attribute__((address(0xFC2)));
# 34506 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned short ADRES __attribute__((address(0xFC3)));

__asm("ADRES equ 0FC3h");




extern volatile unsigned char ADRESL __attribute__((address(0xFC3)));

__asm("ADRESL equ 0FC3h");


typedef union {
    struct {
        unsigned ADRESL :8;
    };
} ADRESLbits_t;
extern volatile ADRESLbits_t ADRESLbits __attribute__((address(0xFC3)));
# 34533 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char ADRESH __attribute__((address(0xFC4)));

__asm("ADRESH equ 0FC4h");


typedef union {
    struct {
        unsigned ADRESH :8;
    };
} ADRESHbits_t;
extern volatile ADRESHbits_t ADRESHbits __attribute__((address(0xFC4)));
# 34553 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char SSPCON2 __attribute__((address(0xFC5)));

__asm("SSPCON2 equ 0FC5h");


typedef union {
    struct {
        unsigned SEN :1;
        unsigned RSEN :1;
        unsigned PEN :1;
        unsigned RCEN :1;
        unsigned ACKEN :1;
        unsigned ACKDT :1;
        unsigned ACKSTAT :1;
        unsigned GCEN :1;
    };
    struct {
        unsigned :1;
        unsigned ADMSK1 :1;
        unsigned ADMSK2 :1;
        unsigned ADMSK3 :1;
        unsigned ADMSK4 :1;
        unsigned ADMSK5 :1;
    };
} SSPCON2bits_t;
extern volatile SSPCON2bits_t SSPCON2bits __attribute__((address(0xFC5)));
# 34648 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char SSPCON1 __attribute__((address(0xFC6)));

__asm("SSPCON1 equ 0FC6h");


typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
} SSPCON1bits_t;
extern volatile SSPCON1bits_t SSPCON1bits __attribute__((address(0xFC6)));
# 34718 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char SSPSTAT __attribute__((address(0xFC7)));

__asm("SSPSTAT equ 0FC7h");


typedef union {
    struct {
        unsigned :2;
        unsigned R_NOT_W :1;
    };
    struct {
        unsigned :5;
        unsigned D_NOT_A :1;
    };
    struct {
        unsigned BF :1;
        unsigned UA :1;
        unsigned R_nW :1;
        unsigned S :1;
        unsigned P :1;
        unsigned D_nA :1;
        unsigned CKE :1;
        unsigned SMP :1;
    };
    struct {
        unsigned :2;
        unsigned R_W :1;
        unsigned :2;
        unsigned D_A :1;
    };
    struct {
        unsigned :2;
        unsigned nW :1;
        unsigned :2;
        unsigned nA :1;
    };
    struct {
        unsigned :2;
        unsigned NOT_WRITE :1;
    };
    struct {
        unsigned :5;
        unsigned NOT_ADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned nWRITE :1;
        unsigned :2;
        unsigned nADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned READ_WRITE :1;
        unsigned :2;
        unsigned DATA_ADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned I2C_READ :1;
        unsigned I2C_START :1;
        unsigned I2C_STOP :1;
        unsigned I2C_DAT :1;
    };
    struct {
        unsigned :2;
        unsigned RW :1;
        unsigned START :1;
        unsigned STOP :1;
        unsigned DA :1;
    };
    struct {
        unsigned :2;
        unsigned NOT_W :1;
        unsigned :2;
        unsigned NOT_A :1;
    };
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __attribute__((address(0xFC7)));
# 34950 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char SSPADD __attribute__((address(0xFC8)));

__asm("SSPADD equ 0FC8h");


typedef union {
    struct {
        unsigned SSPADD :8;
    };
    struct {
        unsigned MSK0 :1;
        unsigned MSK1 :1;
        unsigned MSK2 :1;
        unsigned MSK3 :1;
        unsigned MSK4 :1;
        unsigned MSK5 :1;
        unsigned MSK6 :1;
        unsigned MSK7 :1;
    };
} SSPADDbits_t;
extern volatile SSPADDbits_t SSPADDbits __attribute__((address(0xFC8)));
# 35020 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char SSPBUF __attribute__((address(0xFC9)));

__asm("SSPBUF equ 0FC9h");


typedef union {
    struct {
        unsigned SSPBUF :8;
    };
} SSPBUFbits_t;
extern volatile SSPBUFbits_t SSPBUFbits __attribute__((address(0xFC9)));
# 35040 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char T2CON __attribute__((address(0xFCA)));

__asm("T2CON equ 0FCAh");


typedef union {
    struct {
        unsigned T2CKPS :2;
        unsigned TMR2ON :1;
        unsigned T2OUTPS :4;
    };
    struct {
        unsigned T2CKPS0 :1;
        unsigned T2CKPS1 :1;
        unsigned :1;
        unsigned T2OUTPS0 :1;
        unsigned T2OUTPS1 :1;
        unsigned T2OUTPS2 :1;
        unsigned T2OUTPS3 :1;
    };
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __attribute__((address(0xFCA)));
# 35111 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PR2 __attribute__((address(0xFCB)));

__asm("PR2 equ 0FCBh");


extern volatile unsigned char MEMCON __attribute__((address(0xFCB)));

__asm("MEMCON equ 0FCBh");


typedef union {
    struct {
        unsigned PR2 :8;
    };
    struct {
        unsigned :7;
        unsigned EBDIS :1;
    };
    struct {
        unsigned :4;
        unsigned WAIT0 :1;
    };
    struct {
        unsigned :5;
        unsigned WAIT1 :1;
    };
    struct {
        unsigned WM0 :1;
    };
    struct {
        unsigned :1;
        unsigned WM1 :1;
    };
} PR2bits_t;
extern volatile PR2bits_t PR2bits __attribute__((address(0xFCB)));
# 35178 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
typedef union {
    struct {
        unsigned PR2 :8;
    };
    struct {
        unsigned :7;
        unsigned EBDIS :1;
    };
    struct {
        unsigned :4;
        unsigned WAIT0 :1;
    };
    struct {
        unsigned :5;
        unsigned WAIT1 :1;
    };
    struct {
        unsigned WM0 :1;
    };
    struct {
        unsigned :1;
        unsigned WM1 :1;
    };
} MEMCONbits_t;
extern volatile MEMCONbits_t MEMCONbits __attribute__((address(0xFCB)));
# 35237 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TMR2 __attribute__((address(0xFCC)));

__asm("TMR2 equ 0FCCh");


typedef union {
    struct {
        unsigned TMR2 :8;
    };
} TMR2bits_t;
extern volatile TMR2bits_t TMR2bits __attribute__((address(0xFCC)));
# 35257 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char T1CON __attribute__((address(0xFCD)));

__asm("T1CON equ 0FCDh");


typedef union {
    struct {
        unsigned :2;
        unsigned NOT_T1SYNC :1;
    };
    struct {
        unsigned TMR1ON :1;
        unsigned RD16 :1;
        unsigned nT1SYNC :1;
        unsigned SOSCEN :1;
        unsigned T1CKPS :2;
        unsigned TMR1CS :2;
    };
    struct {
        unsigned :4;
        unsigned T1CKPS0 :1;
        unsigned T1CKPS1 :1;
        unsigned TMR1CS0 :1;
        unsigned TMR1CS1 :1;
    };
    struct {
        unsigned :3;
        unsigned T1OSCEN :1;
        unsigned :3;
        unsigned T1RD16 :1;
    };
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __attribute__((address(0xFCD)));
# 35359 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned short TMR1 __attribute__((address(0xFCE)));

__asm("TMR1 equ 0FCEh");




extern volatile unsigned char TMR1L __attribute__((address(0xFCE)));

__asm("TMR1L equ 0FCEh");


typedef union {
    struct {
        unsigned TMR1L :8;
    };
} TMR1Lbits_t;
extern volatile TMR1Lbits_t TMR1Lbits __attribute__((address(0xFCE)));
# 35386 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TMR1H __attribute__((address(0xFCF)));

__asm("TMR1H equ 0FCFh");


typedef union {
    struct {
        unsigned TMR1H :8;
    };
} TMR1Hbits_t;
extern volatile TMR1Hbits_t TMR1Hbits __attribute__((address(0xFCF)));
# 35406 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char RCON __attribute__((address(0xFD0)));

__asm("RCON equ 0FD0h");


typedef union {
    struct {
        unsigned NOT_BOR :1;
    };
    struct {
        unsigned :1;
        unsigned NOT_POR :1;
    };
    struct {
        unsigned :2;
        unsigned NOT_PD :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_TO :1;
    };
    struct {
        unsigned :4;
        unsigned NOT_RI :1;
    };
    struct {
        unsigned :5;
        unsigned NOT_CM :1;
    };
    struct {
        unsigned nBOR :1;
        unsigned nPOR :1;
        unsigned nPD :1;
        unsigned nTO :1;
        unsigned nRI :1;
        unsigned nCM :1;
        unsigned SBOREN :1;
        unsigned IPEN :1;
    };
    struct {
        unsigned BOR :1;
        unsigned POR :1;
        unsigned PD :1;
        unsigned TO :1;
        unsigned RI :1;
        unsigned CM :1;
    };
} RCONbits_t;
extern volatile RCONbits_t RCONbits __attribute__((address(0xFD0)));
# 35559 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char WDTCON __attribute__((address(0xFD1)));

__asm("WDTCON equ 0FD1h");


typedef union {
    struct {
        unsigned SWDTEN :1;
        unsigned ULPSINK :1;
        unsigned ULPEN :1;
        unsigned :1;
        unsigned SRETEN :1;
        unsigned ULPLVL :1;
        unsigned :1;
        unsigned REGSLP :1;
    };
    struct {
        unsigned SWDTE :1;
    };
} WDTCONbits_t;
extern volatile WDTCONbits_t WDTCONbits __attribute__((address(0xFD1)));
# 35619 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char OSCCON2 __attribute__((address(0xFD2)));

__asm("OSCCON2 equ 0FD2h");


typedef union {
    struct {
        unsigned MFIOSEL :1;
        unsigned MFIOFS :1;
        unsigned :1;
        unsigned SOSCGO :1;
        unsigned SOSCDRV :1;
        unsigned :1;
        unsigned SOSCRUN :1;
    };
    struct {
        unsigned LVDL0 :1;
        unsigned LVDL1 :1;
        unsigned LVDL2 :1;
        unsigned LVDL3 :1;
    };
} OSCCON2bits_t;
extern volatile OSCCON2bits_t OSCCON2bits __attribute__((address(0xFD2)));
# 35691 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char OSCCON __attribute__((address(0xFD3)));

__asm("OSCCON equ 0FD3h");


typedef union {
    struct {
        unsigned SCS :2;
        unsigned HFIOFS :1;
        unsigned OSTS :1;
        unsigned IRCF :3;
        unsigned IDLEN :1;
    };
    struct {
        unsigned SCS0 :1;
        unsigned SCS1 :1;
        unsigned :2;
        unsigned IRCF0 :1;
        unsigned IRCF1 :1;
        unsigned IRCF2 :1;
    };
} OSCCONbits_t;
extern volatile OSCCONbits_t OSCCONbits __attribute__((address(0xFD3)));
# 35768 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char T0CON __attribute__((address(0xFD5)));

__asm("T0CON equ 0FD5h");


typedef union {
    struct {
        unsigned T0PS :3;
        unsigned PSA :1;
        unsigned T0SE :1;
        unsigned T0CS :1;
        unsigned T08BIT :1;
        unsigned TMR0ON :1;
    };
    struct {
        unsigned T0PS0 :1;
        unsigned T0PS1 :1;
        unsigned T0PS2 :1;
    };
} T0CONbits_t;
extern volatile T0CONbits_t T0CONbits __attribute__((address(0xFD5)));
# 35838 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned short TMR0 __attribute__((address(0xFD6)));

__asm("TMR0 equ 0FD6h");




extern volatile unsigned char TMR0L __attribute__((address(0xFD6)));

__asm("TMR0L equ 0FD6h");


typedef union {
    struct {
        unsigned TMR0L :8;
    };
} TMR0Lbits_t;
extern volatile TMR0Lbits_t TMR0Lbits __attribute__((address(0xFD6)));
# 35865 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TMR0H __attribute__((address(0xFD7)));

__asm("TMR0H equ 0FD7h");


typedef union {
    struct {
        unsigned TMR0H :8;
    };
} TMR0Hbits_t;
extern volatile TMR0Hbits_t TMR0Hbits __attribute__((address(0xFD7)));
# 35885 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char STATUS __attribute__((address(0xFD8)));

__asm("STATUS equ 0FD8h");


typedef union {
    struct {
        unsigned C :1;
        unsigned DC :1;
        unsigned Z :1;
        unsigned OV :1;
        unsigned N :1;
    };
    struct {
        unsigned CARRY :1;
        unsigned :1;
        unsigned ZERO :1;
        unsigned OVERFLOW :1;
        unsigned NEGATIVE :1;
    };
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __attribute__((address(0xFD8)));
# 35956 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned short FSR2 __attribute__((address(0xFD9)));

__asm("FSR2 equ 0FD9h");




extern volatile unsigned char FSR2L __attribute__((address(0xFD9)));

__asm("FSR2L equ 0FD9h");


typedef union {
    struct {
        unsigned FSR2L :8;
    };
} FSR2Lbits_t;
extern volatile FSR2Lbits_t FSR2Lbits __attribute__((address(0xFD9)));
# 35983 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char FSR2H __attribute__((address(0xFDA)));

__asm("FSR2H equ 0FDAh");


typedef union {
    struct {
        unsigned FSR2H :4;
    };
} FSR2Hbits_t;
extern volatile FSR2Hbits_t FSR2Hbits __attribute__((address(0xFDA)));
# 36003 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PLUSW2 __attribute__((address(0xFDB)));

__asm("PLUSW2 equ 0FDBh");


typedef union {
    struct {
        unsigned PLUSW2 :8;
    };
} PLUSW2bits_t;
extern volatile PLUSW2bits_t PLUSW2bits __attribute__((address(0xFDB)));
# 36023 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PREINC2 __attribute__((address(0xFDC)));

__asm("PREINC2 equ 0FDCh");


typedef union {
    struct {
        unsigned PREINC2 :8;
    };
} PREINC2bits_t;
extern volatile PREINC2bits_t PREINC2bits __attribute__((address(0xFDC)));
# 36043 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char POSTDEC2 __attribute__((address(0xFDD)));

__asm("POSTDEC2 equ 0FDDh");


typedef union {
    struct {
        unsigned POSTDEC2 :8;
    };
} POSTDEC2bits_t;
extern volatile POSTDEC2bits_t POSTDEC2bits __attribute__((address(0xFDD)));
# 36063 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char POSTINC2 __attribute__((address(0xFDE)));

__asm("POSTINC2 equ 0FDEh");


typedef union {
    struct {
        unsigned POSTINC2 :8;
    };
} POSTINC2bits_t;
extern volatile POSTINC2bits_t POSTINC2bits __attribute__((address(0xFDE)));
# 36083 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char INDF2 __attribute__((address(0xFDF)));

__asm("INDF2 equ 0FDFh");


typedef union {
    struct {
        unsigned INDF2 :8;
    };
} INDF2bits_t;
extern volatile INDF2bits_t INDF2bits __attribute__((address(0xFDF)));
# 36103 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char BSR __attribute__((address(0xFE0)));

__asm("BSR equ 0FE0h");


typedef union {
    struct {
        unsigned BSR :4;
    };
} BSRbits_t;
extern volatile BSRbits_t BSRbits __attribute__((address(0xFE0)));
# 36123 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned short FSR1 __attribute__((address(0xFE1)));

__asm("FSR1 equ 0FE1h");




extern volatile unsigned char FSR1L __attribute__((address(0xFE1)));

__asm("FSR1L equ 0FE1h");


typedef union {
    struct {
        unsigned FSR1L :8;
    };
} FSR1Lbits_t;
extern volatile FSR1Lbits_t FSR1Lbits __attribute__((address(0xFE1)));
# 36150 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char FSR1H __attribute__((address(0xFE2)));

__asm("FSR1H equ 0FE2h");


typedef union {
    struct {
        unsigned FSR1H :4;
    };
} FSR1Hbits_t;
extern volatile FSR1Hbits_t FSR1Hbits __attribute__((address(0xFE2)));
# 36170 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PLUSW1 __attribute__((address(0xFE3)));

__asm("PLUSW1 equ 0FE3h");


typedef union {
    struct {
        unsigned PLUSW1 :8;
    };
} PLUSW1bits_t;
extern volatile PLUSW1bits_t PLUSW1bits __attribute__((address(0xFE3)));
# 36190 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PREINC1 __attribute__((address(0xFE4)));

__asm("PREINC1 equ 0FE4h");


typedef union {
    struct {
        unsigned PREINC1 :8;
    };
} PREINC1bits_t;
extern volatile PREINC1bits_t PREINC1bits __attribute__((address(0xFE4)));
# 36210 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char POSTDEC1 __attribute__((address(0xFE5)));

__asm("POSTDEC1 equ 0FE5h");


typedef union {
    struct {
        unsigned POSTDEC1 :8;
    };
} POSTDEC1bits_t;
extern volatile POSTDEC1bits_t POSTDEC1bits __attribute__((address(0xFE5)));
# 36230 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char POSTINC1 __attribute__((address(0xFE6)));

__asm("POSTINC1 equ 0FE6h");


typedef union {
    struct {
        unsigned POSTINC1 :8;
    };
} POSTINC1bits_t;
extern volatile POSTINC1bits_t POSTINC1bits __attribute__((address(0xFE6)));
# 36250 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char INDF1 __attribute__((address(0xFE7)));

__asm("INDF1 equ 0FE7h");


typedef union {
    struct {
        unsigned INDF1 :8;
    };
} INDF1bits_t;
extern volatile INDF1bits_t INDF1bits __attribute__((address(0xFE7)));
# 36270 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char WREG __attribute__((address(0xFE8)));

__asm("WREG equ 0FE8h");


typedef union {
    struct {
        unsigned WREG :8;
    };
} WREGbits_t;
extern volatile WREGbits_t WREGbits __attribute__((address(0xFE8)));
# 36290 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned short FSR0 __attribute__((address(0xFE9)));

__asm("FSR0 equ 0FE9h");




extern volatile unsigned char FSR0L __attribute__((address(0xFE9)));

__asm("FSR0L equ 0FE9h");


typedef union {
    struct {
        unsigned FSR0L :8;
    };
} FSR0Lbits_t;
extern volatile FSR0Lbits_t FSR0Lbits __attribute__((address(0xFE9)));
# 36317 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char FSR0H __attribute__((address(0xFEA)));

__asm("FSR0H equ 0FEAh");


typedef union {
    struct {
        unsigned FSR0H :4;
    };
} FSR0Hbits_t;
extern volatile FSR0Hbits_t FSR0Hbits __attribute__((address(0xFEA)));
# 36337 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PLUSW0 __attribute__((address(0xFEB)));

__asm("PLUSW0 equ 0FEBh");


typedef union {
    struct {
        unsigned PLUSW0 :8;
    };
} PLUSW0bits_t;
extern volatile PLUSW0bits_t PLUSW0bits __attribute__((address(0xFEB)));
# 36357 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PREINC0 __attribute__((address(0xFEC)));

__asm("PREINC0 equ 0FECh");


typedef union {
    struct {
        unsigned PREINC0 :8;
    };
} PREINC0bits_t;
extern volatile PREINC0bits_t PREINC0bits __attribute__((address(0xFEC)));
# 36377 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char POSTDEC0 __attribute__((address(0xFED)));

__asm("POSTDEC0 equ 0FEDh");


typedef union {
    struct {
        unsigned POSTDEC0 :8;
    };
} POSTDEC0bits_t;
extern volatile POSTDEC0bits_t POSTDEC0bits __attribute__((address(0xFED)));
# 36397 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char POSTINC0 __attribute__((address(0xFEE)));

__asm("POSTINC0 equ 0FEEh");


typedef union {
    struct {
        unsigned POSTINC0 :8;
    };
} POSTINC0bits_t;
extern volatile POSTINC0bits_t POSTINC0bits __attribute__((address(0xFEE)));
# 36417 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char INDF0 __attribute__((address(0xFEF)));

__asm("INDF0 equ 0FEFh");


typedef union {
    struct {
        unsigned INDF0 :8;
    };
} INDF0bits_t;
extern volatile INDF0bits_t INDF0bits __attribute__((address(0xFEF)));
# 36437 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char INTCON3 __attribute__((address(0xFF0)));

__asm("INTCON3 equ 0FF0h");


typedef union {
    struct {
        unsigned INT1IF :1;
        unsigned INT2IF :1;
        unsigned INT3IF :1;
        unsigned INT1IE :1;
        unsigned INT2IE :1;
        unsigned INT3IE :1;
        unsigned INT1IP :1;
        unsigned INT2IP :1;
    };
    struct {
        unsigned INT1F :1;
        unsigned INT2F :1;
        unsigned INT3F :1;
        unsigned INT1E :1;
        unsigned INT2E :1;
        unsigned INT3E :1;
        unsigned INT1P :1;
        unsigned INT2P :1;
    };
} INTCON3bits_t;
extern volatile INTCON3bits_t INTCON3bits __attribute__((address(0xFF0)));
# 36549 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char INTCON2 __attribute__((address(0xFF1)));

__asm("INTCON2 equ 0FF1h");


typedef union {
    struct {
        unsigned :7;
        unsigned NOT_RBPU :1;
    };
    struct {
        unsigned RBIP :1;
        unsigned INT3IP :1;
        unsigned TMR0IP :1;
        unsigned INTEDG3 :1;
        unsigned INTEDG2 :1;
        unsigned INTEDG1 :1;
        unsigned INTEDG0 :1;
        unsigned nRBPU :1;
    };
    struct {
        unsigned :1;
        unsigned INT3P :1;
        unsigned T0IP :1;
        unsigned :4;
        unsigned RBPU :1;
    };
} INTCON2bits_t;
extern volatile INTCON2bits_t INTCON2bits __attribute__((address(0xFF1)));
# 36642 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char INTCON __attribute__((address(0xFF2)));

__asm("INTCON equ 0FF2h");


extern volatile unsigned char INTCON1 __attribute__((address(0xFF2)));

__asm("INTCON1 equ 0FF2h");


typedef union {
    struct {
        unsigned RBIF :1;
        unsigned INT0IF :1;
        unsigned TMR0IF :1;
        unsigned RBIE :1;
        unsigned INT0IE :1;
        unsigned TMR0IE :1;
        unsigned PEIE_GIEL :1;
        unsigned GIE_GIEH :1;
    };
    struct {
        unsigned :1;
        unsigned INT0F :1;
        unsigned T0IF :1;
        unsigned :1;
        unsigned INT0E :1;
        unsigned T0IE :1;
        unsigned PEIE :1;
        unsigned GIE :1;
    };
    struct {
        unsigned :6;
        unsigned GIEL :1;
        unsigned GIEH :1;
    };
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __attribute__((address(0xFF2)));
# 36762 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
typedef union {
    struct {
        unsigned RBIF :1;
        unsigned INT0IF :1;
        unsigned TMR0IF :1;
        unsigned RBIE :1;
        unsigned INT0IE :1;
        unsigned TMR0IE :1;
        unsigned PEIE_GIEL :1;
        unsigned GIE_GIEH :1;
    };
    struct {
        unsigned :1;
        unsigned INT0F :1;
        unsigned T0IF :1;
        unsigned :1;
        unsigned INT0E :1;
        unsigned T0IE :1;
        unsigned PEIE :1;
        unsigned GIE :1;
    };
    struct {
        unsigned :6;
        unsigned GIEL :1;
        unsigned GIEH :1;
    };
} INTCON1bits_t;
extern volatile INTCON1bits_t INTCON1bits __attribute__((address(0xFF2)));
# 36874 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned short PROD __attribute__((address(0xFF3)));

__asm("PROD equ 0FF3h");




extern volatile unsigned char PRODL __attribute__((address(0xFF3)));

__asm("PRODL equ 0FF3h");


typedef union {
    struct {
        unsigned PRODL :8;
    };
} PRODLbits_t;
extern volatile PRODLbits_t PRODLbits __attribute__((address(0xFF3)));
# 36901 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PRODH __attribute__((address(0xFF4)));

__asm("PRODH equ 0FF4h");


typedef union {
    struct {
        unsigned PRODH :8;
    };
} PRODHbits_t;
extern volatile PRODHbits_t PRODHbits __attribute__((address(0xFF4)));
# 36921 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TABLAT __attribute__((address(0xFF5)));

__asm("TABLAT equ 0FF5h");


typedef union {
    struct {
        unsigned TABLAT :8;
    };
} TABLATbits_t;
extern volatile TABLATbits_t TABLATbits __attribute__((address(0xFF5)));
# 36942 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile __uint24 TBLPTR __attribute__((address(0xFF6)));


__asm("TBLPTR equ 0FF6h");




extern volatile unsigned char TBLPTRL __attribute__((address(0xFF6)));

__asm("TBLPTRL equ 0FF6h");


typedef union {
    struct {
        unsigned TBLPTRL :8;
    };
} TBLPTRLbits_t;
extern volatile TBLPTRLbits_t TBLPTRLbits __attribute__((address(0xFF6)));
# 36970 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TBLPTRH __attribute__((address(0xFF7)));

__asm("TBLPTRH equ 0FF7h");


typedef union {
    struct {
        unsigned TBLPTRH :8;
    };
} TBLPTRHbits_t;
extern volatile TBLPTRHbits_t TBLPTRHbits __attribute__((address(0xFF7)));
# 36990 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TBLPTRU __attribute__((address(0xFF8)));

__asm("TBLPTRU equ 0FF8h");


typedef union {
    struct {
        unsigned TBLPTRU :5;
    };
} TBLPTRUbits_t;
extern volatile TBLPTRUbits_t TBLPTRUbits __attribute__((address(0xFF8)));
# 37011 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile __uint24 PCLAT __attribute__((address(0xFF9)));


__asm("PCLAT equ 0FF9h");



extern volatile __uint24 PC __attribute__((address(0xFF9)));


__asm("PC equ 0FF9h");




extern volatile unsigned char PCL __attribute__((address(0xFF9)));

__asm("PCL equ 0FF9h");


typedef union {
    struct {
        unsigned PCL :8;
    };
} PCLbits_t;
extern volatile PCLbits_t PCLbits __attribute__((address(0xFF9)));
# 37046 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PCLATH __attribute__((address(0xFFA)));

__asm("PCLATH equ 0FFAh");


typedef union {
    struct {
        unsigned PCH :8;
    };
} PCLATHbits_t;
extern volatile PCLATHbits_t PCLATHbits __attribute__((address(0xFFA)));
# 37066 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char PCLATU __attribute__((address(0xFFB)));

__asm("PCLATU equ 0FFBh");


typedef union {
    struct {
        unsigned PCU :5;
    };
} PCLATUbits_t;
extern volatile PCLATUbits_t PCLATUbits __attribute__((address(0xFFB)));
# 37086 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char STKPTR __attribute__((address(0xFFC)));

__asm("STKPTR equ 0FFCh");


typedef union {
    struct {
        unsigned STKPTR :5;
        unsigned :1;
        unsigned STKUNF :1;
        unsigned STKFUL :1;
    };
    struct {
        unsigned SP0 :1;
        unsigned SP1 :1;
        unsigned SP2 :1;
        unsigned SP3 :1;
        unsigned SP4 :1;
        unsigned :2;
        unsigned STKOVF :1;
    };
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __attribute__((address(0xFFC)));
# 37159 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile __uint24 TOS __attribute__((address(0xFFD)));


__asm("TOS equ 0FFDh");




extern volatile unsigned char TOSL __attribute__((address(0xFFD)));

__asm("TOSL equ 0FFDh");


typedef union {
    struct {
        unsigned TOSL :8;
    };
} TOSLbits_t;
extern volatile TOSLbits_t TOSLbits __attribute__((address(0xFFD)));
# 37187 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TOSH __attribute__((address(0xFFE)));

__asm("TOSH equ 0FFEh");


typedef union {
    struct {
        unsigned TOSH :8;
    };
} TOSHbits_t;
extern volatile TOSHbits_t TOSHbits __attribute__((address(0xFFE)));
# 37207 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile unsigned char TOSU __attribute__((address(0xFFF)));

__asm("TOSU equ 0FFFh");


typedef union {
    struct {
        unsigned TOSU :5;
    };
} TOSUbits_t;
extern volatile TOSUbits_t TOSUbits __attribute__((address(0xFFF)));
# 37228 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern const unsigned char _CONFIGs[14] __attribute__((address(0x300000)));

extern const unsigned char _CONFIG1L __attribute__((address(0x300000)));

typedef union {
    struct {
        unsigned RETEN :1;
        unsigned :1;
        unsigned INTOSCSEL :1;
        unsigned SOSCSEL :2;
        unsigned :1;
        unsigned XINST :1;
    };
} _CONFIG1Lbits_t;
extern const _CONFIG1Lbits_t _CONFIG1Lbits __attribute__((address(0x300000)));


extern const unsigned char _CONFIG1H __attribute__((address(0x300001)));

typedef union {
    struct {
        unsigned FOSC :4;
        unsigned PLLCFG :1;
        unsigned :1;
        unsigned FCMEN :1;
        unsigned IESO :1;
    };
} _CONFIG1Hbits_t;
extern const _CONFIG1Hbits_t _CONFIG1Hbits __attribute__((address(0x300001)));


extern const unsigned char _CONFIG2L __attribute__((address(0x300002)));

typedef union {
    struct {
        unsigned PWRTEN :1;
        unsigned BOREN :2;
        unsigned BORV :2;
        unsigned BORPWR :2;
    };
} _CONFIG2Lbits_t;
extern const _CONFIG2Lbits_t _CONFIG2Lbits __attribute__((address(0x300002)));


extern const unsigned char _CONFIG2H __attribute__((address(0x300003)));

typedef union {
    struct {
        unsigned WDTEN :2;
        unsigned WDTPS :5;
    };
} _CONFIG2Hbits_t;
extern const _CONFIG2Hbits_t _CONFIG2Hbits __attribute__((address(0x300003)));


extern const unsigned char _CONFIG3H __attribute__((address(0x300005)));

typedef union {
    struct {
        unsigned CANMX :1;
        unsigned :2;
        unsigned MSSPMSK :1;
        unsigned :3;
        unsigned MCLRE :1;
    };
} _CONFIG3Hbits_t;
extern const _CONFIG3Hbits_t _CONFIG3Hbits __attribute__((address(0x300005)));


extern const unsigned char _CONFIG4L __attribute__((address(0x300006)));

typedef union {
    struct {
        unsigned STVREN :1;
        unsigned :3;
        unsigned BBSIZ :1;
        unsigned :2;
        unsigned _DEBUG :1;
    };
} _CONFIG4Lbits_t;
extern const _CONFIG4Lbits_t _CONFIG4Lbits __attribute__((address(0x300006)));


extern const unsigned char _CONFIG5L __attribute__((address(0x300008)));

typedef union {
    struct {
        unsigned CP0 :1;
        unsigned CP1 :1;
        unsigned CP2 :1;
        unsigned CP3 :1;
    };
} _CONFIG5Lbits_t;
extern const _CONFIG5Lbits_t _CONFIG5Lbits __attribute__((address(0x300008)));


extern const unsigned char _CONFIG5H __attribute__((address(0x300009)));

typedef union {
    struct {
        unsigned :6;
        unsigned CPB :1;
        unsigned CPD :1;
    };
} _CONFIG5Hbits_t;
extern const _CONFIG5Hbits_t _CONFIG5Hbits __attribute__((address(0x300009)));


extern const unsigned char _CONFIG6L __attribute__((address(0x30000A)));

typedef union {
    struct {
        unsigned WRT0 :1;
        unsigned WRT1 :1;
        unsigned WRT2 :1;
        unsigned WRT3 :1;
    };
} _CONFIG6Lbits_t;
extern const _CONFIG6Lbits_t _CONFIG6Lbits __attribute__((address(0x30000A)));


extern const unsigned char _CONFIG6H __attribute__((address(0x30000B)));

typedef union {
    struct {
        unsigned :5;
        unsigned WRTC :1;
        unsigned WRTB :1;
        unsigned WRTD :1;
    };
} _CONFIG6Hbits_t;
extern const _CONFIG6Hbits_t _CONFIG6Hbits __attribute__((address(0x30000B)));


extern const unsigned char _CONFIG7L __attribute__((address(0x30000C)));

typedef union {
    struct {
        unsigned EBTR0 :1;
        unsigned EBTR1 :1;
        unsigned EBTR2 :1;
        unsigned EBTR3 :1;
    };
} _CONFIG7Lbits_t;
extern const _CONFIG7Lbits_t _CONFIG7Lbits __attribute__((address(0x30000C)));


extern const unsigned char _CONFIG7H __attribute__((address(0x30000D)));

typedef union {
    struct {
        unsigned :6;
        unsigned EBTRB :1;
    };
} _CONFIG7Hbits_t;
extern const _CONFIG7Hbits_t _CONFIG7Hbits __attribute__((address(0x30000D)));

extern const unsigned char _IDLOCs[8] __attribute__((address(0x200000)));

extern const unsigned char _IDLOC0 __attribute__((address(0x200000)));


extern const unsigned char _IDLOC1 __attribute__((address(0x200001)));


extern const unsigned char _IDLOC2 __attribute__((address(0x200002)));


extern const unsigned char _IDLOC3 __attribute__((address(0x200003)));


extern const unsigned char _IDLOC4 __attribute__((address(0x200004)));


extern const unsigned char _IDLOC5 __attribute__((address(0x200005)));


extern const unsigned char _IDLOC6 __attribute__((address(0x200006)));


extern const unsigned char _IDLOC7 __attribute__((address(0x200007)));




extern const unsigned short _DEVID __attribute__((address(0x3FFFFE)));
# 37427 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include\\proc/pic18f26k80.h" 3
extern volatile __bit ABDEN1 __attribute__((address(0x7D38)));


extern volatile __bit ABDEN2 __attribute__((address(0x7DC8)));


extern volatile __bit ABDOVF1 __attribute__((address(0x7D3F)));


extern volatile __bit ABDOVF2 __attribute__((address(0x7DCF)));


extern volatile __bit ACKDT __attribute__((address(0x7E2D)));


extern volatile __bit ACKEN __attribute__((address(0x7E2C)));


extern volatile __bit ACKSTAT __attribute__((address(0x7E2E)));


extern volatile __bit ACQT0 __attribute__((address(0x7E03)));


extern volatile __bit ACQT1 __attribute__((address(0x7E04)));


extern volatile __bit ACQT2 __attribute__((address(0x7E05)));


extern volatile __bit ADCMD __attribute__((address(0x7AC5)));


extern volatile __bit ADCS0 __attribute__((address(0x7E00)));


extern volatile __bit ADCS1 __attribute__((address(0x7E01)));


extern volatile __bit ADCS2 __attribute__((address(0x7E02)));


extern volatile __bit ADDEN1 __attribute__((address(0x7D5B)));


extern volatile __bit ADDEN2 __attribute__((address(0x7D33)));


extern volatile __bit ADEN __attribute__((address(0x7D5B)));


extern volatile __bit ADFM __attribute__((address(0x7E07)));


extern volatile __bit ADIE __attribute__((address(0x7CEE)));


extern volatile __bit ADIF __attribute__((address(0x7CF6)));


extern volatile __bit ADIP __attribute__((address(0x7CFE)));


extern volatile __bit ADMSK1 __attribute__((address(0x7E29)));


extern volatile __bit ADMSK2 __attribute__((address(0x7E2A)));


extern volatile __bit ADMSK3 __attribute__((address(0x7E2B)));


extern volatile __bit ADMSK4 __attribute__((address(0x7E2C)));


extern volatile __bit ADMSK5 __attribute__((address(0x7E2D)));


extern volatile __bit ADON __attribute__((address(0x7E10)));


extern volatile __bit ANSEL0 __attribute__((address(0x7AE8)));


extern volatile __bit ANSEL1 __attribute__((address(0x7AE9)));


extern volatile __bit ANSEL10 __attribute__((address(0x7AE2)));


extern volatile __bit ANSEL2 __attribute__((address(0x7AEA)));


extern volatile __bit ANSEL3 __attribute__((address(0x7AEB)));


extern volatile __bit ANSEL4 __attribute__((address(0x7AEC)));


extern volatile __bit ANSEL8 __attribute__((address(0x7AE0)));


extern volatile __bit ANSEL9 __attribute__((address(0x7AE1)));


extern volatile __bit B0D00 __attribute__((address(0x7430)));


extern volatile __bit B0D01 __attribute__((address(0x7431)));


extern volatile __bit B0D02 __attribute__((address(0x7432)));


extern volatile __bit B0D03 __attribute__((address(0x7433)));


extern volatile __bit B0D04 __attribute__((address(0x7434)));


extern volatile __bit B0D05 __attribute__((address(0x7435)));


extern volatile __bit B0D06 __attribute__((address(0x7436)));


extern volatile __bit B0D07 __attribute__((address(0x7437)));


extern volatile __bit B0D10 __attribute__((address(0x7438)));


extern volatile __bit B0D11 __attribute__((address(0x7439)));


extern volatile __bit B0D12 __attribute__((address(0x743A)));


extern volatile __bit B0D13 __attribute__((address(0x743B)));


extern volatile __bit B0D14 __attribute__((address(0x743C)));


extern volatile __bit B0D15 __attribute__((address(0x743D)));


extern volatile __bit B0D16 __attribute__((address(0x743E)));


extern volatile __bit B0D17 __attribute__((address(0x743F)));


extern volatile __bit B0D20 __attribute__((address(0x7440)));


extern volatile __bit B0D21 __attribute__((address(0x7441)));


extern volatile __bit B0D22 __attribute__((address(0x7442)));


extern volatile __bit B0D23 __attribute__((address(0x7443)));


extern volatile __bit B0D24 __attribute__((address(0x7444)));


extern volatile __bit B0D25 __attribute__((address(0x7445)));


extern volatile __bit B0D26 __attribute__((address(0x7446)));


extern volatile __bit B0D27 __attribute__((address(0x7447)));


extern volatile __bit B0D30 __attribute__((address(0x7448)));


extern volatile __bit B0D31 __attribute__((address(0x7449)));


extern volatile __bit B0D32 __attribute__((address(0x744A)));


extern volatile __bit B0D33 __attribute__((address(0x744B)));


extern volatile __bit B0D34 __attribute__((address(0x744C)));


extern volatile __bit B0D35 __attribute__((address(0x744D)));


extern volatile __bit B0D36 __attribute__((address(0x744E)));


extern volatile __bit B0D37 __attribute__((address(0x744F)));


extern volatile __bit B0D40 __attribute__((address(0x7450)));


extern volatile __bit B0D41 __attribute__((address(0x7451)));


extern volatile __bit B0D42 __attribute__((address(0x7452)));


extern volatile __bit B0D43 __attribute__((address(0x7453)));


extern volatile __bit B0D44 __attribute__((address(0x7454)));


extern volatile __bit B0D45 __attribute__((address(0x7455)));


extern volatile __bit B0D46 __attribute__((address(0x7456)));


extern volatile __bit B0D47 __attribute__((address(0x7457)));


extern volatile __bit B0D50 __attribute__((address(0x7458)));


extern volatile __bit B0D51 __attribute__((address(0x7459)));


extern volatile __bit B0D52 __attribute__((address(0x745A)));


extern volatile __bit B0D53 __attribute__((address(0x745B)));


extern volatile __bit B0D54 __attribute__((address(0x745C)));


extern volatile __bit B0D55 __attribute__((address(0x745D)));


extern volatile __bit B0D56 __attribute__((address(0x745E)));


extern volatile __bit B0D57 __attribute__((address(0x745F)));


extern volatile __bit B0D60 __attribute__((address(0x7460)));


extern volatile __bit B0D61 __attribute__((address(0x7461)));


extern volatile __bit B0D62 __attribute__((address(0x7462)));


extern volatile __bit B0D63 __attribute__((address(0x7463)));


extern volatile __bit B0D64 __attribute__((address(0x7464)));


extern volatile __bit B0D65 __attribute__((address(0x7465)));


extern volatile __bit B0D66 __attribute__((address(0x7466)));


extern volatile __bit B0D67 __attribute__((address(0x7467)));


extern volatile __bit B0D70 __attribute__((address(0x7468)));


extern volatile __bit B0D71 __attribute__((address(0x7469)));


extern volatile __bit B0D72 __attribute__((address(0x746A)));


extern volatile __bit B0D73 __attribute__((address(0x746B)));


extern volatile __bit B0D74 __attribute__((address(0x746C)));


extern volatile __bit B0D75 __attribute__((address(0x746D)));


extern volatile __bit B0D76 __attribute__((address(0x746E)));


extern volatile __bit B0D77 __attribute__((address(0x746F)));


extern volatile __bit B0DLC0 __attribute__((address(0x7428)));


extern volatile __bit B0DLC1 __attribute__((address(0x7429)));


extern volatile __bit B0DLC2 __attribute__((address(0x742A)));


extern volatile __bit B0DLC3 __attribute__((address(0x742B)));


extern volatile __bit B0EID0 __attribute__((address(0x7420)));


extern volatile __bit B0EID1 __attribute__((address(0x7421)));


extern volatile __bit B0EID10 __attribute__((address(0x741A)));


extern volatile __bit B0EID11 __attribute__((address(0x741B)));


extern volatile __bit B0EID12 __attribute__((address(0x741C)));


extern volatile __bit B0EID13 __attribute__((address(0x741D)));


extern volatile __bit B0EID14 __attribute__((address(0x741E)));


extern volatile __bit B0EID15 __attribute__((address(0x741F)));


extern volatile __bit B0EID16 __attribute__((address(0x7410)));


extern volatile __bit B0EID17 __attribute__((address(0x7411)));


extern volatile __bit B0EID2 __attribute__((address(0x7422)));


extern volatile __bit B0EID3 __attribute__((address(0x7423)));


extern volatile __bit B0EID4 __attribute__((address(0x7424)));


extern volatile __bit B0EID5 __attribute__((address(0x7425)));


extern volatile __bit B0EID6 __attribute__((address(0x7426)));


extern volatile __bit B0EID7 __attribute__((address(0x7427)));


extern volatile __bit B0EID8 __attribute__((address(0x7418)));


extern volatile __bit B0EID9 __attribute__((address(0x7419)));


extern volatile __bit B0EXID __attribute__((address(0x7413)));


extern volatile __bit B0FILHIT0 __attribute__((address(0x7400)));


extern volatile __bit B0FILHIT1 __attribute__((address(0x7401)));


extern volatile __bit B0FILHIT2 __attribute__((address(0x7402)));


extern volatile __bit B0FILHIT3 __attribute__((address(0x7403)));


extern volatile __bit B0FILHIT4 __attribute__((address(0x7404)));


extern volatile __bit B0IE __attribute__((address(0x73F2)));


extern volatile __bit B0RB0 __attribute__((address(0x742C)));


extern volatile __bit B0RB1 __attribute__((address(0x742D)));


extern volatile __bit B0RTREN __attribute__((address(0x7402)));


extern volatile __bit B0RTRRO __attribute__((address(0x7405)));


extern volatile __bit B0RXFUL __attribute__((address(0x7407)));


extern volatile __bit B0RXM1 __attribute__((address(0x7406)));


extern volatile __bit B0RXRTR __attribute__((address(0x742E)));


extern volatile __bit B0SID0 __attribute__((address(0x7415)));


extern volatile __bit B0SID1 __attribute__((address(0x7416)));


extern volatile __bit B0SID10 __attribute__((address(0x740F)));


extern volatile __bit B0SID2 __attribute__((address(0x7417)));


extern volatile __bit B0SID3 __attribute__((address(0x7408)));


extern volatile __bit B0SID4 __attribute__((address(0x7409)));


extern volatile __bit B0SID5 __attribute__((address(0x740A)));


extern volatile __bit B0SID6 __attribute__((address(0x740B)));


extern volatile __bit B0SID7 __attribute__((address(0x740C)));


extern volatile __bit B0SID8 __attribute__((address(0x740D)));


extern volatile __bit B0SID9 __attribute__((address(0x740E)));


extern volatile __bit B0SRR __attribute__((address(0x7414)));


extern volatile __bit B0TXABT __attribute__((address(0x7406)));


extern volatile __bit B0TXB3IF __attribute__((address(0x7407)));


extern volatile __bit B0TXEN __attribute__((address(0x73EA)));


extern volatile __bit B0TXERR __attribute__((address(0x7404)));


extern volatile __bit B0TXLARB __attribute__((address(0x7405)));


extern volatile __bit B0TXPRI0 __attribute__((address(0x7400)));


extern volatile __bit B0TXPRI1 __attribute__((address(0x7401)));


extern volatile __bit B0TXREQ __attribute__((address(0x7403)));


extern volatile __bit B1D00 __attribute__((address(0x74B0)));


extern volatile __bit B1D01 __attribute__((address(0x74B1)));


extern volatile __bit B1D02 __attribute__((address(0x74B2)));


extern volatile __bit B1D03 __attribute__((address(0x74B3)));


extern volatile __bit B1D04 __attribute__((address(0x74B4)));


extern volatile __bit B1D05 __attribute__((address(0x74B5)));


extern volatile __bit B1D06 __attribute__((address(0x74B6)));


extern volatile __bit B1D07 __attribute__((address(0x74B7)));


extern volatile __bit B1D10 __attribute__((address(0x74B8)));


extern volatile __bit B1D11 __attribute__((address(0x74B9)));


extern volatile __bit B1D12 __attribute__((address(0x74BA)));


extern volatile __bit B1D13 __attribute__((address(0x74BB)));


extern volatile __bit B1D14 __attribute__((address(0x74BC)));


extern volatile __bit B1D15 __attribute__((address(0x74BD)));


extern volatile __bit B1D16 __attribute__((address(0x74BE)));


extern volatile __bit B1D17 __attribute__((address(0x74BF)));


extern volatile __bit B1D20 __attribute__((address(0x74C0)));


extern volatile __bit B1D21 __attribute__((address(0x74C1)));


extern volatile __bit B1D22 __attribute__((address(0x74C2)));


extern volatile __bit B1D23 __attribute__((address(0x74C3)));


extern volatile __bit B1D24 __attribute__((address(0x74C4)));


extern volatile __bit B1D25 __attribute__((address(0x74C5)));


extern volatile __bit B1D26 __attribute__((address(0x74C6)));


extern volatile __bit B1D27 __attribute__((address(0x74C7)));


extern volatile __bit B1D30 __attribute__((address(0x74C8)));


extern volatile __bit B1D31 __attribute__((address(0x74C9)));


extern volatile __bit B1D32 __attribute__((address(0x74CA)));


extern volatile __bit B1D33 __attribute__((address(0x74CB)));


extern volatile __bit B1D34 __attribute__((address(0x74CC)));


extern volatile __bit B1D35 __attribute__((address(0x74CD)));


extern volatile __bit B1D36 __attribute__((address(0x74CE)));


extern volatile __bit B1D37 __attribute__((address(0x74CF)));


extern volatile __bit B1D40 __attribute__((address(0x74D0)));


extern volatile __bit B1D41 __attribute__((address(0x74D1)));


extern volatile __bit B1D42 __attribute__((address(0x74D2)));


extern volatile __bit B1D43 __attribute__((address(0x74D3)));


extern volatile __bit B1D44 __attribute__((address(0x74D4)));


extern volatile __bit B1D45 __attribute__((address(0x74D5)));


extern volatile __bit B1D46 __attribute__((address(0x74D6)));


extern volatile __bit B1D47 __attribute__((address(0x74D7)));


extern volatile __bit B1D50 __attribute__((address(0x74D8)));


extern volatile __bit B1D51 __attribute__((address(0x74D9)));


extern volatile __bit B1D52 __attribute__((address(0x74DA)));


extern volatile __bit B1D53 __attribute__((address(0x74DB)));


extern volatile __bit B1D54 __attribute__((address(0x74DC)));


extern volatile __bit B1D55 __attribute__((address(0x74DD)));


extern volatile __bit B1D56 __attribute__((address(0x74DE)));


extern volatile __bit B1D57 __attribute__((address(0x74DF)));


extern volatile __bit B1D60 __attribute__((address(0x74E0)));


extern volatile __bit B1D61 __attribute__((address(0x74E1)));


extern volatile __bit B1D62 __attribute__((address(0x74E2)));


extern volatile __bit B1D63 __attribute__((address(0x74E3)));


extern volatile __bit B1D64 __attribute__((address(0x74E4)));


extern volatile __bit B1D65 __attribute__((address(0x74E5)));


extern volatile __bit B1D66 __attribute__((address(0x74E6)));


extern volatile __bit B1D67 __attribute__((address(0x74E7)));


extern volatile __bit B1D70 __attribute__((address(0x74E8)));


extern volatile __bit B1D71 __attribute__((address(0x74E9)));


extern volatile __bit B1D72 __attribute__((address(0x74EA)));


extern volatile __bit B1D73 __attribute__((address(0x74EB)));


extern volatile __bit B1D74 __attribute__((address(0x74EC)));


extern volatile __bit B1D75 __attribute__((address(0x74ED)));


extern volatile __bit B1D76 __attribute__((address(0x74EE)));


extern volatile __bit B1D77 __attribute__((address(0x74EF)));


extern volatile __bit B1DLC0 __attribute__((address(0x74A8)));


extern volatile __bit B1DLC1 __attribute__((address(0x74A9)));


extern volatile __bit B1DLC2 __attribute__((address(0x74AA)));


extern volatile __bit B1DLC3 __attribute__((address(0x74AB)));


extern volatile __bit B1EID0 __attribute__((address(0x74A0)));


extern volatile __bit B1EID1 __attribute__((address(0x74A1)));


extern volatile __bit B1EID10 __attribute__((address(0x749A)));


extern volatile __bit B1EID11 __attribute__((address(0x749B)));


extern volatile __bit B1EID12 __attribute__((address(0x749C)));


extern volatile __bit B1EID13 __attribute__((address(0x749D)));


extern volatile __bit B1EID14 __attribute__((address(0x749E)));


extern volatile __bit B1EID15 __attribute__((address(0x749F)));


extern volatile __bit B1EID16 __attribute__((address(0x7490)));


extern volatile __bit B1EID17 __attribute__((address(0x7491)));


extern volatile __bit B1EID2 __attribute__((address(0x74A2)));


extern volatile __bit B1EID3 __attribute__((address(0x74A3)));


extern volatile __bit B1EID4 __attribute__((address(0x74A4)));


extern volatile __bit B1EID5 __attribute__((address(0x74A5)));


extern volatile __bit B1EID6 __attribute__((address(0x74A6)));


extern volatile __bit B1EID7 __attribute__((address(0x74A7)));


extern volatile __bit B1EID8 __attribute__((address(0x7498)));


extern volatile __bit B1EID9 __attribute__((address(0x7499)));


extern volatile __bit B1EXID __attribute__((address(0x7493)));


extern volatile __bit B1FILHIT0 __attribute__((address(0x7480)));


extern volatile __bit B1FILHIT1 __attribute__((address(0x7481)));


extern volatile __bit B1FILHIT2 __attribute__((address(0x7482)));


extern volatile __bit B1FILHIT3 __attribute__((address(0x7483)));


extern volatile __bit B1FILHIT4 __attribute__((address(0x7484)));


extern volatile __bit B1IE __attribute__((address(0x73F3)));


extern volatile __bit B1RB0 __attribute__((address(0x74AC)));


extern volatile __bit B1RB1 __attribute__((address(0x74AD)));


extern volatile __bit B1RTREN __attribute__((address(0x7482)));


extern volatile __bit B1RTRRO __attribute__((address(0x7485)));


extern volatile __bit B1RXFUL __attribute__((address(0x7487)));


extern volatile __bit B1RXM1 __attribute__((address(0x7486)));


extern volatile __bit B1RXRTR __attribute__((address(0x74AE)));


extern volatile __bit B1SID0 __attribute__((address(0x7495)));


extern volatile __bit B1SID1 __attribute__((address(0x7496)));


extern volatile __bit B1SID10 __attribute__((address(0x748F)));


extern volatile __bit B1SID2 __attribute__((address(0x7497)));


extern volatile __bit B1SID3 __attribute__((address(0x7488)));


extern volatile __bit B1SID4 __attribute__((address(0x7489)));


extern volatile __bit B1SID5 __attribute__((address(0x748A)));


extern volatile __bit B1SID6 __attribute__((address(0x748B)));


extern volatile __bit B1SID7 __attribute__((address(0x748C)));


extern volatile __bit B1SID8 __attribute__((address(0x748D)));


extern volatile __bit B1SID9 __attribute__((address(0x748E)));


extern volatile __bit B1SRR __attribute__((address(0x7494)));


extern volatile __bit B1TXABT __attribute__((address(0x7486)));


extern volatile __bit B1TXB3IF __attribute__((address(0x7487)));


extern volatile __bit B1TXEN __attribute__((address(0x73EB)));


extern volatile __bit B1TXERR __attribute__((address(0x7484)));


extern volatile __bit B1TXLARB __attribute__((address(0x7485)));


extern volatile __bit B1TXPRI0 __attribute__((address(0x7480)));


extern volatile __bit B1TXPRI1 __attribute__((address(0x7481)));


extern volatile __bit B1TXREQ __attribute__((address(0x7483)));


extern volatile __bit B2D00 __attribute__((address(0x7530)));


extern volatile __bit B2D01 __attribute__((address(0x7531)));


extern volatile __bit B2D02 __attribute__((address(0x7532)));


extern volatile __bit B2D03 __attribute__((address(0x7533)));


extern volatile __bit B2D04 __attribute__((address(0x7534)));


extern volatile __bit B2D05 __attribute__((address(0x7535)));


extern volatile __bit B2D06 __attribute__((address(0x7536)));


extern volatile __bit B2D07 __attribute__((address(0x7537)));


extern volatile __bit B2D10 __attribute__((address(0x7538)));


extern volatile __bit B2D11 __attribute__((address(0x7539)));


extern volatile __bit B2D12 __attribute__((address(0x753A)));


extern volatile __bit B2D13 __attribute__((address(0x753B)));


extern volatile __bit B2D14 __attribute__((address(0x753C)));


extern volatile __bit B2D15 __attribute__((address(0x753D)));


extern volatile __bit B2D16 __attribute__((address(0x753E)));


extern volatile __bit B2D17 __attribute__((address(0x753F)));


extern volatile __bit B2D20 __attribute__((address(0x7540)));


extern volatile __bit B2D21 __attribute__((address(0x7541)));


extern volatile __bit B2D22 __attribute__((address(0x7542)));


extern volatile __bit B2D23 __attribute__((address(0x7543)));


extern volatile __bit B2D24 __attribute__((address(0x7544)));


extern volatile __bit B2D25 __attribute__((address(0x7545)));


extern volatile __bit B2D26 __attribute__((address(0x7546)));


extern volatile __bit B2D27 __attribute__((address(0x7547)));


extern volatile __bit B2D30 __attribute__((address(0x7548)));


extern volatile __bit B2D31 __attribute__((address(0x7549)));


extern volatile __bit B2D32 __attribute__((address(0x754A)));


extern volatile __bit B2D33 __attribute__((address(0x754B)));


extern volatile __bit B2D34 __attribute__((address(0x754C)));


extern volatile __bit B2D35 __attribute__((address(0x754D)));


extern volatile __bit B2D36 __attribute__((address(0x754E)));


extern volatile __bit B2D37 __attribute__((address(0x754F)));


extern volatile __bit B2D40 __attribute__((address(0x7550)));


extern volatile __bit B2D41 __attribute__((address(0x7551)));


extern volatile __bit B2D42 __attribute__((address(0x7552)));


extern volatile __bit B2D43 __attribute__((address(0x7553)));


extern volatile __bit B2D44 __attribute__((address(0x7554)));


extern volatile __bit B2D45 __attribute__((address(0x7555)));


extern volatile __bit B2D46 __attribute__((address(0x7556)));


extern volatile __bit B2D47 __attribute__((address(0x7557)));


extern volatile __bit B2D50 __attribute__((address(0x7558)));


extern volatile __bit B2D51 __attribute__((address(0x7559)));


extern volatile __bit B2D52 __attribute__((address(0x755A)));


extern volatile __bit B2D53 __attribute__((address(0x755B)));


extern volatile __bit B2D54 __attribute__((address(0x755C)));


extern volatile __bit B2D55 __attribute__((address(0x755D)));


extern volatile __bit B2D56 __attribute__((address(0x755E)));


extern volatile __bit B2D57 __attribute__((address(0x755F)));


extern volatile __bit B2D60 __attribute__((address(0x7560)));


extern volatile __bit B2D61 __attribute__((address(0x7561)));


extern volatile __bit B2D62 __attribute__((address(0x7562)));


extern volatile __bit B2D63 __attribute__((address(0x7563)));


extern volatile __bit B2D64 __attribute__((address(0x7564)));


extern volatile __bit B2D65 __attribute__((address(0x7565)));


extern volatile __bit B2D66 __attribute__((address(0x7566)));


extern volatile __bit B2D67 __attribute__((address(0x7567)));


extern volatile __bit B2D70 __attribute__((address(0x7568)));


extern volatile __bit B2D71 __attribute__((address(0x7569)));


extern volatile __bit B2D72 __attribute__((address(0x756A)));


extern volatile __bit B2D73 __attribute__((address(0x756B)));


extern volatile __bit B2D74 __attribute__((address(0x756C)));


extern volatile __bit B2D75 __attribute__((address(0x756D)));


extern volatile __bit B2D76 __attribute__((address(0x756E)));


extern volatile __bit B2D77 __attribute__((address(0x756F)));


extern volatile __bit B2DLC0 __attribute__((address(0x7528)));


extern volatile __bit B2DLC1 __attribute__((address(0x7529)));


extern volatile __bit B2DLC2 __attribute__((address(0x752A)));


extern volatile __bit B2DLC3 __attribute__((address(0x752B)));


extern volatile __bit B2EID0 __attribute__((address(0x7520)));


extern volatile __bit B2EID1 __attribute__((address(0x7521)));


extern volatile __bit B2EID10 __attribute__((address(0x751A)));


extern volatile __bit B2EID11 __attribute__((address(0x751B)));


extern volatile __bit B2EID12 __attribute__((address(0x751C)));


extern volatile __bit B2EID13 __attribute__((address(0x751D)));


extern volatile __bit B2EID14 __attribute__((address(0x751E)));


extern volatile __bit B2EID15 __attribute__((address(0x751F)));


extern volatile __bit B2EID16 __attribute__((address(0x7510)));


extern volatile __bit B2EID17 __attribute__((address(0x7511)));


extern volatile __bit B2EID2 __attribute__((address(0x7522)));


extern volatile __bit B2EID3 __attribute__((address(0x7523)));


extern volatile __bit B2EID4 __attribute__((address(0x7524)));


extern volatile __bit B2EID5 __attribute__((address(0x7525)));


extern volatile __bit B2EID6 __attribute__((address(0x7526)));


extern volatile __bit B2EID7 __attribute__((address(0x7527)));


extern volatile __bit B2EID8 __attribute__((address(0x7518)));


extern volatile __bit B2EID9 __attribute__((address(0x7519)));


extern volatile __bit B2EXID __attribute__((address(0x7513)));


extern volatile __bit B2EXIDE __attribute__((address(0x7513)));


extern volatile __bit B2FILHIT0 __attribute__((address(0x7500)));


extern volatile __bit B2FILHIT1 __attribute__((address(0x7501)));


extern volatile __bit B2FILHIT2 __attribute__((address(0x7502)));


extern volatile __bit B2FILHIT3 __attribute__((address(0x7503)));


extern volatile __bit B2FILHIT4 __attribute__((address(0x7504)));


extern volatile __bit B2IE __attribute__((address(0x73F4)));


extern volatile __bit B2RB0 __attribute__((address(0x752C)));


extern volatile __bit B2RB1 __attribute__((address(0x752D)));


extern volatile __bit B2RTREN __attribute__((address(0x7502)));


extern volatile __bit B2RTRRO __attribute__((address(0x7505)));


extern volatile __bit B2RXFUL __attribute__((address(0x7507)));


extern volatile __bit B2RXM1 __attribute__((address(0x7506)));


extern volatile __bit B2RXRTR __attribute__((address(0x752E)));


extern volatile __bit B2SID0 __attribute__((address(0x7515)));


extern volatile __bit B2SID1 __attribute__((address(0x7516)));


extern volatile __bit B2SID10 __attribute__((address(0x750F)));


extern volatile __bit B2SID2 __attribute__((address(0x7517)));


extern volatile __bit B2SID3 __attribute__((address(0x7508)));


extern volatile __bit B2SID4 __attribute__((address(0x7509)));


extern volatile __bit B2SID5 __attribute__((address(0x750A)));


extern volatile __bit B2SID6 __attribute__((address(0x750B)));


extern volatile __bit B2SID7 __attribute__((address(0x750C)));


extern volatile __bit B2SID8 __attribute__((address(0x750D)));


extern volatile __bit B2SID9 __attribute__((address(0x750E)));


extern volatile __bit B2SRR __attribute__((address(0x7514)));


extern volatile __bit B2TXABT __attribute__((address(0x7506)));


extern volatile __bit B2TXB3IF __attribute__((address(0x7507)));


extern volatile __bit B2TXEN __attribute__((address(0x73EC)));


extern volatile __bit B2TXERR __attribute__((address(0x7504)));


extern volatile __bit B2TXLARB __attribute__((address(0x7505)));


extern volatile __bit B2TXPRI0 __attribute__((address(0x7500)));


extern volatile __bit B2TXPRI1 __attribute__((address(0x7501)));


extern volatile __bit B2TXREQ __attribute__((address(0x7503)));


extern volatile __bit B3D00 __attribute__((address(0x75B0)));


extern volatile __bit B3D01 __attribute__((address(0x75B1)));


extern volatile __bit B3D02 __attribute__((address(0x75B2)));


extern volatile __bit B3D03 __attribute__((address(0x75B3)));


extern volatile __bit B3D04 __attribute__((address(0x75B4)));


extern volatile __bit B3D05 __attribute__((address(0x75B5)));


extern volatile __bit B3D06 __attribute__((address(0x75B6)));


extern volatile __bit B3D07 __attribute__((address(0x75B7)));


extern volatile __bit B3D10 __attribute__((address(0x75B8)));


extern volatile __bit B3D11 __attribute__((address(0x75B9)));


extern volatile __bit B3D12 __attribute__((address(0x75BA)));


extern volatile __bit B3D13 __attribute__((address(0x75BB)));


extern volatile __bit B3D14 __attribute__((address(0x75BC)));


extern volatile __bit B3D15 __attribute__((address(0x75BD)));


extern volatile __bit B3D16 __attribute__((address(0x75BE)));


extern volatile __bit B3D17 __attribute__((address(0x75BF)));


extern volatile __bit B3D20 __attribute__((address(0x75C0)));


extern volatile __bit B3D21 __attribute__((address(0x75C1)));


extern volatile __bit B3D22 __attribute__((address(0x75C2)));


extern volatile __bit B3D23 __attribute__((address(0x75C3)));


extern volatile __bit B3D24 __attribute__((address(0x75C4)));


extern volatile __bit B3D25 __attribute__((address(0x75C5)));


extern volatile __bit B3D26 __attribute__((address(0x75C6)));


extern volatile __bit B3D27 __attribute__((address(0x75C7)));


extern volatile __bit B3D30 __attribute__((address(0x75C8)));


extern volatile __bit B3D31 __attribute__((address(0x75C9)));


extern volatile __bit B3D32 __attribute__((address(0x75CA)));


extern volatile __bit B3D33 __attribute__((address(0x75CB)));


extern volatile __bit B3D34 __attribute__((address(0x75CC)));


extern volatile __bit B3D35 __attribute__((address(0x75CD)));


extern volatile __bit B3D36 __attribute__((address(0x75CE)));


extern volatile __bit B3D37 __attribute__((address(0x75CF)));


extern volatile __bit B3D40 __attribute__((address(0x75D0)));


extern volatile __bit B3D41 __attribute__((address(0x75D1)));


extern volatile __bit B3D42 __attribute__((address(0x75D2)));


extern volatile __bit B3D43 __attribute__((address(0x75D3)));


extern volatile __bit B3D44 __attribute__((address(0x75D4)));


extern volatile __bit B3D45 __attribute__((address(0x75D5)));


extern volatile __bit B3D46 __attribute__((address(0x75D6)));


extern volatile __bit B3D47 __attribute__((address(0x75D7)));


extern volatile __bit B3D50 __attribute__((address(0x75D8)));


extern volatile __bit B3D51 __attribute__((address(0x75D9)));


extern volatile __bit B3D52 __attribute__((address(0x75DA)));


extern volatile __bit B3D53 __attribute__((address(0x75DB)));


extern volatile __bit B3D54 __attribute__((address(0x75DC)));


extern volatile __bit B3D55 __attribute__((address(0x75DD)));


extern volatile __bit B3D56 __attribute__((address(0x75DE)));


extern volatile __bit B3D57 __attribute__((address(0x75DF)));


extern volatile __bit B3D60 __attribute__((address(0x75E0)));


extern volatile __bit B3D61 __attribute__((address(0x75E1)));


extern volatile __bit B3D62 __attribute__((address(0x75E2)));


extern volatile __bit B3D63 __attribute__((address(0x75E3)));


extern volatile __bit B3D64 __attribute__((address(0x75E4)));


extern volatile __bit B3D65 __attribute__((address(0x75E5)));


extern volatile __bit B3D66 __attribute__((address(0x75E6)));


extern volatile __bit B3D67 __attribute__((address(0x75E7)));


extern volatile __bit B3D70 __attribute__((address(0x75E8)));


extern volatile __bit B3D71 __attribute__((address(0x75E9)));


extern volatile __bit B3D72 __attribute__((address(0x75EA)));


extern volatile __bit B3D73 __attribute__((address(0x75EB)));


extern volatile __bit B3D74 __attribute__((address(0x75EC)));


extern volatile __bit B3D75 __attribute__((address(0x75ED)));


extern volatile __bit B3D76 __attribute__((address(0x75EE)));


extern volatile __bit B3D77 __attribute__((address(0x75EF)));


extern volatile __bit B3DLC0 __attribute__((address(0x75A8)));


extern volatile __bit B3DLC1 __attribute__((address(0x75A9)));


extern volatile __bit B3DLC2 __attribute__((address(0x75AA)));


extern volatile __bit B3DLC3 __attribute__((address(0x75AB)));


extern volatile __bit B3EID0 __attribute__((address(0x75A0)));


extern volatile __bit B3EID1 __attribute__((address(0x75A1)));


extern volatile __bit B3EID10 __attribute__((address(0x759A)));


extern volatile __bit B3EID11 __attribute__((address(0x759B)));


extern volatile __bit B3EID12 __attribute__((address(0x759C)));


extern volatile __bit B3EID13 __attribute__((address(0x759D)));


extern volatile __bit B3EID14 __attribute__((address(0x759E)));


extern volatile __bit B3EID15 __attribute__((address(0x759F)));


extern volatile __bit B3EID16 __attribute__((address(0x7590)));


extern volatile __bit B3EID17 __attribute__((address(0x7591)));


extern volatile __bit B3EID2 __attribute__((address(0x75A2)));


extern volatile __bit B3EID3 __attribute__((address(0x75A3)));


extern volatile __bit B3EID4 __attribute__((address(0x75A4)));


extern volatile __bit B3EID5 __attribute__((address(0x75A5)));


extern volatile __bit B3EID6 __attribute__((address(0x75A6)));


extern volatile __bit B3EID7 __attribute__((address(0x75A7)));


extern volatile __bit B3EID8 __attribute__((address(0x7598)));


extern volatile __bit B3EID9 __attribute__((address(0x7599)));


extern volatile __bit B3EXID __attribute__((address(0x7593)));


extern volatile __bit B3EXIDE __attribute__((address(0x7593)));


extern volatile __bit B3FILHIT0 __attribute__((address(0x7580)));


extern volatile __bit B3FILHIT1 __attribute__((address(0x7581)));


extern volatile __bit B3FILHIT2 __attribute__((address(0x7582)));


extern volatile __bit B3FILHIT3 __attribute__((address(0x7583)));


extern volatile __bit B3FILHIT4 __attribute__((address(0x7584)));


extern volatile __bit B3IE __attribute__((address(0x73F5)));


extern volatile __bit B3RB0 __attribute__((address(0x75AC)));


extern volatile __bit B3RB1 __attribute__((address(0x75AD)));


extern volatile __bit B3RTREN __attribute__((address(0x7582)));


extern volatile __bit B3RTRRO __attribute__((address(0x7585)));


extern volatile __bit B3RXFUL __attribute__((address(0x7587)));


extern volatile __bit B3RXM1 __attribute__((address(0x7586)));


extern volatile __bit B3RXRTR __attribute__((address(0x75AE)));


extern volatile __bit B3SID0 __attribute__((address(0x7595)));


extern volatile __bit B3SID1 __attribute__((address(0x7596)));


extern volatile __bit B3SID10 __attribute__((address(0x758F)));


extern volatile __bit B3SID2 __attribute__((address(0x7597)));


extern volatile __bit B3SID3 __attribute__((address(0x7588)));


extern volatile __bit B3SID4 __attribute__((address(0x7589)));


extern volatile __bit B3SID5 __attribute__((address(0x758A)));


extern volatile __bit B3SID6 __attribute__((address(0x758B)));


extern volatile __bit B3SID7 __attribute__((address(0x758C)));


extern volatile __bit B3SID8 __attribute__((address(0x758D)));


extern volatile __bit B3SID9 __attribute__((address(0x758E)));


extern volatile __bit B3SRR __attribute__((address(0x7594)));


extern volatile __bit B3TXABT __attribute__((address(0x7586)));


extern volatile __bit B3TXB3IF __attribute__((address(0x7587)));


extern volatile __bit B3TXEN __attribute__((address(0x73ED)));


extern volatile __bit B3TXERR __attribute__((address(0x7584)));


extern volatile __bit B3TXLARB __attribute__((address(0x7585)));


extern volatile __bit B3TXPRI0 __attribute__((address(0x7580)));


extern volatile __bit B3TXPRI1 __attribute__((address(0x7581)));


extern volatile __bit B3TXREQ __attribute__((address(0x7583)));


extern volatile __bit B4D00 __attribute__((address(0x7630)));


extern volatile __bit B4D01 __attribute__((address(0x7631)));


extern volatile __bit B4D02 __attribute__((address(0x7632)));


extern volatile __bit B4D03 __attribute__((address(0x7633)));


extern volatile __bit B4D04 __attribute__((address(0x7634)));


extern volatile __bit B4D05 __attribute__((address(0x7635)));


extern volatile __bit B4D06 __attribute__((address(0x7636)));


extern volatile __bit B4D07 __attribute__((address(0x7637)));


extern volatile __bit B4D10 __attribute__((address(0x7638)));


extern volatile __bit B4D11 __attribute__((address(0x7639)));


extern volatile __bit B4D12 __attribute__((address(0x763A)));


extern volatile __bit B4D13 __attribute__((address(0x763B)));


extern volatile __bit B4D14 __attribute__((address(0x763C)));


extern volatile __bit B4D15 __attribute__((address(0x763D)));


extern volatile __bit B4D16 __attribute__((address(0x763E)));


extern volatile __bit B4D17 __attribute__((address(0x763F)));


extern volatile __bit B4D20 __attribute__((address(0x7640)));


extern volatile __bit B4D21 __attribute__((address(0x7641)));


extern volatile __bit B4D22 __attribute__((address(0x7642)));


extern volatile __bit B4D23 __attribute__((address(0x7643)));


extern volatile __bit B4D24 __attribute__((address(0x7644)));


extern volatile __bit B4D25 __attribute__((address(0x7645)));


extern volatile __bit B4D26 __attribute__((address(0x7646)));


extern volatile __bit B4D27 __attribute__((address(0x7647)));


extern volatile __bit B4D30 __attribute__((address(0x7648)));


extern volatile __bit B4D31 __attribute__((address(0x7649)));


extern volatile __bit B4D32 __attribute__((address(0x764A)));


extern volatile __bit B4D33 __attribute__((address(0x764B)));


extern volatile __bit B4D34 __attribute__((address(0x764C)));


extern volatile __bit B4D35 __attribute__((address(0x764D)));


extern volatile __bit B4D36 __attribute__((address(0x764E)));


extern volatile __bit B4D37 __attribute__((address(0x764F)));


extern volatile __bit B4D40 __attribute__((address(0x7650)));


extern volatile __bit B4D41 __attribute__((address(0x7651)));


extern volatile __bit B4D42 __attribute__((address(0x7652)));


extern volatile __bit B4D43 __attribute__((address(0x7653)));


extern volatile __bit B4D44 __attribute__((address(0x7654)));


extern volatile __bit B4D45 __attribute__((address(0x7655)));


extern volatile __bit B4D46 __attribute__((address(0x7656)));


extern volatile __bit B4D47 __attribute__((address(0x7657)));


extern volatile __bit B4D50 __attribute__((address(0x7658)));


extern volatile __bit B4D51 __attribute__((address(0x7659)));


extern volatile __bit B4D52 __attribute__((address(0x765A)));


extern volatile __bit B4D53 __attribute__((address(0x765B)));


extern volatile __bit B4D54 __attribute__((address(0x765C)));


extern volatile __bit B4D55 __attribute__((address(0x765D)));


extern volatile __bit B4D56 __attribute__((address(0x765E)));


extern volatile __bit B4D57 __attribute__((address(0x765F)));


extern volatile __bit B4D60 __attribute__((address(0x7660)));


extern volatile __bit B4D61 __attribute__((address(0x7661)));


extern volatile __bit B4D62 __attribute__((address(0x7662)));


extern volatile __bit B4D63 __attribute__((address(0x7663)));


extern volatile __bit B4D64 __attribute__((address(0x7664)));


extern volatile __bit B4D65 __attribute__((address(0x7665)));


extern volatile __bit B4D66 __attribute__((address(0x7666)));


extern volatile __bit B4D67 __attribute__((address(0x7667)));


extern volatile __bit B4D70 __attribute__((address(0x7668)));


extern volatile __bit B4D71 __attribute__((address(0x7669)));


extern volatile __bit B4D72 __attribute__((address(0x766A)));


extern volatile __bit B4D73 __attribute__((address(0x766B)));


extern volatile __bit B4D74 __attribute__((address(0x766C)));


extern volatile __bit B4D75 __attribute__((address(0x766D)));


extern volatile __bit B4D76 __attribute__((address(0x766E)));


extern volatile __bit B4D77 __attribute__((address(0x766F)));


extern volatile __bit B4DLC0 __attribute__((address(0x7628)));


extern volatile __bit B4DLC1 __attribute__((address(0x7629)));


extern volatile __bit B4DLC2 __attribute__((address(0x762A)));


extern volatile __bit B4DLC3 __attribute__((address(0x762B)));


extern volatile __bit B4EID0 __attribute__((address(0x7620)));


extern volatile __bit B4EID1 __attribute__((address(0x7621)));


extern volatile __bit B4EID10 __attribute__((address(0x761A)));


extern volatile __bit B4EID11 __attribute__((address(0x761B)));


extern volatile __bit B4EID12 __attribute__((address(0x761C)));


extern volatile __bit B4EID13 __attribute__((address(0x761D)));


extern volatile __bit B4EID14 __attribute__((address(0x761E)));


extern volatile __bit B4EID15 __attribute__((address(0x761F)));


extern volatile __bit B4EID16 __attribute__((address(0x7610)));


extern volatile __bit B4EID17 __attribute__((address(0x7611)));


extern volatile __bit B4EID2 __attribute__((address(0x7622)));


extern volatile __bit B4EID3 __attribute__((address(0x7623)));


extern volatile __bit B4EID4 __attribute__((address(0x7624)));


extern volatile __bit B4EID5 __attribute__((address(0x7625)));


extern volatile __bit B4EID6 __attribute__((address(0x7626)));


extern volatile __bit B4EID7 __attribute__((address(0x7627)));


extern volatile __bit B4EID8 __attribute__((address(0x7618)));


extern volatile __bit B4EID9 __attribute__((address(0x7619)));


extern volatile __bit B4EXID __attribute__((address(0x7613)));


extern volatile __bit B4EXIDE __attribute__((address(0x7613)));


extern volatile __bit B4FILHIT0 __attribute__((address(0x7600)));


extern volatile __bit B4FILHIT1 __attribute__((address(0x7601)));


extern volatile __bit B4FILHIT2 __attribute__((address(0x7602)));


extern volatile __bit B4FILHIT3 __attribute__((address(0x7603)));


extern volatile __bit B4FILHIT4 __attribute__((address(0x7604)));


extern volatile __bit B4IE __attribute__((address(0x73F6)));


extern volatile __bit B4RB0 __attribute__((address(0x762C)));


extern volatile __bit B4RB1 __attribute__((address(0x762D)));


extern volatile __bit B4RTREN __attribute__((address(0x7602)));


extern volatile __bit B4RTRRO __attribute__((address(0x7605)));


extern volatile __bit B4RXFUL __attribute__((address(0x7607)));


extern volatile __bit B4RXM1 __attribute__((address(0x7606)));


extern volatile __bit B4RXRTR __attribute__((address(0x762E)));


extern volatile __bit B4SID0 __attribute__((address(0x7615)));


extern volatile __bit B4SID1 __attribute__((address(0x7616)));


extern volatile __bit B4SID10 __attribute__((address(0x760F)));


extern volatile __bit B4SID2 __attribute__((address(0x7617)));


extern volatile __bit B4SID3 __attribute__((address(0x7608)));


extern volatile __bit B4SID4 __attribute__((address(0x7609)));


extern volatile __bit B4SID5 __attribute__((address(0x760A)));


extern volatile __bit B4SID6 __attribute__((address(0x760B)));


extern volatile __bit B4SID7 __attribute__((address(0x760C)));


extern volatile __bit B4SID8 __attribute__((address(0x760D)));


extern volatile __bit B4SID9 __attribute__((address(0x760E)));


extern volatile __bit B4SRR __attribute__((address(0x7614)));


extern volatile __bit B4TXABT __attribute__((address(0x7606)));


extern volatile __bit B4TXB3IF __attribute__((address(0x7607)));


extern volatile __bit B4TXEN __attribute__((address(0x73EE)));


extern volatile __bit B4TXERR __attribute__((address(0x7604)));


extern volatile __bit B4TXLARB __attribute__((address(0x7605)));


extern volatile __bit B4TXPRI0 __attribute__((address(0x7600)));


extern volatile __bit B4TXPRI1 __attribute__((address(0x7601)));


extern volatile __bit B4TXREQ __attribute__((address(0x7603)));


extern volatile __bit B5D00 __attribute__((address(0x76B0)));


extern volatile __bit B5D01 __attribute__((address(0x76B1)));


extern volatile __bit B5D02 __attribute__((address(0x76B2)));


extern volatile __bit B5D03 __attribute__((address(0x76B3)));


extern volatile __bit B5D04 __attribute__((address(0x76B4)));


extern volatile __bit B5D05 __attribute__((address(0x76B5)));


extern volatile __bit B5D06 __attribute__((address(0x76B6)));


extern volatile __bit B5D07 __attribute__((address(0x76B7)));


extern volatile __bit B5D10 __attribute__((address(0x76B8)));


extern volatile __bit B5D11 __attribute__((address(0x76B9)));


extern volatile __bit B5D12 __attribute__((address(0x76BA)));


extern volatile __bit B5D13 __attribute__((address(0x76BB)));


extern volatile __bit B5D14 __attribute__((address(0x76BC)));


extern volatile __bit B5D15 __attribute__((address(0x76BD)));


extern volatile __bit B5D16 __attribute__((address(0x76BE)));


extern volatile __bit B5D17 __attribute__((address(0x76BF)));


extern volatile __bit B5D20 __attribute__((address(0x76C0)));


extern volatile __bit B5D21 __attribute__((address(0x76C1)));


extern volatile __bit B5D22 __attribute__((address(0x76C2)));


extern volatile __bit B5D23 __attribute__((address(0x76C3)));


extern volatile __bit B5D24 __attribute__((address(0x76C4)));


extern volatile __bit B5D25 __attribute__((address(0x76C5)));


extern volatile __bit B5D26 __attribute__((address(0x76C6)));


extern volatile __bit B5D27 __attribute__((address(0x76C7)));


extern volatile __bit B5D30 __attribute__((address(0x76C8)));


extern volatile __bit B5D31 __attribute__((address(0x76C9)));


extern volatile __bit B5D32 __attribute__((address(0x76CA)));


extern volatile __bit B5D33 __attribute__((address(0x76CB)));


extern volatile __bit B5D34 __attribute__((address(0x76CC)));


extern volatile __bit B5D35 __attribute__((address(0x76CD)));


extern volatile __bit B5D36 __attribute__((address(0x76CE)));


extern volatile __bit B5D37 __attribute__((address(0x76CF)));


extern volatile __bit B5D40 __attribute__((address(0x76D0)));


extern volatile __bit B5D41 __attribute__((address(0x76D1)));


extern volatile __bit B5D42 __attribute__((address(0x76D2)));


extern volatile __bit B5D43 __attribute__((address(0x76D3)));


extern volatile __bit B5D44 __attribute__((address(0x76D4)));


extern volatile __bit B5D45 __attribute__((address(0x76D5)));


extern volatile __bit B5D46 __attribute__((address(0x76D6)));


extern volatile __bit B5D47 __attribute__((address(0x76D7)));


extern volatile __bit B5D50 __attribute__((address(0x76D8)));


extern volatile __bit B5D51 __attribute__((address(0x76D9)));


extern volatile __bit B5D52 __attribute__((address(0x76DA)));


extern volatile __bit B5D53 __attribute__((address(0x76DB)));


extern volatile __bit B5D54 __attribute__((address(0x76DC)));


extern volatile __bit B5D55 __attribute__((address(0x76DD)));


extern volatile __bit B5D56 __attribute__((address(0x76DE)));


extern volatile __bit B5D57 __attribute__((address(0x76DF)));


extern volatile __bit B5D60 __attribute__((address(0x76E0)));


extern volatile __bit B5D61 __attribute__((address(0x76E1)));


extern volatile __bit B5D62 __attribute__((address(0x76E2)));


extern volatile __bit B5D63 __attribute__((address(0x76E3)));


extern volatile __bit B5D64 __attribute__((address(0x76E4)));


extern volatile __bit B5D65 __attribute__((address(0x76E5)));


extern volatile __bit B5D66 __attribute__((address(0x76E6)));


extern volatile __bit B5D67 __attribute__((address(0x76E7)));


extern volatile __bit B5D70 __attribute__((address(0x76E8)));


extern volatile __bit B5D71 __attribute__((address(0x76E9)));


extern volatile __bit B5D72 __attribute__((address(0x76EA)));


extern volatile __bit B5D73 __attribute__((address(0x76EB)));


extern volatile __bit B5D74 __attribute__((address(0x76EC)));


extern volatile __bit B5D75 __attribute__((address(0x76ED)));


extern volatile __bit B5D76 __attribute__((address(0x76EE)));


extern volatile __bit B5D77 __attribute__((address(0x76EF)));


extern volatile __bit B5DLC0 __attribute__((address(0x76A8)));


extern volatile __bit B5DLC1 __attribute__((address(0x76A9)));


extern volatile __bit B5DLC2 __attribute__((address(0x76AA)));


extern volatile __bit B5DLC3 __attribute__((address(0x76AB)));


extern volatile __bit B5EID0 __attribute__((address(0x76A0)));


extern volatile __bit B5EID1 __attribute__((address(0x76A1)));


extern volatile __bit B5EID10 __attribute__((address(0x769A)));


extern volatile __bit B5EID11 __attribute__((address(0x769B)));


extern volatile __bit B5EID12 __attribute__((address(0x769C)));


extern volatile __bit B5EID13 __attribute__((address(0x769D)));


extern volatile __bit B5EID14 __attribute__((address(0x769E)));


extern volatile __bit B5EID15 __attribute__((address(0x769F)));


extern volatile __bit B5EID16 __attribute__((address(0x7690)));


extern volatile __bit B5EID17 __attribute__((address(0x7691)));


extern volatile __bit B5EID2 __attribute__((address(0x76A2)));


extern volatile __bit B5EID3 __attribute__((address(0x76A3)));


extern volatile __bit B5EID4 __attribute__((address(0x76A4)));


extern volatile __bit B5EID5 __attribute__((address(0x76A5)));


extern volatile __bit B5EID6 __attribute__((address(0x76A6)));


extern volatile __bit B5EID7 __attribute__((address(0x76A7)));


extern volatile __bit B5EID8 __attribute__((address(0x7698)));


extern volatile __bit B5EID9 __attribute__((address(0x7699)));


extern volatile __bit B5EXID __attribute__((address(0x7693)));


extern volatile __bit B5EXIDE __attribute__((address(0x7693)));


extern volatile __bit B5FILHIT0 __attribute__((address(0x7680)));


extern volatile __bit B5FILHIT1 __attribute__((address(0x7681)));


extern volatile __bit B5FILHIT2 __attribute__((address(0x7682)));


extern volatile __bit B5FILHIT3 __attribute__((address(0x7683)));


extern volatile __bit B5FILHIT4 __attribute__((address(0x7684)));


extern volatile __bit B5IE __attribute__((address(0x73F7)));


extern volatile __bit B5RB0 __attribute__((address(0x76AC)));


extern volatile __bit B5RB1 __attribute__((address(0x76AD)));


extern volatile __bit B5RTREN __attribute__((address(0x7682)));


extern volatile __bit B5RTRRO __attribute__((address(0x7685)));


extern volatile __bit B5RXFUL __attribute__((address(0x7687)));


extern volatile __bit B5RXM1 __attribute__((address(0x7686)));


extern volatile __bit B5RXRTR __attribute__((address(0x76AE)));


extern volatile __bit B5SID0 __attribute__((address(0x7695)));


extern volatile __bit B5SID1 __attribute__((address(0x7696)));


extern volatile __bit B5SID10 __attribute__((address(0x768F)));


extern volatile __bit B5SID2 __attribute__((address(0x7697)));


extern volatile __bit B5SID3 __attribute__((address(0x7688)));


extern volatile __bit B5SID4 __attribute__((address(0x7689)));


extern volatile __bit B5SID5 __attribute__((address(0x768A)));


extern volatile __bit B5SID6 __attribute__((address(0x768B)));


extern volatile __bit B5SID7 __attribute__((address(0x768C)));


extern volatile __bit B5SID8 __attribute__((address(0x768D)));


extern volatile __bit B5SID9 __attribute__((address(0x768E)));


extern volatile __bit B5SRR __attribute__((address(0x7694)));


extern volatile __bit B5TXABT __attribute__((address(0x7686)));


extern volatile __bit B5TXBIF __attribute__((address(0x7687)));


extern volatile __bit B5TXEN __attribute__((address(0x73EF)));


extern volatile __bit B5TXERR __attribute__((address(0x7684)));


extern volatile __bit B5TXLARB __attribute__((address(0x7685)));


extern volatile __bit B5TXPRI0 __attribute__((address(0x7680)));


extern volatile __bit B5TXPRI1 __attribute__((address(0x7681)));


extern volatile __bit B5TXREQ __attribute__((address(0x7683)));


extern volatile __bit BCLIE __attribute__((address(0x7D03)));


extern volatile __bit BCLIF __attribute__((address(0x7D0B)));


extern volatile __bit BCLIP __attribute__((address(0x7D13)));


extern volatile __bit BF __attribute__((address(0x7E38)));


extern volatile __bit BGVST __attribute__((address(0x7D46)));


extern volatile __bit BOR __attribute__((address(0x7E80)));


extern volatile __bit BRG161 __attribute__((address(0x7D3B)));


extern volatile __bit BRG162 __attribute__((address(0x7DCB)));


extern volatile __bit BRGH1 __attribute__((address(0x7D62)));


extern volatile __bit BRGH2 __attribute__((address(0x7DD2)));


extern volatile __bit BRP0 __attribute__((address(0x7218)));


extern volatile __bit BRP1 __attribute__((address(0x7219)));


extern volatile __bit BRP2 __attribute__((address(0x721A)));


extern volatile __bit BRP3 __attribute__((address(0x721B)));


extern volatile __bit BRP4 __attribute__((address(0x721C)));


extern volatile __bit BRP5 __attribute__((address(0x721D)));


extern volatile __bit C1CH0 __attribute__((address(0x7AF8)));


extern volatile __bit C1CH1 __attribute__((address(0x7AF9)));


extern volatile __bit C1TSEL __attribute__((address(0x7CC8)));


extern volatile __bit C2OUT __attribute__((address(0x7DA6)));


extern volatile __bit C2TSEL __attribute__((address(0x7CC9)));


extern volatile __bit C3OUT __attribute__((address(0x7DA7)));


extern volatile __bit C3TSEL __attribute__((address(0x7CCA)));


extern volatile __bit C4TSEL __attribute__((address(0x7CCB)));


extern volatile __bit C5TSEL __attribute__((address(0x7CCC)));


extern volatile __bit CANCAP __attribute__((address(0x7B84)));


extern volatile __bit CARRY __attribute__((address(0x7EC0)));


extern volatile __bit CCH01 __attribute__((address(0x7AF8)));


extern volatile __bit CCH02 __attribute__((address(0x7AF0)));


extern volatile __bit CCH05 __attribute__((address(0x7BC0)));


extern volatile __bit CCH11 __attribute__((address(0x7AF9)));


extern volatile __bit CCH12 __attribute__((address(0x7AF1)));


extern volatile __bit CCH15 __attribute__((address(0x7BC1)));


extern volatile __bit CCIP3IP __attribute__((address(0x7DC0)));


extern volatile __bit CCP1IE __attribute__((address(0x7D19)));


extern volatile __bit CCP1IF __attribute__((address(0x7D21)));


extern volatile __bit CCP1IP __attribute__((address(0x7D29)));


extern volatile __bit CCP1M0 __attribute__((address(0x7DD8)));


extern volatile __bit CCP1M1 __attribute__((address(0x7DD9)));


extern volatile __bit CCP1M2 __attribute__((address(0x7DDA)));


extern volatile __bit CCP1M3 __attribute__((address(0x7DDB)));


extern volatile __bit CCP1MD __attribute__((address(0x7ACB)));


extern volatile __bit CCP1OD __attribute__((address(0x7C8A)));


extern volatile __bit CCP1X __attribute__((address(0x7DDD)));


extern volatile __bit CCP1Y __attribute__((address(0x7DDC)));


extern volatile __bit CCP2 __attribute__((address(0x7C11)));


extern volatile __bit CCP2IE __attribute__((address(0x7D1A)));


extern volatile __bit CCP2IF __attribute__((address(0x7D22)));


extern volatile __bit CCP2IP __attribute__((address(0x7D2A)));


extern volatile __bit CCP2M0 __attribute__((address(0x7A80)));


extern volatile __bit CCP2M1 __attribute__((address(0x7A81)));


extern volatile __bit CCP2M2 __attribute__((address(0x7A82)));


extern volatile __bit CCP2M3 __attribute__((address(0x7A83)));


extern volatile __bit CCP2MD __attribute__((address(0x7ACC)));


extern volatile __bit CCP2OD __attribute__((address(0x7C8B)));


extern volatile __bit CCP2X __attribute__((address(0x7A85)));


extern volatile __bit CCP2Y __attribute__((address(0x7A84)));


extern volatile __bit CCP2_PA2 __attribute__((address(0x7C0B)));


extern volatile __bit CCP3IE __attribute__((address(0x7DB0)));


extern volatile __bit CCP3IF __attribute__((address(0x7DB8)));


extern volatile __bit CCP3IP __attribute__((address(0x7DC0)));


extern volatile __bit CCP3M0 __attribute__((address(0x7A68)));


extern volatile __bit CCP3M1 __attribute__((address(0x7A69)));


extern volatile __bit CCP3M2 __attribute__((address(0x7A6A)));


extern volatile __bit CCP3M3 __attribute__((address(0x7A6B)));


extern volatile __bit CCP3MD __attribute__((address(0x7ACD)));


extern volatile __bit CCP3OD __attribute__((address(0x7C8C)));


extern volatile __bit CCP3X __attribute__((address(0x7A6D)));


extern volatile __bit CCP3Y __attribute__((address(0x7A6C)));


extern volatile __bit CCP4IE __attribute__((address(0x7DB1)));


extern volatile __bit CCP4IF __attribute__((address(0x7DB9)));


extern volatile __bit CCP4IP __attribute__((address(0x7DC1)));


extern volatile __bit CCP4M0 __attribute__((address(0x7A50)));


extern volatile __bit CCP4M1 __attribute__((address(0x7A51)));


extern volatile __bit CCP4M2 __attribute__((address(0x7A52)));


extern volatile __bit CCP4M3 __attribute__((address(0x7A53)));


extern volatile __bit CCP4MD __attribute__((address(0x7ACE)));


extern volatile __bit CCP4OD __attribute__((address(0x7C8D)));


extern volatile __bit CCP4X __attribute__((address(0x7A55)));


extern volatile __bit CCP4Y __attribute__((address(0x7A54)));


extern volatile __bit CCP5IE __attribute__((address(0x7DB2)));


extern volatile __bit CCP5IF __attribute__((address(0x7DBA)));


extern volatile __bit CCP5IP __attribute__((address(0x7DC2)));


extern volatile __bit CCP5M0 __attribute__((address(0x7A38)));


extern volatile __bit CCP5M1 __attribute__((address(0x7A39)));


extern volatile __bit CCP5M2 __attribute__((address(0x7A3A)));


extern volatile __bit CCP5M3 __attribute__((address(0x7A3B)));


extern volatile __bit CCP5MD __attribute__((address(0x7ACF)));


extern volatile __bit CCP5OD __attribute__((address(0x7C8E)));


extern volatile __bit CCP5X __attribute__((address(0x7A3D)));


extern volatile __bit CCP5Y __attribute__((address(0x7A3C)));


extern volatile __bit CCP9E __attribute__((address(0x7C23)));


extern volatile __bit CFGS __attribute__((address(0x7BFE)));


extern volatile __bit CHS0 __attribute__((address(0x7E12)));


extern volatile __bit CHS1 __attribute__((address(0x7E13)));


extern volatile __bit CHS2 __attribute__((address(0x7E14)));


extern volatile __bit CHS3 __attribute__((address(0x7E15)));


extern volatile __bit CHS4 __attribute__((address(0x7E16)));


extern volatile __bit CHSN0 __attribute__((address(0x7E08)));


extern volatile __bit CHSN1 __attribute__((address(0x7E09)));


extern volatile __bit CHSN2 __attribute__((address(0x7E0A)));


extern volatile __bit CHSN3 __attribute__((address(0x7E0B)));


extern volatile __bit CKE __attribute__((address(0x7E3E)));


extern volatile __bit CKP __attribute__((address(0x7E34)));


extern volatile __bit CKTXP __attribute__((address(0x7D3C)));


extern volatile __bit CLKSEL __attribute__((address(0x7B80)));


extern volatile __bit CM __attribute__((address(0x7E85)));


extern volatile __bit CMP1IE __attribute__((address(0x7DB4)));


extern volatile __bit CMP1IF __attribute__((address(0x7DBC)));


extern volatile __bit CMP1IP __attribute__((address(0x7DC4)));


extern volatile __bit CMP1MD __attribute__((address(0x7AB8)));


extern volatile __bit CMP1OUT __attribute__((address(0x7DA6)));


extern volatile __bit CMP2IE __attribute__((address(0x7DB5)));


extern volatile __bit CMP2IF __attribute__((address(0x7DBD)));


extern volatile __bit CMP2IP __attribute__((address(0x7DC5)));


extern volatile __bit CMP2MD __attribute__((address(0x7AB9)));


extern volatile __bit CMP2OUT __attribute__((address(0x7DA7)));


extern volatile __bit CMPL0 __attribute__((address(0x7CE6)));


extern volatile __bit CMPL1 __attribute__((address(0x7CE7)));


extern volatile __bit COE1 __attribute__((address(0x7AFE)));


extern volatile __bit COE2 __attribute__((address(0x7AF6)));


extern volatile __bit CON1 __attribute__((address(0x7AFF)));


extern volatile __bit CON2 __attribute__((address(0x7AF7)));


extern volatile __bit CPOL1 __attribute__((address(0x7AFD)));


extern volatile __bit CPOL2 __attribute__((address(0x7AF5)));


extern volatile __bit CREF1 __attribute__((address(0x7AFA)));


extern volatile __bit CREF2 __attribute__((address(0x7AF2)));


extern volatile __bit CREN1 __attribute__((address(0x7D5C)));


extern volatile __bit CREN2 __attribute__((address(0x7D34)));


extern volatile __bit CSRC1 __attribute__((address(0x7D67)));


extern volatile __bit CSRC2 __attribute__((address(0x7DD7)));


extern volatile __bit CTMUDS __attribute__((address(0x7AB0)));


extern volatile __bit CTMUEN __attribute__((address(0x7AAF)));


extern volatile __bit CTMUIE __attribute__((address(0x7D1B)));


extern volatile __bit CTMUIF __attribute__((address(0x7D23)));


extern volatile __bit CTMUIP __attribute__((address(0x7D2B)));


extern volatile __bit CTMUMD __attribute__((address(0x7AC6)));


extern volatile __bit CTMUSIDL __attribute__((address(0x7AAD)));


extern volatile __bit CTTRIG __attribute__((address(0x7AA8)));


extern volatile __bit CVR0 __attribute__((address(0x7DA8)));


extern volatile __bit CVR1 __attribute__((address(0x7DA9)));


extern volatile __bit CVR2 __attribute__((address(0x7DAA)));


extern volatile __bit CVR3 __attribute__((address(0x7DAB)));


extern volatile __bit CVR4 __attribute__((address(0x7DAC)));


extern volatile __bit CVREN __attribute__((address(0x7DAF)));


extern volatile __bit CVROE __attribute__((address(0x7DAE)));


extern volatile __bit CVROEN __attribute__((address(0x7DAE)));


extern volatile __bit CVRR __attribute__((address(0x7DAD)));


extern volatile __bit CVRSS __attribute__((address(0x7DAD)));


extern volatile __bit DA __attribute__((address(0x7E3D)));


extern volatile __bit DATA_ADDRESS __attribute__((address(0x7E3D)));


extern volatile __bit DC __attribute__((address(0x7EC1)));


extern volatile __bit DC1B0 __attribute__((address(0x7DDC)));


extern volatile __bit DC1B1 __attribute__((address(0x7DDD)));


extern volatile __bit DC2B0 __attribute__((address(0x7A84)));


extern volatile __bit DC2B1 __attribute__((address(0x7A85)));


extern volatile __bit DC3B0 __attribute__((address(0x7A6C)));


extern volatile __bit DC3B1 __attribute__((address(0x7A6D)));


extern volatile __bit DC4B0 __attribute__((address(0x7A54)));


extern volatile __bit DC4B1 __attribute__((address(0x7A55)));


extern volatile __bit DC5B0 __attribute__((address(0x7A3C)));


extern volatile __bit DC5B1 __attribute__((address(0x7A3D)));


extern volatile __bit DONE __attribute__((address(0x7E11)));


extern volatile __bit DRXB0IE __attribute__((address(0x73F0)));


extern volatile __bit DRXB1IE __attribute__((address(0x73F1)));


extern volatile __bit DTRXP __attribute__((address(0x7D3D)));


extern volatile __bit DTRXP1 __attribute__((address(0x7D3D)));


extern volatile __bit DTRXP2 __attribute__((address(0x7DCD)));


extern volatile __bit D_A __attribute__((address(0x7E3D)));


extern volatile __bit D_NOT_A __attribute__((address(0x7E3D)));


extern volatile __bit D_nA __attribute__((address(0x7E3D)));


extern volatile __bit EBDIS __attribute__((address(0x7E5F)));


extern volatile __bit ECANMD __attribute__((address(0x7ABA)));


extern volatile __bit ECCP1AS0 __attribute__((address(0x7DFC)));


extern volatile __bit ECCP1AS1 __attribute__((address(0x7DFD)));


extern volatile __bit ECCP1AS2 __attribute__((address(0x7DFE)));


extern volatile __bit ECCP1ASE __attribute__((address(0x7DFF)));


extern volatile __bit EDG1POL __attribute__((address(0x7AA4)));


extern volatile __bit EDG1SEL0 __attribute__((address(0x7AA2)));


extern volatile __bit EDG1SEL1 __attribute__((address(0x7AA3)));


extern volatile __bit EDG1STAT __attribute__((address(0x7AA0)));


extern volatile __bit EDG2POL __attribute__((address(0x7AA7)));


extern volatile __bit EDG2SEL0 __attribute__((address(0x7AA5)));


extern volatile __bit EDG2SEL1 __attribute__((address(0x7AA6)));


extern volatile __bit EDG2STAT __attribute__((address(0x7AA1)));


extern volatile __bit EDGEN __attribute__((address(0x7AAB)));


extern volatile __bit EDGSEQEN __attribute__((address(0x7AAA)));


extern volatile __bit EDI16 __attribute__((address(0x7990)));


extern volatile __bit EDI17 __attribute__((address(0x7991)));


extern volatile __bit EEFS __attribute__((address(0x7BFE)));


extern volatile __bit EEIE __attribute__((address(0x7DB6)));


extern volatile __bit EEIF __attribute__((address(0x7DBE)));


extern volatile __bit EEIP __attribute__((address(0x7DC6)));


extern volatile __bit EEPGD __attribute__((address(0x7BFF)));


extern volatile __bit EMBMD __attribute__((address(0x7AC0)));


extern volatile __bit ENDRHI __attribute__((address(0x7B85)));


extern volatile __bit ERRIE __attribute__((address(0x7BB5)));


extern volatile __bit ERRIF __attribute__((address(0x7BBD)));


extern volatile __bit ERRIP __attribute__((address(0x7BC5)));


extern volatile __bit EVPOL01 __attribute__((address(0x7AFB)));


extern volatile __bit EVPOL02 __attribute__((address(0x7AF3)));


extern volatile __bit EVPOL05 __attribute__((address(0x7BC3)));


extern volatile __bit EVPOL11 __attribute__((address(0x7AFC)));


extern volatile __bit EVPOL12 __attribute__((address(0x7AF4)));


extern volatile __bit EVPOL15 __attribute__((address(0x7BC4)));


extern volatile __bit EWARN __attribute__((address(0x7B88)));


extern volatile __bit EWIN0 __attribute__((address(0x7B90)));


extern volatile __bit EWIN1 __attribute__((address(0x7B91)));


extern volatile __bit EWIN2 __attribute__((address(0x7B92)));


extern volatile __bit EWIN3 __attribute__((address(0x7B93)));


extern volatile __bit EWIN4 __attribute__((address(0x7B94)));


extern volatile __bit F0BP_0 __attribute__((address(0x7388)));


extern volatile __bit F0BP_01 __attribute__((address(0x7388)));


extern volatile __bit F0BP_1 __attribute__((address(0x7389)));


extern volatile __bit F0BP_2 __attribute__((address(0x738A)));


extern volatile __bit F0BP_3 __attribute__((address(0x738B)));


extern volatile __bit F10BP_0 __attribute__((address(0x73B0)));


extern volatile __bit F10BP_01 __attribute__((address(0x73B0)));


extern volatile __bit F10BP_1 __attribute__((address(0x73B1)));


extern volatile __bit F10BP_2 __attribute__((address(0x73B2)));


extern volatile __bit F10BP_3 __attribute__((address(0x73B3)));


extern volatile __bit F11BP_0 __attribute__((address(0x73B4)));


extern volatile __bit F11BP_1 __attribute__((address(0x73B5)));


extern volatile __bit F11BP_2 __attribute__((address(0x73B6)));


extern volatile __bit F11BP_3 __attribute__((address(0x73B7)));


extern volatile __bit F12BP_0 __attribute__((address(0x73B8)));


extern volatile __bit F12BP_01 __attribute__((address(0x73B8)));


extern volatile __bit F12BP_1 __attribute__((address(0x73B9)));


extern volatile __bit F12BP_2 __attribute__((address(0x73BA)));


extern volatile __bit F12BP_3 __attribute__((address(0x73BB)));


extern volatile __bit F13BP_0 __attribute__((address(0x73BC)));


extern volatile __bit F13BP_1 __attribute__((address(0x73BD)));


extern volatile __bit F13BP_2 __attribute__((address(0x73BE)));


extern volatile __bit F13BP_3 __attribute__((address(0x73BF)));


extern volatile __bit F14BP_0 __attribute__((address(0x73C0)));


extern volatile __bit F14BP_01 __attribute__((address(0x73C0)));


extern volatile __bit F14BP_1 __attribute__((address(0x73C1)));


extern volatile __bit F14BP_2 __attribute__((address(0x73C2)));


extern volatile __bit F14BP_3 __attribute__((address(0x73C3)));


extern volatile __bit F15BP_0 __attribute__((address(0x73C4)));


extern volatile __bit F15BP_1 __attribute__((address(0x73C5)));


extern volatile __bit F15BP_2 __attribute__((address(0x73C6)));


extern volatile __bit F15BP_3 __attribute__((address(0x73C7)));


extern volatile __bit F1BP_0 __attribute__((address(0x738C)));


extern volatile __bit F1BP_1 __attribute__((address(0x738D)));


extern volatile __bit F1BP_2 __attribute__((address(0x738E)));


extern volatile __bit F1BP_3 __attribute__((address(0x738F)));


extern volatile __bit F2BP_0 __attribute__((address(0x7390)));


extern volatile __bit F2BP_01 __attribute__((address(0x7390)));


extern volatile __bit F2BP_1 __attribute__((address(0x7391)));


extern volatile __bit F2BP_2 __attribute__((address(0x7392)));


extern volatile __bit F2BP_3 __attribute__((address(0x7393)));


extern volatile __bit F3BP_0 __attribute__((address(0x7394)));


extern volatile __bit F3BP_1 __attribute__((address(0x7395)));


extern volatile __bit F3BP_2 __attribute__((address(0x7396)));


extern volatile __bit F3BP_3 __attribute__((address(0x7397)));


extern volatile __bit F4BP_0 __attribute__((address(0x7398)));


extern volatile __bit F4BP_01 __attribute__((address(0x7398)));


extern volatile __bit F4BP_1 __attribute__((address(0x7399)));


extern volatile __bit F4BP_2 __attribute__((address(0x739A)));


extern volatile __bit F4BP_3 __attribute__((address(0x739B)));


extern volatile __bit F5BP_0 __attribute__((address(0x739C)));


extern volatile __bit F5BP_1 __attribute__((address(0x739D)));


extern volatile __bit F5BP_2 __attribute__((address(0x739E)));


extern volatile __bit F5BP_3 __attribute__((address(0x739F)));


extern volatile __bit F6BP_0 __attribute__((address(0x73A0)));


extern volatile __bit F6BP_01 __attribute__((address(0x73A0)));


extern volatile __bit F6BP_1 __attribute__((address(0x73A1)));


extern volatile __bit F6BP_2 __attribute__((address(0x73A2)));


extern volatile __bit F6BP_3 __attribute__((address(0x73A3)));


extern volatile __bit F7BP_0 __attribute__((address(0x73A4)));


extern volatile __bit F7BP_1 __attribute__((address(0x73A5)));


extern volatile __bit F7BP_2 __attribute__((address(0x73A6)));


extern volatile __bit F7BP_3 __attribute__((address(0x73A7)));


extern volatile __bit F8BP_0 __attribute__((address(0x73A8)));


extern volatile __bit F8BP_01 __attribute__((address(0x73A8)));


extern volatile __bit F8BP_1 __attribute__((address(0x73A9)));


extern volatile __bit F8BP_2 __attribute__((address(0x73AA)));


extern volatile __bit F8BP_3 __attribute__((address(0x73AB)));


extern volatile __bit F9BP_0 __attribute__((address(0x73AC)));


extern volatile __bit F9BP_1 __attribute__((address(0x73AD)));


extern volatile __bit F9BP_2 __attribute__((address(0x73AE)));


extern volatile __bit F9BP_3 __attribute__((address(0x73AF)));


extern volatile __bit FERR1 __attribute__((address(0x7D5A)));


extern volatile __bit FERR2 __attribute__((address(0x7D32)));


extern volatile __bit FIFOEMPTY __attribute__((address(0x7B8F)));


extern volatile __bit FIFOWM __attribute__((address(0x7B95)));


extern volatile __bit FIFOWMIE __attribute__((address(0x7BB0)));


extern volatile __bit FIFOWMIF __attribute__((address(0x7BB8)));


extern volatile __bit FIFOWMIP __attribute__((address(0x7BC0)));


extern volatile __bit FIL0_0 __attribute__((address(0x73C8)));


extern volatile __bit FIL0_1 __attribute__((address(0x73C9)));


extern volatile __bit FIL10_0 __attribute__((address(0x73DC)));


extern volatile __bit FIL10_1 __attribute__((address(0x73DD)));


extern volatile __bit FIL11_0 __attribute__((address(0x73DE)));


extern volatile __bit FIL11_1 __attribute__((address(0x73DF)));


extern volatile __bit FIL12_0 __attribute__((address(0x73E0)));


extern volatile __bit FIL12_1 __attribute__((address(0x73E1)));


extern volatile __bit FIL13_0 __attribute__((address(0x73E2)));


extern volatile __bit FIL13_1 __attribute__((address(0x73E3)));


extern volatile __bit FIL14_0 __attribute__((address(0x73E4)));


extern volatile __bit FIL14_1 __attribute__((address(0x73E5)));


extern volatile __bit FIL15_0 __attribute__((address(0x73E6)));


extern volatile __bit FIL15_1 __attribute__((address(0x73E7)));


extern volatile __bit FIL1_0 __attribute__((address(0x73CA)));


extern volatile __bit FIL1_1 __attribute__((address(0x73CB)));


extern volatile __bit FIL2_0 __attribute__((address(0x73CC)));


extern volatile __bit FIL2_1 __attribute__((address(0x73CD)));


extern volatile __bit FIL3_0 __attribute__((address(0x73CE)));


extern volatile __bit FIL3_1 __attribute__((address(0x73CF)));


extern volatile __bit FIL4_0 __attribute__((address(0x73D0)));


extern volatile __bit FIL4_1 __attribute__((address(0x73D1)));


extern volatile __bit FIL5_0 __attribute__((address(0x73D2)));


extern volatile __bit FIL5_1 __attribute__((address(0x73D3)));


extern volatile __bit FIL6_0 __attribute__((address(0x73D4)));


extern volatile __bit FIL6_1 __attribute__((address(0x73D5)));


extern volatile __bit FIL7_0 __attribute__((address(0x73D6)));


extern volatile __bit FIL7_1 __attribute__((address(0x73D7)));


extern volatile __bit FIL8_0 __attribute__((address(0x73D8)));


extern volatile __bit FIL8_1 __attribute__((address(0x73D9)));


extern volatile __bit FIL9_0 __attribute__((address(0x73DA)));


extern volatile __bit FIL9_1 __attribute__((address(0x73DB)));


extern volatile __bit FLC0 __attribute__((address(0x7380)));


extern volatile __bit FLC1 __attribute__((address(0x7381)));


extern volatile __bit FLC2 __attribute__((address(0x7382)));


extern volatile __bit FLC3 __attribute__((address(0x7383)));


extern volatile __bit FLC4 __attribute__((address(0x7384)));


extern volatile __bit FREE __attribute__((address(0x7BFC)));


extern volatile __bit GCEN __attribute__((address(0x7E2F)));


extern volatile __bit GIE __attribute__((address(0x7F97)));


extern volatile __bit GIEH __attribute__((address(0x7F97)));


extern volatile __bit GIEL __attribute__((address(0x7F96)));


extern volatile __bit GIE_GIEH __attribute__((address(0x7F97)));


extern volatile __bit GO __attribute__((address(0x7E11)));


extern volatile __bit GODONE __attribute__((address(0x7E11)));


extern volatile __bit GO_DONE __attribute__((address(0x7E11)));


extern volatile __bit GO_NOT_DONE __attribute__((address(0x7E11)));


extern volatile __bit GO_nDONE __attribute__((address(0x7E11)));


extern volatile __bit HFIOFS __attribute__((address(0x7E9A)));


extern volatile __bit HLVDEN __attribute__((address(0x7D44)));


extern volatile __bit HLVDIE __attribute__((address(0x7D02)));


extern volatile __bit HLVDIF __attribute__((address(0x7D0A)));


extern volatile __bit HLVDIP __attribute__((address(0x7D12)));


extern volatile __bit HLVDL0 __attribute__((address(0x7D40)));


extern volatile __bit HLVDL1 __attribute__((address(0x7D41)));


extern volatile __bit HLVDL2 __attribute__((address(0x7D42)));


extern volatile __bit HLVDL3 __attribute__((address(0x7D43)));


extern volatile __bit I2C_DAT __attribute__((address(0x7E3D)));


extern volatile __bit I2C_READ __attribute__((address(0x7E3A)));


extern volatile __bit I2C_START __attribute__((address(0x7E3B)));


extern volatile __bit I2C_STOP __attribute__((address(0x7E3C)));


extern volatile __bit ICODE20 __attribute__((address(0x78F1)));


extern volatile __bit ICODE21 __attribute__((address(0x78F2)));


extern volatile __bit IDISSEN __attribute__((address(0x7AA9)));


extern volatile __bit IDLEN __attribute__((address(0x7E9F)));


extern volatile __bit INT0E __attribute__((address(0x7F94)));


extern volatile __bit INT0F __attribute__((address(0x7F91)));


extern volatile __bit INT0IE __attribute__((address(0x7F94)));


extern volatile __bit INT0IF __attribute__((address(0x7F91)));


extern volatile __bit INT1E __attribute__((address(0x7F83)));


extern volatile __bit INT1F __attribute__((address(0x7F80)));


extern volatile __bit INT1IE __attribute__((address(0x7F83)));


extern volatile __bit INT1IF __attribute__((address(0x7F80)));


extern volatile __bit INT1IP __attribute__((address(0x7F86)));


extern volatile __bit INT1P __attribute__((address(0x7F86)));


extern volatile __bit INT2E __attribute__((address(0x7F84)));


extern volatile __bit INT2F __attribute__((address(0x7F81)));


extern volatile __bit INT2IE __attribute__((address(0x7F84)));


extern volatile __bit INT2IF __attribute__((address(0x7F81)));


extern volatile __bit INT2IP __attribute__((address(0x7F87)));


extern volatile __bit INT2P __attribute__((address(0x7F87)));


extern volatile __bit INT3E __attribute__((address(0x7F85)));


extern volatile __bit INT3F __attribute__((address(0x7F82)));


extern volatile __bit INT3IE __attribute__((address(0x7F85)));


extern volatile __bit INT3IF __attribute__((address(0x7F82)));


extern volatile __bit INT3IP __attribute__((address(0x7F89)));


extern volatile __bit INT3P __attribute__((address(0x7F89)));


extern volatile __bit INTEDG0 __attribute__((address(0x7F8E)));


extern volatile __bit INTEDG1 __attribute__((address(0x7F8D)));


extern volatile __bit INTEDG2 __attribute__((address(0x7F8C)));


extern volatile __bit INTEDG3 __attribute__((address(0x7F8B)));


extern volatile __bit INTSRC __attribute__((address(0x7CDF)));


extern volatile __bit IOCB4 __attribute__((address(0x7AD4)));


extern volatile __bit IOCB5 __attribute__((address(0x7AD5)));


extern volatile __bit IOCB6 __attribute__((address(0x7AD6)));


extern volatile __bit IOCB7 __attribute__((address(0x7AD7)));


extern volatile __bit IPEN __attribute__((address(0x7E87)));


extern volatile __bit IRCF0 __attribute__((address(0x7E9C)));


extern volatile __bit IRCF1 __attribute__((address(0x7E9D)));


extern volatile __bit IRCF2 __attribute__((address(0x7E9E)));


extern volatile __bit IRNG0 __attribute__((address(0x7A98)));


extern volatile __bit IRNG1 __attribute__((address(0x7A99)));


extern volatile __bit IRVST __attribute__((address(0x7D45)));


extern volatile __bit IRXIE __attribute__((address(0x7BB7)));


extern volatile __bit IRXIF __attribute__((address(0x7BBF)));


extern volatile __bit IRXIP __attribute__((address(0x7BC7)));


extern volatile __bit ITRIM0 __attribute__((address(0x7A9A)));


extern volatile __bit ITRIM1 __attribute__((address(0x7A9B)));


extern volatile __bit ITRIM2 __attribute__((address(0x7A9C)));


extern volatile __bit ITRIM3 __attribute__((address(0x7A9D)));


extern volatile __bit ITRIM4 __attribute__((address(0x7A9E)));


extern volatile __bit ITRIM5 __attribute__((address(0x7A9F)));


extern volatile __bit JTOFF __attribute__((address(0x7B01)));


extern volatile __bit JTOFF_FILHIT1 __attribute__((address(0x7B01)));


extern volatile __bit LA0 __attribute__((address(0x7C48)));


extern volatile __bit LA1 __attribute__((address(0x7C49)));


extern volatile __bit LA2 __attribute__((address(0x7C4A)));


extern volatile __bit LA3 __attribute__((address(0x7C4B)));


extern volatile __bit LA5 __attribute__((address(0x7C4D)));


extern volatile __bit LA6 __attribute__((address(0x7C4E)));


extern volatile __bit LA7 __attribute__((address(0x7C4F)));


extern volatile __bit LATA0 __attribute__((address(0x7C48)));


extern volatile __bit LATA1 __attribute__((address(0x7C49)));


extern volatile __bit LATA2 __attribute__((address(0x7C4A)));


extern volatile __bit LATA3 __attribute__((address(0x7C4B)));


extern volatile __bit LATA5 __attribute__((address(0x7C4D)));


extern volatile __bit LATA6 __attribute__((address(0x7C4E)));


extern volatile __bit LATA7 __attribute__((address(0x7C4F)));


extern volatile __bit LATB0 __attribute__((address(0x7C50)));


extern volatile __bit LATB1 __attribute__((address(0x7C51)));


extern volatile __bit LATB2 __attribute__((address(0x7C52)));


extern volatile __bit LATB3 __attribute__((address(0x7C53)));


extern volatile __bit LATB4 __attribute__((address(0x7C54)));


extern volatile __bit LATB5 __attribute__((address(0x7C55)));


extern volatile __bit LATB6 __attribute__((address(0x7C56)));


extern volatile __bit LATB7 __attribute__((address(0x7C57)));


extern volatile __bit LATC0 __attribute__((address(0x7C58)));


extern volatile __bit LATC1 __attribute__((address(0x7C59)));


extern volatile __bit LATC2 __attribute__((address(0x7C5A)));


extern volatile __bit LATC3 __attribute__((address(0x7C5B)));


extern volatile __bit LATC4 __attribute__((address(0x7C5C)));


extern volatile __bit LATC5 __attribute__((address(0x7C5D)));


extern volatile __bit LATC6 __attribute__((address(0x7C5E)));


extern volatile __bit LATC7 __attribute__((address(0x7C5F)));


extern volatile __bit LB0 __attribute__((address(0x7C50)));


extern volatile __bit LB1 __attribute__((address(0x7C51)));


extern volatile __bit LB2 __attribute__((address(0x7C52)));


extern volatile __bit LB3 __attribute__((address(0x7C53)));


extern volatile __bit LB4 __attribute__((address(0x7C54)));


extern volatile __bit LB5 __attribute__((address(0x7C55)));


extern volatile __bit LB6 __attribute__((address(0x7C56)));


extern volatile __bit LB7 __attribute__((address(0x7C57)));


extern volatile __bit LC0 __attribute__((address(0x7C58)));


extern volatile __bit LC1 __attribute__((address(0x7C59)));


extern volatile __bit LC2 __attribute__((address(0x7C5A)));


extern volatile __bit LC3 __attribute__((address(0x7C5B)));


extern volatile __bit LC4 __attribute__((address(0x7C5C)));


extern volatile __bit LC5 __attribute__((address(0x7C5D)));


extern volatile __bit LC6 __attribute__((address(0x7C5E)));


extern volatile __bit LC7 __attribute__((address(0x7C5F)));


extern volatile __bit LVDIE __attribute__((address(0x7D02)));


extern volatile __bit LVDIF __attribute__((address(0x7D0A)));


extern volatile __bit LVDIN __attribute__((address(0x7C05)));


extern volatile __bit LVDIP __attribute__((address(0x7D12)));


extern volatile __bit LVDL0 __attribute__((address(0x7E90)));


extern volatile __bit LVDL1 __attribute__((address(0x7E91)));


extern volatile __bit LVDL2 __attribute__((address(0x7E92)));


extern volatile __bit LVDL3 __attribute__((address(0x7E93)));


extern volatile __bit MDSEL0 __attribute__((address(0x7B96)));


extern volatile __bit MDSEL1 __attribute__((address(0x7B97)));


extern volatile __bit MFIOFS __attribute__((address(0x7E91)));


extern volatile __bit MFIOSEL __attribute__((address(0x7E90)));


extern volatile __bit MSK0 __attribute__((address(0x7E40)));


extern volatile __bit MSK1 __attribute__((address(0x7E41)));


extern volatile __bit MSK2 __attribute__((address(0x7E42)));


extern volatile __bit MSK3 __attribute__((address(0x7E43)));


extern volatile __bit MSK4 __attribute__((address(0x7E44)));


extern volatile __bit MSK5 __attribute__((address(0x7E45)));


extern volatile __bit MSK6 __attribute__((address(0x7E46)));


extern volatile __bit MSK7 __attribute__((address(0x7E47)));


extern volatile __bit NEGATIVE __attribute__((address(0x7EC4)));


extern volatile __bit NOT_A __attribute__((address(0x7E3D)));


extern volatile __bit NOT_ADDRESS __attribute__((address(0x7E3D)));


extern volatile __bit NOT_BOR __attribute__((address(0x7E80)));


extern volatile __bit NOT_CM __attribute__((address(0x7E85)));


extern volatile __bit NOT_DONE __attribute__((address(0x7E11)));


extern volatile __bit NOT_FIFOEMPTY __attribute__((address(0x7B8F)));


extern volatile __bit NOT_PD __attribute__((address(0x7E82)));


extern volatile __bit NOT_POR __attribute__((address(0x7E81)));


extern volatile __bit NOT_RBPU __attribute__((address(0x7F8F)));


extern volatile __bit NOT_RC8 __attribute__((address(0x7D5E)));


extern volatile __bit NOT_RI __attribute__((address(0x7E84)));


extern volatile __bit NOT_T1DONE __attribute__((address(0x7D53)));


extern volatile __bit NOT_T1SYNC __attribute__((address(0x7E6A)));


extern volatile __bit NOT_T3DONE __attribute__((address(0x7D83)));


extern volatile __bit NOT_T3SYNC __attribute__((address(0x7D8A)));


extern volatile __bit NOT_TO __attribute__((address(0x7E83)));


extern volatile __bit NOT_TX8 __attribute__((address(0x7D66)));


extern volatile __bit NOT_W __attribute__((address(0x7E3A)));


extern volatile __bit NOT_WRITE __attribute__((address(0x7E3A)));


extern volatile __bit OERR1 __attribute__((address(0x7D59)));


extern volatile __bit OERR2 __attribute__((address(0x7D31)));


extern volatile __bit OSCFIE __attribute__((address(0x7D07)));


extern volatile __bit OSCFIF __attribute__((address(0x7D0F)));


extern volatile __bit OSCFIP __attribute__((address(0x7D17)));


extern volatile __bit OSTS __attribute__((address(0x7E9B)));


extern volatile __bit OV __attribute__((address(0x7EC3)));


extern volatile __bit OVERFLOW __attribute__((address(0x7EC3)));


extern volatile __bit P1DC0 __attribute__((address(0x7DF0)));


extern volatile __bit P1DC1 __attribute__((address(0x7DF1)));


extern volatile __bit P1DC2 __attribute__((address(0x7DF2)));


extern volatile __bit P1DC3 __attribute__((address(0x7DF3)));


extern volatile __bit P1DC4 __attribute__((address(0x7DF4)));


extern volatile __bit P1DC5 __attribute__((address(0x7DF5)));


extern volatile __bit P1DC6 __attribute__((address(0x7DF6)));


extern volatile __bit P1M0 __attribute__((address(0x7DDE)));


extern volatile __bit P1M1 __attribute__((address(0x7DDF)));


extern volatile __bit P1RSEN __attribute__((address(0x7DF7)));


extern volatile __bit PA1 __attribute__((address(0x7C12)));


extern volatile __bit PA2 __attribute__((address(0x7C11)));


extern volatile __bit PC3E __attribute__((address(0x7C23)));


extern volatile __bit PCFG0 __attribute__((address(0x7AE8)));


extern volatile __bit PCFG1 __attribute__((address(0x7AE9)));


extern volatile __bit PCFG10 __attribute__((address(0x7AE2)));


extern volatile __bit PCFG2 __attribute__((address(0x7AEA)));


extern volatile __bit PCFG3 __attribute__((address(0x7AEB)));


extern volatile __bit PCFG4 __attribute__((address(0x7AEC)));


extern volatile __bit PCFG8 __attribute__((address(0x7AE0)));


extern volatile __bit PCFG9 __attribute__((address(0x7AE1)));


extern volatile __bit PD __attribute__((address(0x7E82)));


extern volatile __bit PEIE __attribute__((address(0x7F96)));


extern volatile __bit PEIE_GIEL __attribute__((address(0x7F96)));


extern volatile __bit PEN __attribute__((address(0x7E2A)));


extern volatile __bit PLLEN __attribute__((address(0x7CDE)));


extern volatile __bit PMPTTL __attribute__((address(0x7AB0)));


extern volatile __bit POR __attribute__((address(0x7E81)));


extern volatile __bit PRSEG0 __attribute__((address(0x7220)));


extern volatile __bit PRSEG1 __attribute__((address(0x7221)));


extern volatile __bit PRSEG2 __attribute__((address(0x7222)));


extern volatile __bit PSA __attribute__((address(0x7EAB)));


extern volatile __bit PSPMD __attribute__((address(0x7AC7)));


extern volatile __bit PSS1AC0 __attribute__((address(0x7DFA)));


extern volatile __bit PSS1AC1 __attribute__((address(0x7DFB)));


extern volatile __bit PSS1BD0 __attribute__((address(0x7DF8)));


extern volatile __bit PSS1BD1 __attribute__((address(0x7DF9)));


extern volatile __bit RA0 __attribute__((address(0x7C00)));


extern volatile __bit RA1 __attribute__((address(0x7C01)));


extern volatile __bit RA2 __attribute__((address(0x7C02)));


extern volatile __bit RA3 __attribute__((address(0x7C03)));


extern volatile __bit RA5 __attribute__((address(0x7C05)));


extern volatile __bit RA6 __attribute__((address(0x7C06)));


extern volatile __bit RA7 __attribute__((address(0x7C07)));


extern volatile __bit RB0DBEN __attribute__((address(0x7B02)));


extern volatile __bit RB0DBEN_FILHIT2 __attribute__((address(0x7B02)));


extern volatile __bit RB2 __attribute__((address(0x7C0A)));


extern volatile __bit RB3 __attribute__((address(0x7C0B)));


extern volatile __bit RB4 __attribute__((address(0x7C0C)));


extern volatile __bit RB5 __attribute__((address(0x7C0D)));


extern volatile __bit RB6 __attribute__((address(0x7C0E)));


extern volatile __bit RB7 __attribute__((address(0x7C0F)));


extern volatile __bit RBIE __attribute__((address(0x7F93)));


extern volatile __bit RBIF __attribute__((address(0x7F90)));


extern volatile __bit RBIP __attribute__((address(0x7F88)));


extern volatile __bit RBPU __attribute__((address(0x7F8F)));


extern volatile __bit RC0 __attribute__((address(0x7C10)));


extern volatile __bit RC1 __attribute__((address(0x7C11)));


extern volatile __bit RC1IE __attribute__((address(0x7CED)));


extern volatile __bit RC1IF __attribute__((address(0x7CF5)));


extern volatile __bit RC1IP __attribute__((address(0x7CFD)));


extern volatile __bit RC2 __attribute__((address(0x7C12)));


extern volatile __bit RC2IE __attribute__((address(0x7D1D)));


extern volatile __bit RC2IF __attribute__((address(0x7D25)));


extern volatile __bit RC2IP __attribute__((address(0x7D2D)));


extern volatile __bit RC3 __attribute__((address(0x7C13)));


extern volatile __bit RC4 __attribute__((address(0x7C14)));


extern volatile __bit RC5 __attribute__((address(0x7C15)));


extern volatile __bit RC6 __attribute__((address(0x7C16)));


extern volatile __bit RC7 __attribute__((address(0x7C17)));


extern volatile __bit RC8_9 __attribute__((address(0x7D5E)));


extern volatile __bit RC8_92 __attribute__((address(0x7D36)));


extern volatile __bit RC9 __attribute__((address(0x7D5E)));


extern volatile __bit RC92 __attribute__((address(0x7D36)));


extern volatile __bit RCD8 __attribute__((address(0x7D58)));


extern volatile __bit RCD82 __attribute__((address(0x7D30)));


extern volatile __bit RCEN __attribute__((address(0x7E2B)));


extern volatile __bit RCIDL1 __attribute__((address(0x7D3E)));


extern volatile __bit RCIDL2 __attribute__((address(0x7DCE)));


extern volatile __bit RCIE __attribute__((address(0x7CED)));


extern volatile __bit RCIF __attribute__((address(0x7CF5)));


extern volatile __bit RCIP __attribute__((address(0x7CFD)));


extern volatile __bit RCMT1 __attribute__((address(0x7D3E)));


extern volatile __bit RCMT2 __attribute__((address(0x7DCE)));


extern volatile __bit RD __attribute__((address(0x7BF8)));


extern volatile __bit RD163 __attribute__((address(0x7D8F)));


extern volatile __bit RE3 __attribute__((address(0x7C23)));


extern volatile __bit READ_WRITE __attribute__((address(0x7E3A)));


extern volatile __bit REC0 __attribute__((address(0x7208)));


extern volatile __bit REC1 __attribute__((address(0x7209)));


extern volatile __bit REC2 __attribute__((address(0x720A)));


extern volatile __bit REC3 __attribute__((address(0x720B)));


extern volatile __bit REC4 __attribute__((address(0x720C)));


extern volatile __bit REC5 __attribute__((address(0x720D)));


extern volatile __bit REC6 __attribute__((address(0x720E)));


extern volatile __bit REC7 __attribute__((address(0x720F)));


extern volatile __bit REGSLP __attribute__((address(0x7E8F)));


extern volatile __bit RI __attribute__((address(0x7E84)));


extern volatile __bit RJPU __attribute__((address(0x7C07)));


extern volatile __bit RODIV0 __attribute__((address(0x7CD0)));


extern volatile __bit RODIV1 __attribute__((address(0x7CD1)));


extern volatile __bit RODIV2 __attribute__((address(0x7CD2)));


extern volatile __bit RODIV3 __attribute__((address(0x7CD3)));


extern volatile __bit ROON __attribute__((address(0x7CD7)));


extern volatile __bit ROSEL __attribute__((address(0x7CD4)));


extern volatile __bit ROSSLP __attribute__((address(0x7CD5)));


extern volatile __bit RSEN __attribute__((address(0x7E29)));


extern volatile __bit RW __attribute__((address(0x7E3A)));


extern volatile __bit RX91 __attribute__((address(0x7D5E)));


extern volatile __bit RX92 __attribute__((address(0x7D36)));


extern volatile __bit RX9D1 __attribute__((address(0x7D58)));


extern volatile __bit RX9D2 __attribute__((address(0x7D30)));


extern volatile __bit RXB0D00 __attribute__((address(0x7B30)));


extern volatile __bit RXB0D01 __attribute__((address(0x7B31)));


extern volatile __bit RXB0D02 __attribute__((address(0x7B32)));


extern volatile __bit RXB0D03 __attribute__((address(0x7B33)));


extern volatile __bit RXB0D04 __attribute__((address(0x7B34)));


extern volatile __bit RXB0D05 __attribute__((address(0x7B35)));


extern volatile __bit RXB0D06 __attribute__((address(0x7B36)));


extern volatile __bit RXB0D07 __attribute__((address(0x7B37)));


extern volatile __bit RXB0D10 __attribute__((address(0x7B38)));


extern volatile __bit RXB0D11 __attribute__((address(0x7B39)));


extern volatile __bit RXB0D12 __attribute__((address(0x7B3A)));


extern volatile __bit RXB0D13 __attribute__((address(0x7B3B)));


extern volatile __bit RXB0D14 __attribute__((address(0x7B3C)));


extern volatile __bit RXB0D15 __attribute__((address(0x7B3D)));


extern volatile __bit RXB0D16 __attribute__((address(0x7B3E)));


extern volatile __bit RXB0D17 __attribute__((address(0x7B3F)));


extern volatile __bit RXB0D20 __attribute__((address(0x7B40)));


extern volatile __bit RXB0D21 __attribute__((address(0x7B41)));


extern volatile __bit RXB0D22 __attribute__((address(0x7B42)));


extern volatile __bit RXB0D23 __attribute__((address(0x7B43)));


extern volatile __bit RXB0D24 __attribute__((address(0x7B44)));


extern volatile __bit RXB0D25 __attribute__((address(0x7B45)));


extern volatile __bit RXB0D26 __attribute__((address(0x7B46)));


extern volatile __bit RXB0D27 __attribute__((address(0x7B47)));


extern volatile __bit RXB0D30 __attribute__((address(0x7B48)));


extern volatile __bit RXB0D31 __attribute__((address(0x7B49)));


extern volatile __bit RXB0D32 __attribute__((address(0x7B4A)));


extern volatile __bit RXB0D33 __attribute__((address(0x7B4B)));


extern volatile __bit RXB0D34 __attribute__((address(0x7B4C)));


extern volatile __bit RXB0D35 __attribute__((address(0x7B4D)));


extern volatile __bit RXB0D36 __attribute__((address(0x7B4E)));


extern volatile __bit RXB0D37 __attribute__((address(0x7B4F)));


extern volatile __bit RXB0D40 __attribute__((address(0x7B50)));


extern volatile __bit RXB0D41 __attribute__((address(0x7B51)));


extern volatile __bit RXB0D42 __attribute__((address(0x7B52)));


extern volatile __bit RXB0D43 __attribute__((address(0x7B53)));


extern volatile __bit RXB0D44 __attribute__((address(0x7B54)));


extern volatile __bit RXB0D45 __attribute__((address(0x7B55)));


extern volatile __bit RXB0D46 __attribute__((address(0x7B56)));


extern volatile __bit RXB0D47 __attribute__((address(0x7B57)));


extern volatile __bit RXB0D50 __attribute__((address(0x7B58)));


extern volatile __bit RXB0D51 __attribute__((address(0x7B59)));


extern volatile __bit RXB0D52 __attribute__((address(0x7B5A)));


extern volatile __bit RXB0D53 __attribute__((address(0x7B5B)));


extern volatile __bit RXB0D54 __attribute__((address(0x7B5C)));


extern volatile __bit RXB0D55 __attribute__((address(0x7B5D)));


extern volatile __bit RXB0D56 __attribute__((address(0x7B5E)));


extern volatile __bit RXB0D57 __attribute__((address(0x7B5F)));


extern volatile __bit RXB0D60 __attribute__((address(0x7B60)));


extern volatile __bit RXB0D61 __attribute__((address(0x7B61)));


extern volatile __bit RXB0D62 __attribute__((address(0x7B62)));


extern volatile __bit RXB0D63 __attribute__((address(0x7B63)));


extern volatile __bit RXB0D64 __attribute__((address(0x7B64)));


extern volatile __bit RXB0D65 __attribute__((address(0x7B65)));


extern volatile __bit RXB0D66 __attribute__((address(0x7B66)));


extern volatile __bit RXB0D67 __attribute__((address(0x7B67)));


extern volatile __bit RXB0D70 __attribute__((address(0x7B68)));


extern volatile __bit RXB0D71 __attribute__((address(0x7B69)));


extern volatile __bit RXB0D72 __attribute__((address(0x7B6A)));


extern volatile __bit RXB0D73 __attribute__((address(0x7B6B)));


extern volatile __bit RXB0D74 __attribute__((address(0x7B6C)));


extern volatile __bit RXB0D75 __attribute__((address(0x7B6D)));


extern volatile __bit RXB0D76 __attribute__((address(0x7B6E)));


extern volatile __bit RXB0D77 __attribute__((address(0x7B6F)));


extern volatile __bit RXB0DLC0 __attribute__((address(0x7B28)));


extern volatile __bit RXB0DLC1 __attribute__((address(0x7B29)));


extern volatile __bit RXB0DLC2 __attribute__((address(0x7B2A)));


extern volatile __bit RXB0DLC3 __attribute__((address(0x7B2B)));


extern volatile __bit RXB0EID0 __attribute__((address(0x7B20)));


extern volatile __bit RXB0EID1 __attribute__((address(0x7B21)));


extern volatile __bit RXB0EID10 __attribute__((address(0x7B1A)));


extern volatile __bit RXB0EID11 __attribute__((address(0x7B1B)));


extern volatile __bit RXB0EID12 __attribute__((address(0x7B1C)));


extern volatile __bit RXB0EID13 __attribute__((address(0x7B1D)));


extern volatile __bit RXB0EID14 __attribute__((address(0x7B1E)));


extern volatile __bit RXB0EID15 __attribute__((address(0x7B1F)));


extern volatile __bit RXB0EID16 __attribute__((address(0x7B10)));


extern volatile __bit RXB0EID17 __attribute__((address(0x7B11)));


extern volatile __bit RXB0EID2 __attribute__((address(0x7B22)));


extern volatile __bit RXB0EID3 __attribute__((address(0x7B23)));


extern volatile __bit RXB0EID4 __attribute__((address(0x7B24)));


extern volatile __bit RXB0EID5 __attribute__((address(0x7B25)));


extern volatile __bit RXB0EID6 __attribute__((address(0x7B26)));


extern volatile __bit RXB0EID7 __attribute__((address(0x7B27)));


extern volatile __bit RXB0EID8 __attribute__((address(0x7B18)));


extern volatile __bit RXB0EID9 __attribute__((address(0x7B19)));


extern volatile __bit RXB0EXID __attribute__((address(0x7B13)));


extern volatile __bit RXB0FILHIT0 __attribute__((address(0x7B00)));


extern volatile __bit RXB0FILHIT1 __attribute__((address(0x7B01)));


extern volatile __bit RXB0FILHIT2 __attribute__((address(0x7B02)));


extern volatile __bit RXB0FILHIT3 __attribute__((address(0x7B03)));


extern volatile __bit RXB0FILHIT4 __attribute__((address(0x7B04)));


extern volatile __bit RXB0FUL __attribute__((address(0x7B07)));


extern volatile __bit RXB0IF __attribute__((address(0x7BB8)));


extern volatile __bit RXB0IP __attribute__((address(0x7BC0)));


extern volatile __bit RXB0M0 __attribute__((address(0x7B05)));


extern volatile __bit RXB0M1 __attribute__((address(0x7B06)));


extern volatile __bit RXB0OVFL __attribute__((address(0x7B8F)));


extern volatile __bit RXB0RB0 __attribute__((address(0x7B2C)));


extern volatile __bit RXB0RB1 __attribute__((address(0x7B2D)));


extern volatile __bit RXB0RTR __attribute__((address(0x7B2E)));


extern volatile __bit RXB0RTRR0 __attribute__((address(0x7B03)));


extern volatile __bit RXB0RTRRO __attribute__((address(0x7B05)));


extern volatile __bit RXB0SID0 __attribute__((address(0x7B15)));


extern volatile __bit RXB0SID1 __attribute__((address(0x7B16)));


extern volatile __bit RXB0SID10 __attribute__((address(0x7B0F)));


extern volatile __bit RXB0SID2 __attribute__((address(0x7B17)));


extern volatile __bit RXB0SID3 __attribute__((address(0x7B08)));


extern volatile __bit RXB0SID4 __attribute__((address(0x7B09)));


extern volatile __bit RXB0SID5 __attribute__((address(0x7B0A)));


extern volatile __bit RXB0SID6 __attribute__((address(0x7B0B)));


extern volatile __bit RXB0SID7 __attribute__((address(0x7B0C)));


extern volatile __bit RXB0SID8 __attribute__((address(0x7B0D)));


extern volatile __bit RXB0SID9 __attribute__((address(0x7B0E)));


extern volatile __bit RXB0SRR __attribute__((address(0x7B14)));


extern volatile __bit RXB1D00 __attribute__((address(0x79B0)));


extern volatile __bit RXB1D01 __attribute__((address(0x79B1)));


extern volatile __bit RXB1D02 __attribute__((address(0x79B2)));


extern volatile __bit RXB1D03 __attribute__((address(0x79B3)));


extern volatile __bit RXB1D04 __attribute__((address(0x79B4)));


extern volatile __bit RXB1D05 __attribute__((address(0x79B5)));


extern volatile __bit RXB1D06 __attribute__((address(0x79B6)));


extern volatile __bit RXB1D07 __attribute__((address(0x79B7)));


extern volatile __bit RXB1D10 __attribute__((address(0x79B8)));


extern volatile __bit RXB1D11 __attribute__((address(0x79B9)));


extern volatile __bit RXB1D12 __attribute__((address(0x79BA)));


extern volatile __bit RXB1D13 __attribute__((address(0x79BB)));


extern volatile __bit RXB1D14 __attribute__((address(0x79BC)));


extern volatile __bit RXB1D15 __attribute__((address(0x79BD)));


extern volatile __bit RXB1D16 __attribute__((address(0x79BE)));


extern volatile __bit RXB1D17 __attribute__((address(0x79BF)));


extern volatile __bit RXB1D20 __attribute__((address(0x79C0)));


extern volatile __bit RXB1D21 __attribute__((address(0x79C1)));


extern volatile __bit RXB1D22 __attribute__((address(0x79C2)));


extern volatile __bit RXB1D23 __attribute__((address(0x79C3)));


extern volatile __bit RXB1D24 __attribute__((address(0x79C4)));


extern volatile __bit RXB1D25 __attribute__((address(0x79C5)));


extern volatile __bit RXB1D26 __attribute__((address(0x79C6)));


extern volatile __bit RXB1D27 __attribute__((address(0x79C7)));


extern volatile __bit RXB1D30 __attribute__((address(0x79C8)));


extern volatile __bit RXB1D31 __attribute__((address(0x79C9)));


extern volatile __bit RXB1D32 __attribute__((address(0x79CA)));


extern volatile __bit RXB1D33 __attribute__((address(0x79CB)));


extern volatile __bit RXB1D34 __attribute__((address(0x79CC)));


extern volatile __bit RXB1D35 __attribute__((address(0x79CD)));


extern volatile __bit RXB1D36 __attribute__((address(0x79CE)));


extern volatile __bit RXB1D37 __attribute__((address(0x79CF)));


extern volatile __bit RXB1D40 __attribute__((address(0x79D0)));


extern volatile __bit RXB1D41 __attribute__((address(0x79D1)));


extern volatile __bit RXB1D42 __attribute__((address(0x79D2)));


extern volatile __bit RXB1D43 __attribute__((address(0x79D3)));


extern volatile __bit RXB1D44 __attribute__((address(0x79D4)));


extern volatile __bit RXB1D45 __attribute__((address(0x79D5)));


extern volatile __bit RXB1D46 __attribute__((address(0x79D6)));


extern volatile __bit RXB1D47 __attribute__((address(0x79D7)));


extern volatile __bit RXB1D50 __attribute__((address(0x79D8)));


extern volatile __bit RXB1D51 __attribute__((address(0x79D9)));


extern volatile __bit RXB1D52 __attribute__((address(0x79DA)));


extern volatile __bit RXB1D53 __attribute__((address(0x79DB)));


extern volatile __bit RXB1D54 __attribute__((address(0x79DC)));


extern volatile __bit RXB1D55 __attribute__((address(0x79DD)));


extern volatile __bit RXB1D56 __attribute__((address(0x79DE)));


extern volatile __bit RXB1D57 __attribute__((address(0x79DF)));


extern volatile __bit RXB1D60 __attribute__((address(0x79E0)));


extern volatile __bit RXB1D61 __attribute__((address(0x79E1)));


extern volatile __bit RXB1D62 __attribute__((address(0x79E2)));


extern volatile __bit RXB1D63 __attribute__((address(0x79E3)));


extern volatile __bit RXB1D64 __attribute__((address(0x79E4)));


extern volatile __bit RXB1D65 __attribute__((address(0x79E5)));


extern volatile __bit RXB1D66 __attribute__((address(0x79E6)));


extern volatile __bit RXB1D67 __attribute__((address(0x79E7)));


extern volatile __bit RXB1D70 __attribute__((address(0x79E8)));


extern volatile __bit RXB1D71 __attribute__((address(0x79E9)));


extern volatile __bit RXB1D72 __attribute__((address(0x79EA)));


extern volatile __bit RXB1D73 __attribute__((address(0x79EB)));


extern volatile __bit RXB1D74 __attribute__((address(0x79EC)));


extern volatile __bit RXB1D75 __attribute__((address(0x79ED)));


extern volatile __bit RXB1D76 __attribute__((address(0x79EE)));


extern volatile __bit RXB1D77 __attribute__((address(0x79EF)));


extern volatile __bit RXB1DLC0 __attribute__((address(0x79A8)));


extern volatile __bit RXB1DLC1 __attribute__((address(0x79A9)));


extern volatile __bit RXB1DLC2 __attribute__((address(0x79AA)));


extern volatile __bit RXB1DLC3 __attribute__((address(0x79AB)));


extern volatile __bit RXB1EID0 __attribute__((address(0x79A0)));


extern volatile __bit RXB1EID1 __attribute__((address(0x79A1)));


extern volatile __bit RXB1EID10 __attribute__((address(0x799A)));


extern volatile __bit RXB1EID11 __attribute__((address(0x799B)));


extern volatile __bit RXB1EID12 __attribute__((address(0x799C)));


extern volatile __bit RXB1EID13 __attribute__((address(0x799D)));


extern volatile __bit RXB1EID14 __attribute__((address(0x799E)));


extern volatile __bit RXB1EID15 __attribute__((address(0x799F)));


extern volatile __bit RXB1EID16 __attribute__((address(0x7990)));


extern volatile __bit RXB1EID17 __attribute__((address(0x7991)));


extern volatile __bit RXB1EID2 __attribute__((address(0x79A2)));


extern volatile __bit RXB1EID3 __attribute__((address(0x79A3)));


extern volatile __bit RXB1EID4 __attribute__((address(0x79A4)));


extern volatile __bit RXB1EID5 __attribute__((address(0x79A5)));


extern volatile __bit RXB1EID6 __attribute__((address(0x79A6)));


extern volatile __bit RXB1EID7 __attribute__((address(0x79A7)));


extern volatile __bit RXB1EID8 __attribute__((address(0x7998)));


extern volatile __bit RXB1EID9 __attribute__((address(0x7999)));


extern volatile __bit RXB1EXID __attribute__((address(0x7993)));


extern volatile __bit RXB1FILHIT0 __attribute__((address(0x7980)));


extern volatile __bit RXB1FILHIT1 __attribute__((address(0x7981)));


extern volatile __bit RXB1FILHIT2 __attribute__((address(0x7982)));


extern volatile __bit RXB1FILHIT3 __attribute__((address(0x7983)));


extern volatile __bit RXB1FILHIT4 __attribute__((address(0x7984)));


extern volatile __bit RXB1FUL __attribute__((address(0x7987)));


extern volatile __bit RXB1IF __attribute__((address(0x7BB9)));


extern volatile __bit RXB1IP __attribute__((address(0x7BC1)));


extern volatile __bit RXB1M0 __attribute__((address(0x7985)));


extern volatile __bit RXB1M1 __attribute__((address(0x7986)));


extern volatile __bit RXB1OVFL __attribute__((address(0x7B8E)));


extern volatile __bit RXB1RB0 __attribute__((address(0x79AC)));


extern volatile __bit RXB1RB1 __attribute__((address(0x79AD)));


extern volatile __bit RXB1RTR __attribute__((address(0x79AE)));


extern volatile __bit RXB1RTRR0 __attribute__((address(0x7983)));


extern volatile __bit RXB1RTRRO __attribute__((address(0x7985)));


extern volatile __bit RXB1SID0 __attribute__((address(0x7995)));


extern volatile __bit RXB1SID1 __attribute__((address(0x7996)));


extern volatile __bit RXB1SID10 __attribute__((address(0x798F)));


extern volatile __bit RXB1SID2 __attribute__((address(0x7997)));


extern volatile __bit RXB1SID3 __attribute__((address(0x7988)));


extern volatile __bit RXB1SID4 __attribute__((address(0x7989)));


extern volatile __bit RXB1SID5 __attribute__((address(0x798A)));


extern volatile __bit RXB1SID6 __attribute__((address(0x798B)));


extern volatile __bit RXB1SID7 __attribute__((address(0x798C)));


extern volatile __bit RXB1SID8 __attribute__((address(0x798D)));


extern volatile __bit RXB1SID9 __attribute__((address(0x798E)));


extern volatile __bit RXB1SRR __attribute__((address(0x7994)));


extern volatile __bit RXBNIE __attribute__((address(0x7D19)));


extern volatile __bit RXBNIF __attribute__((address(0x7D21)));


extern volatile __bit RXBNIP __attribute__((address(0x7D29)));


extern volatile __bit RXBNOVFL __attribute__((address(0x7B8E)));


extern volatile __bit RXBP __attribute__((address(0x7B8B)));


extern volatile __bit RXBnIE __attribute__((address(0x7BB1)));


extern volatile __bit RXBnIF __attribute__((address(0x7BB9)));


extern volatile __bit RXBnIP __attribute__((address(0x7BC1)));


extern volatile __bit RXDTP1 __attribute__((address(0x7D3D)));


extern volatile __bit RXDTP2 __attribute__((address(0x7DCD)));


extern volatile __bit RXF0EID0 __attribute__((address(0x7718)));


extern volatile __bit RXF0EID1 __attribute__((address(0x7719)));


extern volatile __bit RXF0EID10 __attribute__((address(0x7712)));


extern volatile __bit RXF0EID11 __attribute__((address(0x7713)));


extern volatile __bit RXF0EID12 __attribute__((address(0x7714)));


extern volatile __bit RXF0EID13 __attribute__((address(0x7715)));


extern volatile __bit RXF0EID14 __attribute__((address(0x7716)));


extern volatile __bit RXF0EID15 __attribute__((address(0x7717)));


extern volatile __bit RXF0EID16 __attribute__((address(0x7708)));


extern volatile __bit RXF0EID17 __attribute__((address(0x7709)));


extern volatile __bit RXF0EID2 __attribute__((address(0x771A)));


extern volatile __bit RXF0EID3 __attribute__((address(0x771B)));


extern volatile __bit RXF0EID4 __attribute__((address(0x771C)));


extern volatile __bit RXF0EID5 __attribute__((address(0x771D)));


extern volatile __bit RXF0EID6 __attribute__((address(0x771E)));


extern volatile __bit RXF0EID7 __attribute__((address(0x771F)));


extern volatile __bit RXF0EID8 __attribute__((address(0x7710)));


extern volatile __bit RXF0EID9 __attribute__((address(0x7711)));


extern volatile __bit RXF0EN __attribute__((address(0x7230)));


extern volatile __bit RXF0EXIDEN __attribute__((address(0x770B)));


extern volatile __bit RXF0SID0 __attribute__((address(0x770D)));


extern volatile __bit RXF0SID1 __attribute__((address(0x770E)));


extern volatile __bit RXF0SID10 __attribute__((address(0x7707)));


extern volatile __bit RXF0SID2 __attribute__((address(0x770F)));


extern volatile __bit RXF0SID3 __attribute__((address(0x7700)));


extern volatile __bit RXF0SID4 __attribute__((address(0x7701)));


extern volatile __bit RXF0SID5 __attribute__((address(0x7702)));


extern volatile __bit RXF0SID6 __attribute__((address(0x7703)));


extern volatile __bit RXF0SID7 __attribute__((address(0x7704)));


extern volatile __bit RXF0SID8 __attribute__((address(0x7705)));


extern volatile __bit RXF0SID9 __attribute__((address(0x7706)));


extern volatile __bit RXF10EID0 __attribute__((address(0x72D8)));


extern volatile __bit RXF10EID1 __attribute__((address(0x72D9)));


extern volatile __bit RXF10EID10 __attribute__((address(0x72D2)));


extern volatile __bit RXF10EID11 __attribute__((address(0x72D3)));


extern volatile __bit RXF10EID12 __attribute__((address(0x72D4)));


extern volatile __bit RXF10EID13 __attribute__((address(0x72D5)));


extern volatile __bit RXF10EID14 __attribute__((address(0x72D6)));


extern volatile __bit RXF10EID15 __attribute__((address(0x72D7)));


extern volatile __bit RXF10EID16 __attribute__((address(0x72C8)));


extern volatile __bit RXF10EID17 __attribute__((address(0x72C9)));


extern volatile __bit RXF10EID2 __attribute__((address(0x72DA)));


extern volatile __bit RXF10EID3 __attribute__((address(0x72DB)));


extern volatile __bit RXF10EID4 __attribute__((address(0x72DC)));


extern volatile __bit RXF10EID5 __attribute__((address(0x72DD)));


extern volatile __bit RXF10EID6 __attribute__((address(0x72DE)));


extern volatile __bit RXF10EID7 __attribute__((address(0x72DF)));


extern volatile __bit RXF10EID8 __attribute__((address(0x72D0)));


extern volatile __bit RXF10EID9 __attribute__((address(0x72D1)));


extern volatile __bit RXF10EN __attribute__((address(0x723A)));


extern volatile __bit RXF10EXIDEN __attribute__((address(0x72CB)));


extern volatile __bit RXF10SID0 __attribute__((address(0x72CD)));


extern volatile __bit RXF10SID1 __attribute__((address(0x72CE)));


extern volatile __bit RXF10SID10 __attribute__((address(0x72C7)));


extern volatile __bit RXF10SID2 __attribute__((address(0x72CF)));


extern volatile __bit RXF10SID3 __attribute__((address(0x72C0)));


extern volatile __bit RXF10SID4 __attribute__((address(0x72C1)));


extern volatile __bit RXF10SID5 __attribute__((address(0x72C2)));


extern volatile __bit RXF10SID6 __attribute__((address(0x72C3)));


extern volatile __bit RXF10SID7 __attribute__((address(0x72C4)));


extern volatile __bit RXF10SID8 __attribute__((address(0x72C5)));


extern volatile __bit RXF10SID9 __attribute__((address(0x72C6)));


extern volatile __bit RXF11EID0 __attribute__((address(0x72F8)));


extern volatile __bit RXF11EID1 __attribute__((address(0x72F9)));


extern volatile __bit RXF11EID10 __attribute__((address(0x72F2)));


extern volatile __bit RXF11EID11 __attribute__((address(0x72F3)));


extern volatile __bit RXF11EID12 __attribute__((address(0x72F4)));


extern volatile __bit RXF11EID13 __attribute__((address(0x72F5)));


extern volatile __bit RXF11EID14 __attribute__((address(0x72F6)));


extern volatile __bit RXF11EID15 __attribute__((address(0x72F7)));


extern volatile __bit RXF11EID16 __attribute__((address(0x72E8)));


extern volatile __bit RXF11EID17 __attribute__((address(0x72E9)));


extern volatile __bit RXF11EID2 __attribute__((address(0x72FA)));


extern volatile __bit RXF11EID3 __attribute__((address(0x72FB)));


extern volatile __bit RXF11EID4 __attribute__((address(0x72FC)));


extern volatile __bit RXF11EID5 __attribute__((address(0x72FD)));


extern volatile __bit RXF11EID6 __attribute__((address(0x72FE)));


extern volatile __bit RXF11EID7 __attribute__((address(0x72FF)));


extern volatile __bit RXF11EID8 __attribute__((address(0x72F0)));


extern volatile __bit RXF11EID9 __attribute__((address(0x72F1)));


extern volatile __bit RXF11EN __attribute__((address(0x723B)));


extern volatile __bit RXF11EXIDEN __attribute__((address(0x72EB)));


extern volatile __bit RXF11SID0 __attribute__((address(0x72ED)));


extern volatile __bit RXF11SID1 __attribute__((address(0x72EE)));


extern volatile __bit RXF11SID10 __attribute__((address(0x72E7)));


extern volatile __bit RXF11SID2 __attribute__((address(0x72EF)));


extern volatile __bit RXF11SID3 __attribute__((address(0x72E0)));


extern volatile __bit RXF11SID4 __attribute__((address(0x72E1)));


extern volatile __bit RXF11SID5 __attribute__((address(0x72E2)));


extern volatile __bit RXF11SID6 __attribute__((address(0x72E3)));


extern volatile __bit RXF11SID7 __attribute__((address(0x72E4)));


extern volatile __bit RXF11SID8 __attribute__((address(0x72E5)));


extern volatile __bit RXF11SID9 __attribute__((address(0x72E6)));


extern volatile __bit RXF12EID0 __attribute__((address(0x7318)));


extern volatile __bit RXF12EID1 __attribute__((address(0x7319)));


extern volatile __bit RXF12EID10 __attribute__((address(0x7312)));


extern volatile __bit RXF12EID11 __attribute__((address(0x7313)));


extern volatile __bit RXF12EID12 __attribute__((address(0x7314)));


extern volatile __bit RXF12EID13 __attribute__((address(0x7315)));


extern volatile __bit RXF12EID14 __attribute__((address(0x7316)));


extern volatile __bit RXF12EID15 __attribute__((address(0x7317)));


extern volatile __bit RXF12EID16 __attribute__((address(0x7308)));


extern volatile __bit RXF12EID17 __attribute__((address(0x7309)));


extern volatile __bit RXF12EID2 __attribute__((address(0x731A)));


extern volatile __bit RXF12EID3 __attribute__((address(0x731B)));


extern volatile __bit RXF12EID4 __attribute__((address(0x731C)));


extern volatile __bit RXF12EID5 __attribute__((address(0x731D)));


extern volatile __bit RXF12EID6 __attribute__((address(0x731E)));


extern volatile __bit RXF12EID7 __attribute__((address(0x731F)));


extern volatile __bit RXF12EID8 __attribute__((address(0x7310)));


extern volatile __bit RXF12EID9 __attribute__((address(0x7311)));


extern volatile __bit RXF12EN __attribute__((address(0x723C)));


extern volatile __bit RXF12EXIDEN __attribute__((address(0x730B)));


extern volatile __bit RXF12SID0 __attribute__((address(0x730D)));


extern volatile __bit RXF12SID1 __attribute__((address(0x730E)));


extern volatile __bit RXF12SID10 __attribute__((address(0x7307)));


extern volatile __bit RXF12SID2 __attribute__((address(0x730F)));


extern volatile __bit RXF12SID3 __attribute__((address(0x7300)));


extern volatile __bit RXF12SID4 __attribute__((address(0x7301)));


extern volatile __bit RXF12SID5 __attribute__((address(0x7302)));


extern volatile __bit RXF12SID6 __attribute__((address(0x7303)));


extern volatile __bit RXF12SID7 __attribute__((address(0x7304)));


extern volatile __bit RXF12SID8 __attribute__((address(0x7305)));


extern volatile __bit RXF12SID9 __attribute__((address(0x7306)));


extern volatile __bit RXF13EID0 __attribute__((address(0x7338)));


extern volatile __bit RXF13EID1 __attribute__((address(0x7339)));


extern volatile __bit RXF13EID10 __attribute__((address(0x7332)));


extern volatile __bit RXF13EID11 __attribute__((address(0x7333)));


extern volatile __bit RXF13EID12 __attribute__((address(0x7334)));


extern volatile __bit RXF13EID13 __attribute__((address(0x7335)));


extern volatile __bit RXF13EID14 __attribute__((address(0x7336)));


extern volatile __bit RXF13EID15 __attribute__((address(0x7337)));


extern volatile __bit RXF13EID16 __attribute__((address(0x7328)));


extern volatile __bit RXF13EID17 __attribute__((address(0x7329)));


extern volatile __bit RXF13EID2 __attribute__((address(0x733A)));


extern volatile __bit RXF13EID3 __attribute__((address(0x733B)));


extern volatile __bit RXF13EID4 __attribute__((address(0x733C)));


extern volatile __bit RXF13EID5 __attribute__((address(0x733D)));


extern volatile __bit RXF13EID6 __attribute__((address(0x733E)));


extern volatile __bit RXF13EID7 __attribute__((address(0x733F)));


extern volatile __bit RXF13EID8 __attribute__((address(0x7330)));


extern volatile __bit RXF13EID9 __attribute__((address(0x7331)));


extern volatile __bit RXF13EN __attribute__((address(0x723D)));


extern volatile __bit RXF13EXIDEN __attribute__((address(0x732B)));


extern volatile __bit RXF13SID0 __attribute__((address(0x732D)));


extern volatile __bit RXF13SID1 __attribute__((address(0x732E)));


extern volatile __bit RXF13SID10 __attribute__((address(0x7327)));


extern volatile __bit RXF13SID2 __attribute__((address(0x732F)));


extern volatile __bit RXF13SID3 __attribute__((address(0x7320)));


extern volatile __bit RXF13SID4 __attribute__((address(0x7321)));


extern volatile __bit RXF13SID5 __attribute__((address(0x7322)));


extern volatile __bit RXF13SID6 __attribute__((address(0x7323)));


extern volatile __bit RXF13SID7 __attribute__((address(0x7324)));


extern volatile __bit RXF13SID8 __attribute__((address(0x7325)));


extern volatile __bit RXF13SID9 __attribute__((address(0x7326)));


extern volatile __bit RXF14EID0 __attribute__((address(0x7358)));


extern volatile __bit RXF14EID1 __attribute__((address(0x7359)));


extern volatile __bit RXF14EID10 __attribute__((address(0x7352)));


extern volatile __bit RXF14EID11 __attribute__((address(0x7353)));


extern volatile __bit RXF14EID12 __attribute__((address(0x7354)));


extern volatile __bit RXF14EID13 __attribute__((address(0x7355)));


extern volatile __bit RXF14EID14 __attribute__((address(0x7356)));


extern volatile __bit RXF14EID15 __attribute__((address(0x7357)));


extern volatile __bit RXF14EID16 __attribute__((address(0x7348)));


extern volatile __bit RXF14EID17 __attribute__((address(0x7349)));


extern volatile __bit RXF14EID2 __attribute__((address(0x735A)));


extern volatile __bit RXF14EID3 __attribute__((address(0x735B)));


extern volatile __bit RXF14EID4 __attribute__((address(0x735C)));


extern volatile __bit RXF14EID5 __attribute__((address(0x735D)));


extern volatile __bit RXF14EID6 __attribute__((address(0x735E)));


extern volatile __bit RXF14EID7 __attribute__((address(0x735F)));


extern volatile __bit RXF14EID8 __attribute__((address(0x7350)));


extern volatile __bit RXF14EID9 __attribute__((address(0x7351)));


extern volatile __bit RXF14EN __attribute__((address(0x723E)));


extern volatile __bit RXF14EXIDEN __attribute__((address(0x734B)));


extern volatile __bit RXF14SID0 __attribute__((address(0x734D)));


extern volatile __bit RXF14SID1 __attribute__((address(0x734E)));


extern volatile __bit RXF14SID10 __attribute__((address(0x7347)));


extern volatile __bit RXF14SID2 __attribute__((address(0x734F)));


extern volatile __bit RXF14SID3 __attribute__((address(0x7340)));


extern volatile __bit RXF14SID4 __attribute__((address(0x7341)));


extern volatile __bit RXF14SID5 __attribute__((address(0x7342)));


extern volatile __bit RXF14SID6 __attribute__((address(0x7343)));


extern volatile __bit RXF14SID7 __attribute__((address(0x7344)));


extern volatile __bit RXF14SID8 __attribute__((address(0x7345)));


extern volatile __bit RXF14SID9 __attribute__((address(0x7346)));


extern volatile __bit RXF15EID0 __attribute__((address(0x7378)));


extern volatile __bit RXF15EID1 __attribute__((address(0x7379)));


extern volatile __bit RXF15EID10 __attribute__((address(0x7372)));


extern volatile __bit RXF15EID11 __attribute__((address(0x7373)));


extern volatile __bit RXF15EID12 __attribute__((address(0x7374)));


extern volatile __bit RXF15EID13 __attribute__((address(0x7375)));


extern volatile __bit RXF15EID14 __attribute__((address(0x7376)));


extern volatile __bit RXF15EID15 __attribute__((address(0x7377)));


extern volatile __bit RXF15EID16 __attribute__((address(0x7368)));


extern volatile __bit RXF15EID17 __attribute__((address(0x7369)));


extern volatile __bit RXF15EID2 __attribute__((address(0x737A)));


extern volatile __bit RXF15EID3 __attribute__((address(0x737B)));


extern volatile __bit RXF15EID4 __attribute__((address(0x737C)));


extern volatile __bit RXF15EID5 __attribute__((address(0x737D)));


extern volatile __bit RXF15EID6 __attribute__((address(0x737E)));


extern volatile __bit RXF15EID7 __attribute__((address(0x737F)));


extern volatile __bit RXF15EID8 __attribute__((address(0x7370)));


extern volatile __bit RXF15EID9 __attribute__((address(0x7371)));


extern volatile __bit RXF15EN __attribute__((address(0x723F)));


extern volatile __bit RXF15EXIDEN __attribute__((address(0x736B)));


extern volatile __bit RXF15SID0 __attribute__((address(0x736D)));


extern volatile __bit RXF15SID1 __attribute__((address(0x736E)));


extern volatile __bit RXF15SID10 __attribute__((address(0x7367)));


extern volatile __bit RXF15SID2 __attribute__((address(0x736F)));


extern volatile __bit RXF15SID3 __attribute__((address(0x7360)));


extern volatile __bit RXF15SID4 __attribute__((address(0x7361)));


extern volatile __bit RXF15SID5 __attribute__((address(0x7362)));


extern volatile __bit RXF15SID6 __attribute__((address(0x7363)));


extern volatile __bit RXF15SID7 __attribute__((address(0x7364)));


extern volatile __bit RXF15SID8 __attribute__((address(0x7365)));


extern volatile __bit RXF15SID9 __attribute__((address(0x7366)));


extern volatile __bit RXF1EID0 __attribute__((address(0x7738)));


extern volatile __bit RXF1EID1 __attribute__((address(0x7739)));


extern volatile __bit RXF1EID10 __attribute__((address(0x7732)));


extern volatile __bit RXF1EID11 __attribute__((address(0x7733)));


extern volatile __bit RXF1EID12 __attribute__((address(0x7734)));


extern volatile __bit RXF1EID13 __attribute__((address(0x7735)));


extern volatile __bit RXF1EID14 __attribute__((address(0x7736)));


extern volatile __bit RXF1EID15 __attribute__((address(0x7737)));


extern volatile __bit RXF1EID16 __attribute__((address(0x7728)));


extern volatile __bit RXF1EID17 __attribute__((address(0x7729)));


extern volatile __bit RXF1EID2 __attribute__((address(0x773A)));


extern volatile __bit RXF1EID3 __attribute__((address(0x773B)));


extern volatile __bit RXF1EID4 __attribute__((address(0x773C)));


extern volatile __bit RXF1EID5 __attribute__((address(0x773D)));


extern volatile __bit RXF1EID6 __attribute__((address(0x773E)));


extern volatile __bit RXF1EID7 __attribute__((address(0x773F)));


extern volatile __bit RXF1EID8 __attribute__((address(0x7730)));


extern volatile __bit RXF1EID9 __attribute__((address(0x7731)));


extern volatile __bit RXF1EN __attribute__((address(0x7231)));


extern volatile __bit RXF1EXIDEN __attribute__((address(0x772B)));


extern volatile __bit RXF1SID0 __attribute__((address(0x772D)));


extern volatile __bit RXF1SID1 __attribute__((address(0x772E)));


extern volatile __bit RXF1SID10 __attribute__((address(0x7727)));


extern volatile __bit RXF1SID2 __attribute__((address(0x772F)));


extern volatile __bit RXF1SID3 __attribute__((address(0x7720)));


extern volatile __bit RXF1SID4 __attribute__((address(0x7721)));


extern volatile __bit RXF1SID5 __attribute__((address(0x7722)));


extern volatile __bit RXF1SID6 __attribute__((address(0x7723)));


extern volatile __bit RXF1SID7 __attribute__((address(0x7724)));


extern volatile __bit RXF1SID8 __attribute__((address(0x7725)));


extern volatile __bit RXF1SID9 __attribute__((address(0x7726)));


extern volatile __bit RXF2EID0 __attribute__((address(0x7758)));


extern volatile __bit RXF2EID1 __attribute__((address(0x7759)));


extern volatile __bit RXF2EID10 __attribute__((address(0x7752)));


extern volatile __bit RXF2EID11 __attribute__((address(0x7753)));


extern volatile __bit RXF2EID12 __attribute__((address(0x7754)));


extern volatile __bit RXF2EID13 __attribute__((address(0x7755)));


extern volatile __bit RXF2EID14 __attribute__((address(0x7756)));


extern volatile __bit RXF2EID15 __attribute__((address(0x7757)));


extern volatile __bit RXF2EID16 __attribute__((address(0x7748)));


extern volatile __bit RXF2EID17 __attribute__((address(0x7749)));


extern volatile __bit RXF2EID2 __attribute__((address(0x775A)));


extern volatile __bit RXF2EID3 __attribute__((address(0x775B)));


extern volatile __bit RXF2EID4 __attribute__((address(0x775C)));


extern volatile __bit RXF2EID5 __attribute__((address(0x775D)));


extern volatile __bit RXF2EID6 __attribute__((address(0x775E)));


extern volatile __bit RXF2EID7 __attribute__((address(0x775F)));


extern volatile __bit RXF2EID8 __attribute__((address(0x7750)));


extern volatile __bit RXF2EID9 __attribute__((address(0x7751)));


extern volatile __bit RXF2EN __attribute__((address(0x7232)));


extern volatile __bit RXF2EXIDEN __attribute__((address(0x774B)));


extern volatile __bit RXF2SID0 __attribute__((address(0x774D)));


extern volatile __bit RXF2SID1 __attribute__((address(0x774E)));


extern volatile __bit RXF2SID10 __attribute__((address(0x7747)));


extern volatile __bit RXF2SID2 __attribute__((address(0x774F)));


extern volatile __bit RXF2SID3 __attribute__((address(0x7740)));


extern volatile __bit RXF2SID4 __attribute__((address(0x7741)));


extern volatile __bit RXF2SID5 __attribute__((address(0x7742)));


extern volatile __bit RXF2SID6 __attribute__((address(0x7743)));


extern volatile __bit RXF2SID7 __attribute__((address(0x7744)));


extern volatile __bit RXF2SID8 __attribute__((address(0x7745)));


extern volatile __bit RXF2SID9 __attribute__((address(0x7746)));


extern volatile __bit RXF3EID0 __attribute__((address(0x7778)));


extern volatile __bit RXF3EID1 __attribute__((address(0x7779)));


extern volatile __bit RXF3EID10 __attribute__((address(0x7772)));


extern volatile __bit RXF3EID11 __attribute__((address(0x7773)));


extern volatile __bit RXF3EID12 __attribute__((address(0x7774)));


extern volatile __bit RXF3EID13 __attribute__((address(0x7775)));


extern volatile __bit RXF3EID14 __attribute__((address(0x7776)));


extern volatile __bit RXF3EID15 __attribute__((address(0x7777)));


extern volatile __bit RXF3EID16 __attribute__((address(0x7768)));


extern volatile __bit RXF3EID17 __attribute__((address(0x7769)));


extern volatile __bit RXF3EID2 __attribute__((address(0x777A)));


extern volatile __bit RXF3EID3 __attribute__((address(0x777B)));


extern volatile __bit RXF3EID4 __attribute__((address(0x777C)));


extern volatile __bit RXF3EID5 __attribute__((address(0x777D)));


extern volatile __bit RXF3EID6 __attribute__((address(0x777E)));


extern volatile __bit RXF3EID7 __attribute__((address(0x777F)));


extern volatile __bit RXF3EID8 __attribute__((address(0x7770)));


extern volatile __bit RXF3EID9 __attribute__((address(0x7771)));


extern volatile __bit RXF3EN __attribute__((address(0x7233)));


extern volatile __bit RXF3EXIDEN __attribute__((address(0x776B)));


extern volatile __bit RXF3SID0 __attribute__((address(0x776D)));


extern volatile __bit RXF3SID1 __attribute__((address(0x776E)));


extern volatile __bit RXF3SID10 __attribute__((address(0x7767)));


extern volatile __bit RXF3SID2 __attribute__((address(0x776F)));


extern volatile __bit RXF3SID3 __attribute__((address(0x7760)));


extern volatile __bit RXF3SID4 __attribute__((address(0x7761)));


extern volatile __bit RXF3SID5 __attribute__((address(0x7762)));


extern volatile __bit RXF3SID6 __attribute__((address(0x7763)));


extern volatile __bit RXF3SID7 __attribute__((address(0x7764)));


extern volatile __bit RXF3SID8 __attribute__((address(0x7765)));


extern volatile __bit RXF3SID9 __attribute__((address(0x7766)));


extern volatile __bit RXF4EID0 __attribute__((address(0x7798)));


extern volatile __bit RXF4EID1 __attribute__((address(0x7799)));


extern volatile __bit RXF4EID10 __attribute__((address(0x7792)));


extern volatile __bit RXF4EID11 __attribute__((address(0x7793)));


extern volatile __bit RXF4EID12 __attribute__((address(0x7794)));


extern volatile __bit RXF4EID13 __attribute__((address(0x7795)));


extern volatile __bit RXF4EID14 __attribute__((address(0x7796)));


extern volatile __bit RXF4EID15 __attribute__((address(0x7797)));


extern volatile __bit RXF4EID16 __attribute__((address(0x7788)));


extern volatile __bit RXF4EID17 __attribute__((address(0x7789)));


extern volatile __bit RXF4EID2 __attribute__((address(0x779A)));


extern volatile __bit RXF4EID3 __attribute__((address(0x779B)));


extern volatile __bit RXF4EID4 __attribute__((address(0x779C)));


extern volatile __bit RXF4EID5 __attribute__((address(0x779D)));


extern volatile __bit RXF4EID6 __attribute__((address(0x779E)));


extern volatile __bit RXF4EID7 __attribute__((address(0x779F)));


extern volatile __bit RXF4EID8 __attribute__((address(0x7790)));


extern volatile __bit RXF4EID9 __attribute__((address(0x7791)));


extern volatile __bit RXF4EN __attribute__((address(0x7234)));


extern volatile __bit RXF4EXIDEN __attribute__((address(0x778B)));


extern volatile __bit RXF4SID0 __attribute__((address(0x778D)));


extern volatile __bit RXF4SID1 __attribute__((address(0x778E)));


extern volatile __bit RXF4SID10 __attribute__((address(0x7787)));


extern volatile __bit RXF4SID2 __attribute__((address(0x778F)));


extern volatile __bit RXF4SID3 __attribute__((address(0x7780)));


extern volatile __bit RXF4SID4 __attribute__((address(0x7781)));


extern volatile __bit RXF4SID5 __attribute__((address(0x7782)));


extern volatile __bit RXF4SID6 __attribute__((address(0x7783)));


extern volatile __bit RXF4SID7 __attribute__((address(0x7784)));


extern volatile __bit RXF4SID8 __attribute__((address(0x7785)));


extern volatile __bit RXF4SID9 __attribute__((address(0x7786)));


extern volatile __bit RXF5EID0 __attribute__((address(0x77B8)));


extern volatile __bit RXF5EID1 __attribute__((address(0x77B9)));


extern volatile __bit RXF5EID10 __attribute__((address(0x77B2)));


extern volatile __bit RXF5EID11 __attribute__((address(0x77B3)));


extern volatile __bit RXF5EID12 __attribute__((address(0x77B4)));


extern volatile __bit RXF5EID13 __attribute__((address(0x77B5)));


extern volatile __bit RXF5EID14 __attribute__((address(0x77B6)));


extern volatile __bit RXF5EID15 __attribute__((address(0x77B7)));


extern volatile __bit RXF5EID16 __attribute__((address(0x77A8)));


extern volatile __bit RXF5EID17 __attribute__((address(0x77A9)));


extern volatile __bit RXF5EID2 __attribute__((address(0x77BA)));


extern volatile __bit RXF5EID3 __attribute__((address(0x77BB)));


extern volatile __bit RXF5EID4 __attribute__((address(0x77BC)));


extern volatile __bit RXF5EID5 __attribute__((address(0x77BD)));


extern volatile __bit RXF5EID6 __attribute__((address(0x77BE)));


extern volatile __bit RXF5EID7 __attribute__((address(0x77BF)));


extern volatile __bit RXF5EID8 __attribute__((address(0x77B0)));


extern volatile __bit RXF5EID9 __attribute__((address(0x77B1)));


extern volatile __bit RXF5EN __attribute__((address(0x7235)));


extern volatile __bit RXF5EXIDEN __attribute__((address(0x77AB)));


extern volatile __bit RXF5SID0 __attribute__((address(0x77AD)));


extern volatile __bit RXF5SID1 __attribute__((address(0x77AE)));


extern volatile __bit RXF5SID10 __attribute__((address(0x77A7)));


extern volatile __bit RXF5SID2 __attribute__((address(0x77AF)));


extern volatile __bit RXF5SID3 __attribute__((address(0x77A0)));


extern volatile __bit RXF5SID4 __attribute__((address(0x77A1)));


extern volatile __bit RXF5SID5 __attribute__((address(0x77A2)));


extern volatile __bit RXF5SID6 __attribute__((address(0x77A3)));


extern volatile __bit RXF5SID7 __attribute__((address(0x77A4)));


extern volatile __bit RXF5SID8 __attribute__((address(0x77A5)));


extern volatile __bit RXF5SID9 __attribute__((address(0x77A6)));


extern volatile __bit RXF6EID0 __attribute__((address(0x7258)));


extern volatile __bit RXF6EID1 __attribute__((address(0x7259)));


extern volatile __bit RXF6EID10 __attribute__((address(0x7252)));


extern volatile __bit RXF6EID11 __attribute__((address(0x7253)));


extern volatile __bit RXF6EID12 __attribute__((address(0x7254)));


extern volatile __bit RXF6EID13 __attribute__((address(0x7255)));


extern volatile __bit RXF6EID14 __attribute__((address(0x7256)));


extern volatile __bit RXF6EID15 __attribute__((address(0x7257)));


extern volatile __bit RXF6EID16 __attribute__((address(0x7248)));


extern volatile __bit RXF6EID17 __attribute__((address(0x7249)));


extern volatile __bit RXF6EID2 __attribute__((address(0x725A)));


extern volatile __bit RXF6EID3 __attribute__((address(0x725B)));


extern volatile __bit RXF6EID4 __attribute__((address(0x725C)));


extern volatile __bit RXF6EID5 __attribute__((address(0x725D)));


extern volatile __bit RXF6EID6 __attribute__((address(0x725E)));


extern volatile __bit RXF6EID7 __attribute__((address(0x725F)));


extern volatile __bit RXF6EID8 __attribute__((address(0x7250)));


extern volatile __bit RXF6EID9 __attribute__((address(0x7251)));


extern volatile __bit RXF6EN __attribute__((address(0x7236)));


extern volatile __bit RXF6EXIDEN __attribute__((address(0x724B)));


extern volatile __bit RXF6SID0 __attribute__((address(0x724D)));


extern volatile __bit RXF6SID1 __attribute__((address(0x724E)));


extern volatile __bit RXF6SID10 __attribute__((address(0x7247)));


extern volatile __bit RXF6SID2 __attribute__((address(0x724F)));


extern volatile __bit RXF6SID3 __attribute__((address(0x7240)));


extern volatile __bit RXF6SID4 __attribute__((address(0x7241)));


extern volatile __bit RXF6SID5 __attribute__((address(0x7242)));


extern volatile __bit RXF6SID6 __attribute__((address(0x7243)));


extern volatile __bit RXF6SID7 __attribute__((address(0x7244)));


extern volatile __bit RXF6SID8 __attribute__((address(0x7245)));


extern volatile __bit RXF6SID9 __attribute__((address(0x7246)));


extern volatile __bit RXF7EID0 __attribute__((address(0x7278)));


extern volatile __bit RXF7EID1 __attribute__((address(0x7279)));


extern volatile __bit RXF7EID10 __attribute__((address(0x7272)));


extern volatile __bit RXF7EID11 __attribute__((address(0x7273)));


extern volatile __bit RXF7EID12 __attribute__((address(0x7274)));


extern volatile __bit RXF7EID13 __attribute__((address(0x7275)));


extern volatile __bit RXF7EID14 __attribute__((address(0x7276)));


extern volatile __bit RXF7EID15 __attribute__((address(0x7277)));


extern volatile __bit RXF7EID16 __attribute__((address(0x7268)));


extern volatile __bit RXF7EID17 __attribute__((address(0x7269)));


extern volatile __bit RXF7EID2 __attribute__((address(0x727A)));


extern volatile __bit RXF7EID3 __attribute__((address(0x727B)));


extern volatile __bit RXF7EID4 __attribute__((address(0x727C)));


extern volatile __bit RXF7EID5 __attribute__((address(0x727D)));


extern volatile __bit RXF7EID6 __attribute__((address(0x727E)));


extern volatile __bit RXF7EID7 __attribute__((address(0x727F)));


extern volatile __bit RXF7EID8 __attribute__((address(0x7270)));


extern volatile __bit RXF7EID9 __attribute__((address(0x7271)));


extern volatile __bit RXF7EN __attribute__((address(0x7237)));


extern volatile __bit RXF7EXIDEN __attribute__((address(0x726B)));


extern volatile __bit RXF7SID0 __attribute__((address(0x726D)));


extern volatile __bit RXF7SID1 __attribute__((address(0x726E)));


extern volatile __bit RXF7SID10 __attribute__((address(0x7267)));


extern volatile __bit RXF7SID2 __attribute__((address(0x726F)));


extern volatile __bit RXF7SID3 __attribute__((address(0x7260)));


extern volatile __bit RXF7SID4 __attribute__((address(0x7261)));


extern volatile __bit RXF7SID5 __attribute__((address(0x7262)));


extern volatile __bit RXF7SID6 __attribute__((address(0x7263)));


extern volatile __bit RXF7SID7 __attribute__((address(0x7264)));


extern volatile __bit RXF7SID8 __attribute__((address(0x7265)));


extern volatile __bit RXF7SID9 __attribute__((address(0x7266)));


extern volatile __bit RXF8EID0 __attribute__((address(0x7298)));


extern volatile __bit RXF8EID1 __attribute__((address(0x7299)));


extern volatile __bit RXF8EID10 __attribute__((address(0x7292)));


extern volatile __bit RXF8EID11 __attribute__((address(0x7293)));


extern volatile __bit RXF8EID12 __attribute__((address(0x7294)));


extern volatile __bit RXF8EID13 __attribute__((address(0x7295)));


extern volatile __bit RXF8EID14 __attribute__((address(0x7296)));


extern volatile __bit RXF8EID15 __attribute__((address(0x7297)));


extern volatile __bit RXF8EID16 __attribute__((address(0x7288)));


extern volatile __bit RXF8EID17 __attribute__((address(0x7289)));


extern volatile __bit RXF8EID2 __attribute__((address(0x729A)));


extern volatile __bit RXF8EID3 __attribute__((address(0x729B)));


extern volatile __bit RXF8EID4 __attribute__((address(0x729C)));


extern volatile __bit RXF8EID5 __attribute__((address(0x729D)));


extern volatile __bit RXF8EID6 __attribute__((address(0x729E)));


extern volatile __bit RXF8EID7 __attribute__((address(0x729F)));


extern volatile __bit RXF8EID8 __attribute__((address(0x7290)));


extern volatile __bit RXF8EID9 __attribute__((address(0x7291)));


extern volatile __bit RXF8EN __attribute__((address(0x7238)));


extern volatile __bit RXF8EXIDEN __attribute__((address(0x728B)));


extern volatile __bit RXF8SID0 __attribute__((address(0x728D)));


extern volatile __bit RXF8SID1 __attribute__((address(0x728E)));


extern volatile __bit RXF8SID10 __attribute__((address(0x7287)));


extern volatile __bit RXF8SID2 __attribute__((address(0x728F)));


extern volatile __bit RXF8SID3 __attribute__((address(0x7280)));


extern volatile __bit RXF8SID4 __attribute__((address(0x7281)));


extern volatile __bit RXF8SID5 __attribute__((address(0x7282)));


extern volatile __bit RXF8SID6 __attribute__((address(0x7283)));


extern volatile __bit RXF8SID7 __attribute__((address(0x7284)));


extern volatile __bit RXF8SID8 __attribute__((address(0x7285)));


extern volatile __bit RXF8SID9 __attribute__((address(0x7286)));


extern volatile __bit RXF9EID0 __attribute__((address(0x72B8)));


extern volatile __bit RXF9EID1 __attribute__((address(0x72B9)));


extern volatile __bit RXF9EID10 __attribute__((address(0x72B2)));


extern volatile __bit RXF9EID11 __attribute__((address(0x72B3)));


extern volatile __bit RXF9EID12 __attribute__((address(0x72B4)));


extern volatile __bit RXF9EID13 __attribute__((address(0x72B5)));


extern volatile __bit RXF9EID14 __attribute__((address(0x72B6)));


extern volatile __bit RXF9EID15 __attribute__((address(0x72B7)));


extern volatile __bit RXF9EID16 __attribute__((address(0x72A8)));


extern volatile __bit RXF9EID17 __attribute__((address(0x72A9)));


extern volatile __bit RXF9EID2 __attribute__((address(0x72BA)));


extern volatile __bit RXF9EID3 __attribute__((address(0x72BB)));


extern volatile __bit RXF9EID4 __attribute__((address(0x72BC)));


extern volatile __bit RXF9EID5 __attribute__((address(0x72BD)));


extern volatile __bit RXF9EID6 __attribute__((address(0x72BE)));


extern volatile __bit RXF9EID7 __attribute__((address(0x72BF)));


extern volatile __bit RXF9EID8 __attribute__((address(0x72B0)));


extern volatile __bit RXF9EID9 __attribute__((address(0x72B1)));


extern volatile __bit RXF9EN __attribute__((address(0x7239)));


extern volatile __bit RXF9EXIDEN __attribute__((address(0x72AB)));


extern volatile __bit RXF9SID0 __attribute__((address(0x72AD)));


extern volatile __bit RXF9SID1 __attribute__((address(0x72AE)));


extern volatile __bit RXF9SID10 __attribute__((address(0x72A7)));


extern volatile __bit RXF9SID2 __attribute__((address(0x72AF)));


extern volatile __bit RXF9SID3 __attribute__((address(0x72A0)));


extern volatile __bit RXF9SID4 __attribute__((address(0x72A1)));


extern volatile __bit RXF9SID5 __attribute__((address(0x72A2)));


extern volatile __bit RXF9SID6 __attribute__((address(0x72A3)));


extern volatile __bit RXF9SID7 __attribute__((address(0x72A4)));


extern volatile __bit RXF9SID8 __attribute__((address(0x72A5)));


extern volatile __bit RXF9SID9 __attribute__((address(0x72A6)));


extern volatile __bit RXM0EID0 __attribute__((address(0x77D8)));


extern volatile __bit RXM0EID1 __attribute__((address(0x77D9)));


extern volatile __bit RXM0EID10 __attribute__((address(0x77D2)));


extern volatile __bit RXM0EID11 __attribute__((address(0x77D3)));


extern volatile __bit RXM0EID12 __attribute__((address(0x77D4)));


extern volatile __bit RXM0EID13 __attribute__((address(0x77D5)));


extern volatile __bit RXM0EID14 __attribute__((address(0x77D6)));


extern volatile __bit RXM0EID15 __attribute__((address(0x77D7)));


extern volatile __bit RXM0EID16 __attribute__((address(0x77C8)));


extern volatile __bit RXM0EID17 __attribute__((address(0x77C9)));


extern volatile __bit RXM0EID2 __attribute__((address(0x77DA)));


extern volatile __bit RXM0EID3 __attribute__((address(0x77DB)));


extern volatile __bit RXM0EID4 __attribute__((address(0x77DC)));


extern volatile __bit RXM0EID5 __attribute__((address(0x77DD)));


extern volatile __bit RXM0EID6 __attribute__((address(0x77DE)));


extern volatile __bit RXM0EID7 __attribute__((address(0x77DF)));


extern volatile __bit RXM0EID8 __attribute__((address(0x77D0)));


extern volatile __bit RXM0EID9 __attribute__((address(0x77D1)));


extern volatile __bit RXM0EXIDM __attribute__((address(0x77CB)));


extern volatile __bit RXM0SID0 __attribute__((address(0x77CD)));


extern volatile __bit RXM0SID1 __attribute__((address(0x77CE)));


extern volatile __bit RXM0SID10 __attribute__((address(0x77C7)));


extern volatile __bit RXM0SID2 __attribute__((address(0x77CF)));


extern volatile __bit RXM0SID3 __attribute__((address(0x77C0)));


extern volatile __bit RXM0SID4 __attribute__((address(0x77C1)));


extern volatile __bit RXM0SID5 __attribute__((address(0x77C2)));


extern volatile __bit RXM0SID6 __attribute__((address(0x77C3)));


extern volatile __bit RXM0SID7 __attribute__((address(0x77C4)));


extern volatile __bit RXM0SID8 __attribute__((address(0x77C5)));


extern volatile __bit RXM0SID9 __attribute__((address(0x77C6)));


extern volatile __bit RXM1EID0 __attribute__((address(0x77F8)));


extern volatile __bit RXM1EID1 __attribute__((address(0x77F9)));


extern volatile __bit RXM1EID10 __attribute__((address(0x77F2)));


extern volatile __bit RXM1EID11 __attribute__((address(0x77F3)));


extern volatile __bit RXM1EID12 __attribute__((address(0x77F4)));


extern volatile __bit RXM1EID13 __attribute__((address(0x77F5)));


extern volatile __bit RXM1EID14 __attribute__((address(0x77F6)));


extern volatile __bit RXM1EID15 __attribute__((address(0x77F7)));


extern volatile __bit RXM1EID16 __attribute__((address(0x77E8)));


extern volatile __bit RXM1EID17 __attribute__((address(0x77E9)));


extern volatile __bit RXM1EID2 __attribute__((address(0x77FA)));


extern volatile __bit RXM1EID3 __attribute__((address(0x77FB)));


extern volatile __bit RXM1EID4 __attribute__((address(0x77FC)));


extern volatile __bit RXM1EID5 __attribute__((address(0x77FD)));


extern volatile __bit RXM1EID6 __attribute__((address(0x77FE)));


extern volatile __bit RXM1EID7 __attribute__((address(0x77FF)));


extern volatile __bit RXM1EID8 __attribute__((address(0x77F0)));


extern volatile __bit RXM1EID9 __attribute__((address(0x77F1)));


extern volatile __bit RXM1EXIDEN __attribute__((address(0x77EB)));


extern volatile __bit RXM1SID0 __attribute__((address(0x77ED)));


extern volatile __bit RXM1SID1 __attribute__((address(0x77EE)));


extern volatile __bit RXM1SID10 __attribute__((address(0x77E7)));


extern volatile __bit RXM1SID2 __attribute__((address(0x77EF)));


extern volatile __bit RXM1SID3 __attribute__((address(0x77E0)));


extern volatile __bit RXM1SID4 __attribute__((address(0x77E1)));


extern volatile __bit RXM1SID5 __attribute__((address(0x77E2)));


extern volatile __bit RXM1SID6 __attribute__((address(0x77E3)));


extern volatile __bit RXM1SID7 __attribute__((address(0x77E4)));


extern volatile __bit RXM1SID8 __attribute__((address(0x77E5)));


extern volatile __bit RXM1SID9 __attribute__((address(0x77E6)));


extern volatile __bit RXWARN __attribute__((address(0x7B89)));


extern volatile __bit R_NOT_W __attribute__((address(0x7E3A)));


extern volatile __bit R_W __attribute__((address(0x7E3A)));


extern volatile __bit R_nW __attribute__((address(0x7E3A)));


extern volatile __bit SAM __attribute__((address(0x7226)));


extern volatile __bit SBOREN __attribute__((address(0x7E86)));


extern volatile __bit SCKP __attribute__((address(0x7D3C)));


extern volatile __bit SCKP1 __attribute__((address(0x7D3C)));


extern volatile __bit SCKP2 __attribute__((address(0x7DCC)));


extern volatile __bit SCS0 __attribute__((address(0x7E98)));


extern volatile __bit SCS1 __attribute__((address(0x7E99)));


extern volatile __bit SEG1PH0 __attribute__((address(0x7223)));


extern volatile __bit SEG1PH1 __attribute__((address(0x7224)));


extern volatile __bit SEG1PH2 __attribute__((address(0x7225)));


extern volatile __bit SEG2PH0 __attribute__((address(0x7228)));


extern volatile __bit SEG2PH1 __attribute__((address(0x7229)));


extern volatile __bit SEG2PH2 __attribute__((address(0x722A)));


extern volatile __bit SEG2PHT __attribute__((address(0x7227)));


extern volatile __bit SEG2PHTS __attribute__((address(0x7227)));


extern volatile __bit SEN __attribute__((address(0x7E28)));


extern volatile __bit SENDB1 __attribute__((address(0x7D63)));


extern volatile __bit SENDB2 __attribute__((address(0x7DD3)));


extern volatile __bit SJW0 __attribute__((address(0x721E)));


extern volatile __bit SJW1 __attribute__((address(0x721F)));


extern volatile __bit SLRA __attribute__((address(0x7C80)));


extern volatile __bit SLRB __attribute__((address(0x7C81)));


extern volatile __bit SLRC __attribute__((address(0x7C82)));


extern volatile __bit SMP __attribute__((address(0x7E3F)));


extern volatile __bit SOSCDRV __attribute__((address(0x7E94)));


extern volatile __bit SOSCEN3 __attribute__((address(0x7D8B)));


extern volatile __bit SOSCGO __attribute__((address(0x7E93)));


extern volatile __bit SOSCRUN __attribute__((address(0x7E96)));


extern volatile __bit SP0 __attribute__((address(0x7FE0)));


extern volatile __bit SP1 __attribute__((address(0x7FE1)));


extern volatile __bit SP2 __attribute__((address(0x7FE2)));


extern volatile __bit SP3 __attribute__((address(0x7FE3)));


extern volatile __bit SP4 __attribute__((address(0x7FE4)));


extern volatile __bit SPEN1 __attribute__((address(0x7D5F)));


extern volatile __bit SPEN2 __attribute__((address(0x7D37)));


extern volatile __bit SPI1MD __attribute__((address(0x7AC9)));


extern volatile __bit SPI2MD __attribute__((address(0x7ACA)));


extern volatile __bit SREN1 __attribute__((address(0x7D5D)));


extern volatile __bit SREN2 __attribute__((address(0x7D35)));


extern volatile __bit SRENA __attribute__((address(0x7D5D)));


extern volatile __bit SRETEN __attribute__((address(0x7E8C)));


extern volatile __bit SSPEN __attribute__((address(0x7E35)));


extern volatile __bit SSPIE __attribute__((address(0x7CEB)));


extern volatile __bit SSPIF __attribute__((address(0x7CF3)));


extern volatile __bit SSPIP __attribute__((address(0x7CFB)));


extern volatile __bit SSPM0 __attribute__((address(0x7E30)));


extern volatile __bit SSPM1 __attribute__((address(0x7E31)));


extern volatile __bit SSPM2 __attribute__((address(0x7E32)));


extern volatile __bit SSPM3 __attribute__((address(0x7E33)));


extern volatile __bit SSPMD __attribute__((address(0x7AC8)));


extern volatile __bit SSPOD __attribute__((address(0x7C8F)));


extern volatile __bit SSPOV __attribute__((address(0x7E36)));


extern volatile __bit START __attribute__((address(0x7E3B)));


extern volatile __bit STKFUL __attribute__((address(0x7FE7)));


extern volatile __bit STKOVF __attribute__((address(0x7FE7)));


extern volatile __bit STKUNF __attribute__((address(0x7FE6)));


extern volatile __bit STOP __attribute__((address(0x7E3C)));


extern volatile __bit STRA __attribute__((address(0x7CE0)));


extern volatile __bit STRB __attribute__((address(0x7CE1)));


extern volatile __bit STRC __attribute__((address(0x7CE2)));


extern volatile __bit STRD __attribute__((address(0x7CE3)));


extern volatile __bit STRSYNC __attribute__((address(0x7CE4)));


extern volatile __bit SWDTE __attribute__((address(0x7E88)));


extern volatile __bit SWDTEN __attribute__((address(0x7E88)));


extern volatile __bit SYNC1 __attribute__((address(0x7D64)));


extern volatile __bit SYNC2 __attribute__((address(0x7DD4)));


extern volatile __bit T08BIT __attribute__((address(0x7EAE)));


extern volatile __bit T0CS __attribute__((address(0x7EAD)));


extern volatile __bit T0IE __attribute__((address(0x7F95)));


extern volatile __bit T0IF __attribute__((address(0x7F92)));


extern volatile __bit T0IP __attribute__((address(0x7F8A)));


extern volatile __bit T0PS0 __attribute__((address(0x7EA8)));


extern volatile __bit T0PS1 __attribute__((address(0x7EA9)));


extern volatile __bit T0PS2 __attribute__((address(0x7EAA)));


extern volatile __bit T0SE __attribute__((address(0x7EAC)));


extern volatile __bit T1CKPS0 __attribute__((address(0x7E6C)));


extern volatile __bit T1CKPS1 __attribute__((address(0x7E6D)));


extern volatile __bit T1GGO __attribute__((address(0x7D53)));


extern volatile __bit T1GGO_NOT_T1DONE __attribute__((address(0x7D53)));


extern volatile __bit T1GGO_nT1DONE __attribute__((address(0x7D53)));


extern volatile __bit T1GPOL __attribute__((address(0x7D56)));


extern volatile __bit T1GSPM __attribute__((address(0x7D54)));


extern volatile __bit T1GSS0 __attribute__((address(0x7D50)));


extern volatile __bit T1GSS1 __attribute__((address(0x7D51)));


extern volatile __bit T1GTM __attribute__((address(0x7D55)));


extern volatile __bit T1GVAL __attribute__((address(0x7D52)));


extern volatile __bit T1OSCEN __attribute__((address(0x7E6B)));


extern volatile __bit T1RD16 __attribute__((address(0x7E6F)));


extern volatile __bit T2CKPS0 __attribute__((address(0x7E50)));


extern volatile __bit T2CKPS1 __attribute__((address(0x7E51)));


extern volatile __bit T2OUTPS0 __attribute__((address(0x7E53)));


extern volatile __bit T2OUTPS1 __attribute__((address(0x7E54)));


extern volatile __bit T2OUTPS2 __attribute__((address(0x7E55)));


extern volatile __bit T2OUTPS3 __attribute__((address(0x7E56)));


extern volatile __bit T3CKPS0 __attribute__((address(0x7D8C)));


extern volatile __bit T3CKPS1 __attribute__((address(0x7D8D)));


extern volatile __bit T3GGO __attribute__((address(0x7D83)));


extern volatile __bit T3GGO_NOT_T3DONE __attribute__((address(0x7D83)));


extern volatile __bit T3GGO_nT3DONE __attribute__((address(0x7D83)));


extern volatile __bit T3GPOL __attribute__((address(0x7D86)));


extern volatile __bit T3GSPM __attribute__((address(0x7D84)));


extern volatile __bit T3GSS0 __attribute__((address(0x7D80)));


extern volatile __bit T3GSS1 __attribute__((address(0x7D81)));


extern volatile __bit T3GTM __attribute__((address(0x7D85)));


extern volatile __bit T3GVAL __attribute__((address(0x7D82)));


extern volatile __bit T3RD16 __attribute__((address(0x7D8F)));


extern volatile __bit T4CKPS0 __attribute__((address(0x7C40)));


extern volatile __bit T4CKPS1 __attribute__((address(0x7C41)));


extern volatile __bit T4OUTPS0 __attribute__((address(0x7C43)));


extern volatile __bit T4OUTPS1 __attribute__((address(0x7C44)));


extern volatile __bit T4OUTPS2 __attribute__((address(0x7C45)));


extern volatile __bit T4OUTPS3 __attribute__((address(0x7C46)));


extern volatile __bit TEC0 __attribute__((address(0x7210)));


extern volatile __bit TEC1 __attribute__((address(0x7211)));


extern volatile __bit TEC2 __attribute__((address(0x7212)));


extern volatile __bit TEC3 __attribute__((address(0x7213)));


extern volatile __bit TEC4 __attribute__((address(0x7214)));


extern volatile __bit TEC5 __attribute__((address(0x7215)));


extern volatile __bit TEC6 __attribute__((address(0x7216)));


extern volatile __bit TEC7 __attribute__((address(0x7217)));


extern volatile __bit TGEN __attribute__((address(0x7AAC)));


extern volatile __bit TMR0IE __attribute__((address(0x7F95)));


extern volatile __bit TMR0IF __attribute__((address(0x7F92)));


extern volatile __bit TMR0IP __attribute__((address(0x7F8A)));


extern volatile __bit TMR0MD __attribute__((address(0x7AC0)));


extern volatile __bit TMR0ON __attribute__((address(0x7EAF)));


extern volatile __bit TMR1CS0 __attribute__((address(0x7E6E)));


extern volatile __bit TMR1CS1 __attribute__((address(0x7E6F)));


extern volatile __bit TMR1GE __attribute__((address(0x7D57)));


extern volatile __bit TMR1GIE __attribute__((address(0x7CEA)));


extern volatile __bit TMR1GIF __attribute__((address(0x7CF2)));


extern volatile __bit TMR1GIP __attribute__((address(0x7CFA)));


extern volatile __bit TMR1IE __attribute__((address(0x7CE8)));


extern volatile __bit TMR1IF __attribute__((address(0x7CF0)));


extern volatile __bit TMR1IP __attribute__((address(0x7CF8)));


extern volatile __bit TMR1MD __attribute__((address(0x7AC1)));


extern volatile __bit TMR1ON __attribute__((address(0x7E68)));


extern volatile __bit TMR2IE __attribute__((address(0x7CE9)));


extern volatile __bit TMR2IF __attribute__((address(0x7CF1)));


extern volatile __bit TMR2IP __attribute__((address(0x7CF9)));


extern volatile __bit TMR2MD __attribute__((address(0x7AC2)));


extern volatile __bit TMR2ON __attribute__((address(0x7E52)));


extern volatile __bit TMR3CS0 __attribute__((address(0x7D8E)));


extern volatile __bit TMR3CS1 __attribute__((address(0x7D8F)));


extern volatile __bit TMR3GE __attribute__((address(0x7D87)));


extern volatile __bit TMR3GIE __attribute__((address(0x7D00)));


extern volatile __bit TMR3GIF __attribute__((address(0x7D08)));


extern volatile __bit TMR3GIP __attribute__((address(0x7D10)));


extern volatile __bit TMR3IE __attribute__((address(0x7D01)));


extern volatile __bit TMR3IF __attribute__((address(0x7D09)));


extern volatile __bit TMR3IP __attribute__((address(0x7D11)));


extern volatile __bit TMR3MD __attribute__((address(0x7AC3)));


extern volatile __bit TMR3ON __attribute__((address(0x7D88)));


extern volatile __bit TMR4IE __attribute__((address(0x7DB7)));


extern volatile __bit TMR4IF __attribute__((address(0x7DBF)));


extern volatile __bit TMR4IP __attribute__((address(0x7DC7)));


extern volatile __bit TMR4MD __attribute__((address(0x7AC4)));


extern volatile __bit TMR4ON __attribute__((address(0x7C42)));


extern volatile __bit TO __attribute__((address(0x7E83)));


extern volatile __bit TRIGSEL0 __attribute__((address(0x7E0E)));


extern volatile __bit TRIGSEL1 __attribute__((address(0x7E0F)));


extern volatile __bit TRISA0 __attribute__((address(0x7C90)));


extern volatile __bit TRISA1 __attribute__((address(0x7C91)));


extern volatile __bit TRISA2 __attribute__((address(0x7C92)));


extern volatile __bit TRISA3 __attribute__((address(0x7C93)));


extern volatile __bit TRISA5 __attribute__((address(0x7C95)));


extern volatile __bit TRISA6 __attribute__((address(0x7C96)));


extern volatile __bit TRISA7 __attribute__((address(0x7C97)));


extern volatile __bit TRISB0 __attribute__((address(0x7C98)));


extern volatile __bit TRISB1 __attribute__((address(0x7C99)));


extern volatile __bit TRISB2 __attribute__((address(0x7C9A)));


extern volatile __bit TRISB3 __attribute__((address(0x7C9B)));


extern volatile __bit TRISB4 __attribute__((address(0x7C9C)));


extern volatile __bit TRISB5 __attribute__((address(0x7C9D)));


extern volatile __bit TRISB6 __attribute__((address(0x7C9E)));


extern volatile __bit TRISB7 __attribute__((address(0x7C9F)));


extern volatile __bit TRISC0 __attribute__((address(0x7CA0)));


extern volatile __bit TRISC1 __attribute__((address(0x7CA1)));


extern volatile __bit TRISC2 __attribute__((address(0x7CA2)));


extern volatile __bit TRISC3 __attribute__((address(0x7CA3)));


extern volatile __bit TRISC4 __attribute__((address(0x7CA4)));


extern volatile __bit TRISC5 __attribute__((address(0x7CA5)));


extern volatile __bit TRISC6 __attribute__((address(0x7CA6)));


extern volatile __bit TRISC7 __attribute__((address(0x7CA7)));


extern volatile __bit TRMT1 __attribute__((address(0x7D61)));


extern volatile __bit TRMT2 __attribute__((address(0x7DD1)));


extern volatile __bit TUN0 __attribute__((address(0x7CD8)));


extern volatile __bit TUN1 __attribute__((address(0x7CD9)));


extern volatile __bit TUN2 __attribute__((address(0x7CDA)));


extern volatile __bit TUN3 __attribute__((address(0x7CDB)));


extern volatile __bit TUN4 __attribute__((address(0x7CDC)));


extern volatile __bit TUN5 __attribute__((address(0x7CDD)));


extern volatile __bit TX0IE __attribute__((address(0x73FA)));


extern volatile __bit TX0IF __attribute__((address(0x7907)));


extern volatile __bit __attribute__((__deprecated__)) TX1IE __attribute__((address(0x7CEC)));


extern volatile __bit __attribute__((__deprecated__)) TX1IF __attribute__((address(0x7CF4)));


extern volatile __bit TX1IP __attribute__((address(0x7CFC)));


extern volatile __bit TX2EN __attribute__((address(0x7B86)));


extern volatile __bit __attribute__((__deprecated__)) TX2IE __attribute__((address(0x7D1C)));


extern volatile __bit __attribute__((__deprecated__)) TX2IF __attribute__((address(0x7D24)));


extern volatile __bit TX2IP __attribute__((address(0x7D2C)));


extern volatile __bit TX2SRC __attribute__((address(0x7B87)));


extern volatile __bit TX8_9 __attribute__((address(0x7D66)));


extern volatile __bit TX8_92 __attribute__((address(0x7DD6)));


extern volatile __bit TX91 __attribute__((address(0x7D66)));


extern volatile __bit TX92 __attribute__((address(0x7DD6)));


extern volatile __bit TX9D1 __attribute__((address(0x7D60)));


extern volatile __bit TX9D2 __attribute__((address(0x7DD0)));


extern volatile __bit TXB0ABT __attribute__((address(0x7906)));


extern volatile __bit TXB0D00 __attribute__((address(0x7930)));


extern volatile __bit TXB0D01 __attribute__((address(0x7931)));


extern volatile __bit TXB0D02 __attribute__((address(0x7932)));


extern volatile __bit TXB0D03 __attribute__((address(0x7933)));


extern volatile __bit TXB0D04 __attribute__((address(0x7934)));


extern volatile __bit TXB0D05 __attribute__((address(0x7935)));


extern volatile __bit TXB0D06 __attribute__((address(0x7936)));


extern volatile __bit TXB0D07 __attribute__((address(0x7937)));


extern volatile __bit TXB0D10 __attribute__((address(0x7938)));


extern volatile __bit TXB0D11 __attribute__((address(0x7939)));


extern volatile __bit TXB0D12 __attribute__((address(0x793A)));


extern volatile __bit TXB0D13 __attribute__((address(0x793B)));


extern volatile __bit TXB0D14 __attribute__((address(0x793C)));


extern volatile __bit TXB0D15 __attribute__((address(0x793D)));


extern volatile __bit TXB0D16 __attribute__((address(0x793E)));


extern volatile __bit TXB0D17 __attribute__((address(0x793F)));


extern volatile __bit TXB0D20 __attribute__((address(0x7940)));


extern volatile __bit TXB0D21 __attribute__((address(0x7941)));


extern volatile __bit TXB0D22 __attribute__((address(0x7942)));


extern volatile __bit TXB0D23 __attribute__((address(0x7943)));


extern volatile __bit TXB0D24 __attribute__((address(0x7944)));


extern volatile __bit TXB0D25 __attribute__((address(0x7945)));


extern volatile __bit TXB0D26 __attribute__((address(0x7946)));


extern volatile __bit TXB0D27 __attribute__((address(0x7947)));


extern volatile __bit TXB0D30 __attribute__((address(0x7948)));


extern volatile __bit TXB0D31 __attribute__((address(0x7949)));


extern volatile __bit TXB0D32 __attribute__((address(0x794A)));


extern volatile __bit TXB0D33 __attribute__((address(0x794B)));


extern volatile __bit TXB0D34 __attribute__((address(0x794C)));


extern volatile __bit TXB0D35 __attribute__((address(0x794D)));


extern volatile __bit TXB0D36 __attribute__((address(0x794E)));


extern volatile __bit TXB0D37 __attribute__((address(0x794F)));


extern volatile __bit TXB0D40 __attribute__((address(0x7950)));


extern volatile __bit TXB0D41 __attribute__((address(0x7951)));


extern volatile __bit TXB0D42 __attribute__((address(0x7952)));


extern volatile __bit TXB0D43 __attribute__((address(0x7953)));


extern volatile __bit TXB0D44 __attribute__((address(0x7954)));


extern volatile __bit TXB0D45 __attribute__((address(0x7955)));


extern volatile __bit TXB0D46 __attribute__((address(0x7956)));


extern volatile __bit TXB0D47 __attribute__((address(0x7957)));


extern volatile __bit TXB0D50 __attribute__((address(0x7958)));


extern volatile __bit TXB0D51 __attribute__((address(0x7959)));


extern volatile __bit TXB0D52 __attribute__((address(0x795A)));


extern volatile __bit TXB0D53 __attribute__((address(0x795B)));


extern volatile __bit TXB0D54 __attribute__((address(0x795C)));


extern volatile __bit TXB0D55 __attribute__((address(0x795D)));


extern volatile __bit TXB0D56 __attribute__((address(0x795E)));


extern volatile __bit TXB0D57 __attribute__((address(0x795F)));


extern volatile __bit TXB0D60 __attribute__((address(0x7960)));


extern volatile __bit TXB0D61 __attribute__((address(0x7961)));


extern volatile __bit TXB0D62 __attribute__((address(0x7962)));


extern volatile __bit TXB0D63 __attribute__((address(0x7963)));


extern volatile __bit TXB0D64 __attribute__((address(0x7964)));


extern volatile __bit TXB0D65 __attribute__((address(0x7965)));


extern volatile __bit TXB0D66 __attribute__((address(0x7966)));


extern volatile __bit TXB0D67 __attribute__((address(0x7967)));


extern volatile __bit TXB0D70 __attribute__((address(0x7968)));


extern volatile __bit TXB0D71 __attribute__((address(0x7969)));


extern volatile __bit TXB0D72 __attribute__((address(0x796A)));


extern volatile __bit TXB0D73 __attribute__((address(0x796B)));


extern volatile __bit TXB0D74 __attribute__((address(0x796C)));


extern volatile __bit TXB0D75 __attribute__((address(0x796D)));


extern volatile __bit TXB0D76 __attribute__((address(0x796E)));


extern volatile __bit TXB0D77 __attribute__((address(0x796F)));


extern volatile __bit TXB0DLC0 __attribute__((address(0x7928)));


extern volatile __bit TXB0DLC1 __attribute__((address(0x7929)));


extern volatile __bit TXB0DLC2 __attribute__((address(0x792A)));


extern volatile __bit TXB0DLC3 __attribute__((address(0x792B)));


extern volatile __bit TXB0EID0 __attribute__((address(0x7920)));


extern volatile __bit TXB0EID1 __attribute__((address(0x7921)));


extern volatile __bit TXB0EID10 __attribute__((address(0x791A)));


extern volatile __bit TXB0EID11 __attribute__((address(0x791B)));


extern volatile __bit TXB0EID12 __attribute__((address(0x791C)));


extern volatile __bit TXB0EID13 __attribute__((address(0x791D)));


extern volatile __bit TXB0EID14 __attribute__((address(0x791E)));


extern volatile __bit TXB0EID15 __attribute__((address(0x791F)));


extern volatile __bit TXB0EID16 __attribute__((address(0x7910)));


extern volatile __bit TXB0EID17 __attribute__((address(0x7911)));


extern volatile __bit TXB0EID2 __attribute__((address(0x7922)));


extern volatile __bit TXB0EID3 __attribute__((address(0x7923)));


extern volatile __bit TXB0EID4 __attribute__((address(0x7924)));


extern volatile __bit TXB0EID5 __attribute__((address(0x7925)));


extern volatile __bit TXB0EID6 __attribute__((address(0x7926)));


extern volatile __bit TXB0EID7 __attribute__((address(0x7927)));


extern volatile __bit TXB0EID8 __attribute__((address(0x7918)));


extern volatile __bit TXB0EID9 __attribute__((address(0x7919)));


extern volatile __bit TXB0ERR __attribute__((address(0x7904)));


extern volatile __bit TXB0EXIDE __attribute__((address(0x7913)));


extern volatile __bit TXB0IF __attribute__((address(0x7BBA)));


extern volatile __bit TXB0IP __attribute__((address(0x7BC2)));


extern volatile __bit TXB0LARB __attribute__((address(0x7905)));


extern volatile __bit TXB0PRI0 __attribute__((address(0x7900)));


extern volatile __bit TXB0PRI1 __attribute__((address(0x7901)));


extern volatile __bit TXB0REQ __attribute__((address(0x7903)));


extern volatile __bit TXB0RTR __attribute__((address(0x792E)));


extern volatile __bit TXB0SID0 __attribute__((address(0x7915)));


extern volatile __bit TXB0SID1 __attribute__((address(0x7916)));


extern volatile __bit TXB0SID10 __attribute__((address(0x790F)));


extern volatile __bit TXB0SID2 __attribute__((address(0x7917)));


extern volatile __bit TXB0SID3 __attribute__((address(0x7908)));


extern volatile __bit TXB0SID4 __attribute__((address(0x7909)));


extern volatile __bit TXB0SID5 __attribute__((address(0x790A)));


extern volatile __bit TXB0SID6 __attribute__((address(0x790B)));


extern volatile __bit TXB0SID7 __attribute__((address(0x790C)));


extern volatile __bit TXB0SID8 __attribute__((address(0x790D)));


extern volatile __bit TXB0SID9 __attribute__((address(0x790E)));


extern volatile __bit TXB1ABT __attribute__((address(0x7886)));


extern volatile __bit TXB1D00 __attribute__((address(0x78B0)));


extern volatile __bit TXB1D01 __attribute__((address(0x78B1)));


extern volatile __bit TXB1D02 __attribute__((address(0x78B2)));


extern volatile __bit TXB1D03 __attribute__((address(0x78B3)));


extern volatile __bit TXB1D04 __attribute__((address(0x78B4)));


extern volatile __bit TXB1D05 __attribute__((address(0x78B5)));


extern volatile __bit TXB1D06 __attribute__((address(0x78B6)));


extern volatile __bit TXB1D07 __attribute__((address(0x78B7)));


extern volatile __bit TXB1D10 __attribute__((address(0x78B8)));


extern volatile __bit TXB1D11 __attribute__((address(0x78B9)));


extern volatile __bit TXB1D12 __attribute__((address(0x78BA)));


extern volatile __bit TXB1D13 __attribute__((address(0x78BB)));


extern volatile __bit TXB1D14 __attribute__((address(0x78BC)));


extern volatile __bit TXB1D15 __attribute__((address(0x78BD)));


extern volatile __bit TXB1D16 __attribute__((address(0x78BE)));


extern volatile __bit TXB1D17 __attribute__((address(0x78BF)));


extern volatile __bit TXB1D20 __attribute__((address(0x78C0)));


extern volatile __bit TXB1D21 __attribute__((address(0x78C1)));


extern volatile __bit TXB1D22 __attribute__((address(0x78C2)));


extern volatile __bit TXB1D23 __attribute__((address(0x78C3)));


extern volatile __bit TXB1D24 __attribute__((address(0x78C4)));


extern volatile __bit TXB1D25 __attribute__((address(0x78C5)));


extern volatile __bit TXB1D26 __attribute__((address(0x78C6)));


extern volatile __bit TXB1D27 __attribute__((address(0x78C7)));


extern volatile __bit TXB1D30 __attribute__((address(0x78C8)));


extern volatile __bit TXB1D31 __attribute__((address(0x78C9)));


extern volatile __bit TXB1D32 __attribute__((address(0x78CA)));


extern volatile __bit TXB1D33 __attribute__((address(0x78CB)));


extern volatile __bit TXB1D34 __attribute__((address(0x78CC)));


extern volatile __bit TXB1D35 __attribute__((address(0x78CD)));


extern volatile __bit TXB1D36 __attribute__((address(0x78CE)));


extern volatile __bit TXB1D37 __attribute__((address(0x78CF)));


extern volatile __bit TXB1D40 __attribute__((address(0x78D0)));


extern volatile __bit TXB1D41 __attribute__((address(0x78D1)));


extern volatile __bit TXB1D42 __attribute__((address(0x78D2)));


extern volatile __bit TXB1D43 __attribute__((address(0x78D3)));


extern volatile __bit TXB1D44 __attribute__((address(0x78D4)));


extern volatile __bit TXB1D45 __attribute__((address(0x78D5)));


extern volatile __bit TXB1D46 __attribute__((address(0x78D6)));


extern volatile __bit TXB1D47 __attribute__((address(0x78D7)));


extern volatile __bit TXB1D50 __attribute__((address(0x78D8)));


extern volatile __bit TXB1D51 __attribute__((address(0x78D9)));


extern volatile __bit TXB1D52 __attribute__((address(0x78DA)));


extern volatile __bit TXB1D53 __attribute__((address(0x78DB)));


extern volatile __bit TXB1D54 __attribute__((address(0x78DC)));


extern volatile __bit TXB1D55 __attribute__((address(0x78DD)));


extern volatile __bit TXB1D56 __attribute__((address(0x78DE)));


extern volatile __bit TXB1D57 __attribute__((address(0x78DF)));


extern volatile __bit TXB1D60 __attribute__((address(0x78E0)));


extern volatile __bit TXB1D61 __attribute__((address(0x78E1)));


extern volatile __bit TXB1D62 __attribute__((address(0x78E2)));


extern volatile __bit TXB1D63 __attribute__((address(0x78E3)));


extern volatile __bit TXB1D64 __attribute__((address(0x78E4)));


extern volatile __bit TXB1D65 __attribute__((address(0x78E5)));


extern volatile __bit TXB1D66 __attribute__((address(0x78E6)));


extern volatile __bit TXB1D67 __attribute__((address(0x78E7)));


extern volatile __bit TXB1D70 __attribute__((address(0x78E8)));


extern volatile __bit TXB1D71 __attribute__((address(0x78E9)));


extern volatile __bit TXB1D72 __attribute__((address(0x78EA)));


extern volatile __bit TXB1D73 __attribute__((address(0x78EB)));


extern volatile __bit TXB1D74 __attribute__((address(0x78EC)));


extern volatile __bit TXB1D75 __attribute__((address(0x78ED)));


extern volatile __bit TXB1D76 __attribute__((address(0x78EE)));


extern volatile __bit TXB1D77 __attribute__((address(0x78EF)));


extern volatile __bit TXB1DLC0 __attribute__((address(0x78A8)));


extern volatile __bit TXB1DLC1 __attribute__((address(0x78A9)));


extern volatile __bit TXB1DLC2 __attribute__((address(0x78AA)));


extern volatile __bit TXB1DLC3 __attribute__((address(0x78AB)));


extern volatile __bit TXB1EID0 __attribute__((address(0x78A0)));


extern volatile __bit TXB1EID1 __attribute__((address(0x78A1)));


extern volatile __bit TXB1EID10 __attribute__((address(0x789A)));


extern volatile __bit TXB1EID11 __attribute__((address(0x789B)));


extern volatile __bit TXB1EID12 __attribute__((address(0x789C)));


extern volatile __bit TXB1EID13 __attribute__((address(0x789D)));


extern volatile __bit TXB1EID14 __attribute__((address(0x789E)));


extern volatile __bit TXB1EID15 __attribute__((address(0x789F)));


extern volatile __bit TXB1EID16 __attribute__((address(0x7890)));


extern volatile __bit TXB1EID17 __attribute__((address(0x7891)));


extern volatile __bit TXB1EID2 __attribute__((address(0x78A2)));


extern volatile __bit TXB1EID3 __attribute__((address(0x78A3)));


extern volatile __bit TXB1EID4 __attribute__((address(0x78A4)));


extern volatile __bit TXB1EID5 __attribute__((address(0x78A5)));


extern volatile __bit TXB1EID6 __attribute__((address(0x78A6)));


extern volatile __bit TXB1EID7 __attribute__((address(0x78A7)));


extern volatile __bit TXB1EID8 __attribute__((address(0x7898)));


extern volatile __bit TXB1EID9 __attribute__((address(0x7899)));


extern volatile __bit TXB1ERR __attribute__((address(0x7884)));


extern volatile __bit TXB1EXIDE __attribute__((address(0x7893)));


extern volatile __bit TXB1IF __attribute__((address(0x7BBB)));


extern volatile __bit TXB1IP __attribute__((address(0x7BC3)));


extern volatile __bit TXB1LARB __attribute__((address(0x7885)));


extern volatile __bit TXB1PRI0 __attribute__((address(0x7880)));


extern volatile __bit TXB1PRI1 __attribute__((address(0x7881)));


extern volatile __bit TXB1REQ __attribute__((address(0x7883)));


extern volatile __bit TXB1RTR __attribute__((address(0x78AE)));


extern volatile __bit TXB1SID0 __attribute__((address(0x7895)));


extern volatile __bit TXB1SID1 __attribute__((address(0x7896)));


extern volatile __bit TXB1SID10 __attribute__((address(0x788F)));


extern volatile __bit TXB1SID2 __attribute__((address(0x7897)));


extern volatile __bit TXB1SID3 __attribute__((address(0x7888)));


extern volatile __bit TXB1SID4 __attribute__((address(0x7889)));


extern volatile __bit TXB1SID5 __attribute__((address(0x788A)));


extern volatile __bit TXB1SID6 __attribute__((address(0x788B)));


extern volatile __bit TXB1SID7 __attribute__((address(0x788C)));


extern volatile __bit TXB1SID8 __attribute__((address(0x788D)));


extern volatile __bit TXB1SID9 __attribute__((address(0x788E)));


extern volatile __bit TXB2ABT __attribute__((address(0x7806)));


extern volatile __bit TXB2D00 __attribute__((address(0x7830)));


extern volatile __bit TXB2D01 __attribute__((address(0x7831)));


extern volatile __bit TXB2D02 __attribute__((address(0x7832)));


extern volatile __bit TXB2D03 __attribute__((address(0x7833)));


extern volatile __bit TXB2D04 __attribute__((address(0x7834)));


extern volatile __bit TXB2D05 __attribute__((address(0x7835)));


extern volatile __bit TXB2D06 __attribute__((address(0x7836)));


extern volatile __bit TXB2D07 __attribute__((address(0x7837)));


extern volatile __bit TXB2D10 __attribute__((address(0x7838)));


extern volatile __bit TXB2D11 __attribute__((address(0x7839)));


extern volatile __bit TXB2D12 __attribute__((address(0x783A)));


extern volatile __bit TXB2D13 __attribute__((address(0x783B)));


extern volatile __bit TXB2D14 __attribute__((address(0x783C)));


extern volatile __bit TXB2D15 __attribute__((address(0x783D)));


extern volatile __bit TXB2D16 __attribute__((address(0x783E)));


extern volatile __bit TXB2D17 __attribute__((address(0x783F)));


extern volatile __bit TXB2D20 __attribute__((address(0x7840)));


extern volatile __bit TXB2D21 __attribute__((address(0x7841)));


extern volatile __bit TXB2D22 __attribute__((address(0x7842)));


extern volatile __bit TXB2D23 __attribute__((address(0x7843)));


extern volatile __bit TXB2D24 __attribute__((address(0x7844)));


extern volatile __bit TXB2D25 __attribute__((address(0x7845)));


extern volatile __bit TXB2D26 __attribute__((address(0x7846)));


extern volatile __bit TXB2D27 __attribute__((address(0x7847)));


extern volatile __bit TXB2D30 __attribute__((address(0x7848)));


extern volatile __bit TXB2D31 __attribute__((address(0x7849)));


extern volatile __bit TXB2D32 __attribute__((address(0x784A)));


extern volatile __bit TXB2D33 __attribute__((address(0x784B)));


extern volatile __bit TXB2D34 __attribute__((address(0x784C)));


extern volatile __bit TXB2D35 __attribute__((address(0x784D)));


extern volatile __bit TXB2D36 __attribute__((address(0x784E)));


extern volatile __bit TXB2D37 __attribute__((address(0x784F)));


extern volatile __bit TXB2D40 __attribute__((address(0x7850)));


extern volatile __bit TXB2D41 __attribute__((address(0x7851)));


extern volatile __bit TXB2D42 __attribute__((address(0x7852)));


extern volatile __bit TXB2D43 __attribute__((address(0x7853)));


extern volatile __bit TXB2D44 __attribute__((address(0x7854)));


extern volatile __bit TXB2D45 __attribute__((address(0x7855)));


extern volatile __bit TXB2D46 __attribute__((address(0x7856)));


extern volatile __bit TXB2D47 __attribute__((address(0x7857)));


extern volatile __bit TXB2D50 __attribute__((address(0x7858)));


extern volatile __bit TXB2D51 __attribute__((address(0x7859)));


extern volatile __bit TXB2D52 __attribute__((address(0x785A)));


extern volatile __bit TXB2D53 __attribute__((address(0x785B)));


extern volatile __bit TXB2D54 __attribute__((address(0x785C)));


extern volatile __bit TXB2D55 __attribute__((address(0x785D)));


extern volatile __bit TXB2D56 __attribute__((address(0x785E)));


extern volatile __bit TXB2D57 __attribute__((address(0x785F)));


extern volatile __bit TXB2D60 __attribute__((address(0x7860)));


extern volatile __bit TXB2D61 __attribute__((address(0x7861)));


extern volatile __bit TXB2D62 __attribute__((address(0x7862)));


extern volatile __bit TXB2D63 __attribute__((address(0x7863)));


extern volatile __bit TXB2D64 __attribute__((address(0x7864)));


extern volatile __bit TXB2D65 __attribute__((address(0x7865)));


extern volatile __bit TXB2D66 __attribute__((address(0x7866)));


extern volatile __bit TXB2D67 __attribute__((address(0x7867)));


extern volatile __bit TXB2D70 __attribute__((address(0x7868)));


extern volatile __bit TXB2D71 __attribute__((address(0x7869)));


extern volatile __bit TXB2D72 __attribute__((address(0x786A)));


extern volatile __bit TXB2D73 __attribute__((address(0x786B)));


extern volatile __bit TXB2D74 __attribute__((address(0x786C)));


extern volatile __bit TXB2D75 __attribute__((address(0x786D)));


extern volatile __bit TXB2D76 __attribute__((address(0x786E)));


extern volatile __bit TXB2D77 __attribute__((address(0x786F)));


extern volatile __bit TXB2DLC0 __attribute__((address(0x7828)));


extern volatile __bit TXB2DLC1 __attribute__((address(0x7829)));


extern volatile __bit TXB2DLC2 __attribute__((address(0x782A)));


extern volatile __bit TXB2DLC3 __attribute__((address(0x782B)));


extern volatile __bit TXB2EID0 __attribute__((address(0x7820)));


extern volatile __bit TXB2EID1 __attribute__((address(0x7821)));


extern volatile __bit TXB2EID10 __attribute__((address(0x781A)));


extern volatile __bit TXB2EID11 __attribute__((address(0x781B)));


extern volatile __bit TXB2EID12 __attribute__((address(0x781C)));


extern volatile __bit TXB2EID13 __attribute__((address(0x781D)));


extern volatile __bit TXB2EID14 __attribute__((address(0x781E)));


extern volatile __bit TXB2EID15 __attribute__((address(0x781F)));


extern volatile __bit TXB2EID16 __attribute__((address(0x7810)));


extern volatile __bit TXB2EID17 __attribute__((address(0x7811)));


extern volatile __bit TXB2EID2 __attribute__((address(0x7822)));


extern volatile __bit TXB2EID3 __attribute__((address(0x7823)));


extern volatile __bit TXB2EID4 __attribute__((address(0x7824)));


extern volatile __bit TXB2EID5 __attribute__((address(0x7825)));


extern volatile __bit TXB2EID6 __attribute__((address(0x7826)));


extern volatile __bit TXB2EID7 __attribute__((address(0x7827)));


extern volatile __bit TXB2EID8 __attribute__((address(0x7818)));


extern volatile __bit TXB2EID9 __attribute__((address(0x7819)));


extern volatile __bit TXB2ERR __attribute__((address(0x7804)));


extern volatile __bit TXB2EXIDE __attribute__((address(0x7813)));


extern volatile __bit TXB2IF __attribute__((address(0x7BBC)));


extern volatile __bit TXB2IP __attribute__((address(0x7BC4)));


extern volatile __bit TXB2LARB __attribute__((address(0x7805)));


extern volatile __bit TXB2PRI0 __attribute__((address(0x7800)));


extern volatile __bit TXB2PRI1 __attribute__((address(0x7801)));


extern volatile __bit TXB2REQ __attribute__((address(0x7803)));


extern volatile __bit TXB2RTR __attribute__((address(0x782E)));


extern volatile __bit TXB2SID0 __attribute__((address(0x7815)));


extern volatile __bit TXB2SID1 __attribute__((address(0x7816)));


extern volatile __bit TXB2SID10 __attribute__((address(0x780F)));


extern volatile __bit TXB2SID2 __attribute__((address(0x7817)));


extern volatile __bit TXB2SID3 __attribute__((address(0x7808)));


extern volatile __bit TXB2SID4 __attribute__((address(0x7809)));


extern volatile __bit TXB2SID5 __attribute__((address(0x780A)));


extern volatile __bit TXB2SID6 __attribute__((address(0x780B)));


extern volatile __bit TXB2SID7 __attribute__((address(0x780C)));


extern volatile __bit TXB2SID8 __attribute__((address(0x780D)));


extern volatile __bit TXB2SID9 __attribute__((address(0x780E)));


extern volatile __bit TXBNIE __attribute__((address(0x7D1C)));


extern volatile __bit TXBNIF __attribute__((address(0x7D24)));


extern volatile __bit TXBNIP __attribute__((address(0x7D2C)));


extern volatile __bit TXBO __attribute__((address(0x7B8D)));


extern volatile __bit TXBP __attribute__((address(0x7B8C)));


extern volatile __bit TXBnIE __attribute__((address(0x7BB4)));


extern volatile __bit TXBnIF __attribute__((address(0x7BBC)));


extern volatile __bit TXBnIP __attribute__((address(0x7BC4)));


extern volatile __bit TXCKP1 __attribute__((address(0x7D3C)));


extern volatile __bit TXCKP2 __attribute__((address(0x7DCC)));


extern volatile __bit TXD8 __attribute__((address(0x7D60)));


extern volatile __bit TXD82 __attribute__((address(0x7DD0)));


extern volatile __bit TXEN1 __attribute__((address(0x7D65)));


extern volatile __bit TXEN2 __attribute__((address(0x7DD5)));


extern volatile __bit TXIE __attribute__((address(0x7CEC)));


extern volatile __bit TXIF __attribute__((address(0x7CF4)));


extern volatile __bit TXIP __attribute__((address(0x7CFC)));


extern volatile __bit TXWARN __attribute__((address(0x7B8A)));


extern volatile __bit U1OD __attribute__((address(0x7C88)));


extern volatile __bit U2OD __attribute__((address(0x7C89)));


extern volatile __bit UA __attribute__((address(0x7E39)));


extern volatile __bit UART1MD __attribute__((address(0x7AC9)));


extern volatile __bit UART2MD __attribute__((address(0x7ACA)));


extern volatile __bit ULPEN __attribute__((address(0x7E8A)));


extern volatile __bit ULPLVL __attribute__((address(0x7E8D)));


extern volatile __bit ULPSINK __attribute__((address(0x7E89)));


extern volatile __bit ULPWUIN __attribute__((address(0x7C00)));


extern volatile __bit VCFG0 __attribute__((address(0x7E0C)));


extern volatile __bit VCFG01 __attribute__((address(0x7E0C)));


extern volatile __bit VCFG1 __attribute__((address(0x7E0D)));


extern volatile __bit VCFG11 __attribute__((address(0x7E0D)));


extern volatile __bit VDIRMAG __attribute__((address(0x7D47)));


extern volatile __bit VNCFG __attribute__((address(0x7E0B)));


extern volatile __bit WAIT0 __attribute__((address(0x7E5C)));


extern volatile __bit WAIT1 __attribute__((address(0x7E5D)));


extern volatile __bit WAKDIS __attribute__((address(0x722F)));


extern volatile __bit WAKFIL __attribute__((address(0x722E)));


extern volatile __bit WAKIE __attribute__((address(0x7BB6)));


extern volatile __bit WAKIF __attribute__((address(0x7BBE)));


extern volatile __bit WAKIP __attribute__((address(0x7BC6)));


extern volatile __bit WCOL __attribute__((address(0x7E37)));


extern volatile __bit WM0 __attribute__((address(0x7E58)));


extern volatile __bit WM1 __attribute__((address(0x7E59)));


extern volatile __bit WPUB0 __attribute__((address(0x7AD8)));


extern volatile __bit WPUB1 __attribute__((address(0x7AD9)));


extern volatile __bit WPUB2 __attribute__((address(0x7ADA)));


extern volatile __bit WPUB3 __attribute__((address(0x7ADB)));


extern volatile __bit WPUB4 __attribute__((address(0x7ADC)));


extern volatile __bit WPUB5 __attribute__((address(0x7ADD)));


extern volatile __bit WPUB6 __attribute__((address(0x7ADE)));


extern volatile __bit WPUB7 __attribute__((address(0x7ADF)));


extern volatile __bit WR __attribute__((address(0x7BF9)));


extern volatile __bit WREN __attribute__((address(0x7BFA)));


extern volatile __bit WRERR __attribute__((address(0x7BFB)));


extern volatile __bit WUE1 __attribute__((address(0x7D39)));


extern volatile __bit WUE2 __attribute__((address(0x7DC9)));


extern volatile __bit ZERO __attribute__((address(0x7EC2)));


extern volatile __bit nA __attribute__((address(0x7E3D)));


extern volatile __bit nADDRESS __attribute__((address(0x7E3D)));


extern volatile __bit nBOR __attribute__((address(0x7E80)));


extern volatile __bit nCM __attribute__((address(0x7E85)));


extern volatile __bit nDONE __attribute__((address(0x7E11)));


extern volatile __bit nFIFOEMPTY __attribute__((address(0x7B8F)));


extern volatile __bit nPD __attribute__((address(0x7E82)));


extern volatile __bit nPOR __attribute__((address(0x7E81)));


extern volatile __bit nRBPU __attribute__((address(0x7F8F)));


extern volatile __bit nRC8 __attribute__((address(0x7D5E)));


extern volatile __bit nRI __attribute__((address(0x7E84)));


extern volatile __bit nT1DONE __attribute__((address(0x7D53)));


extern volatile __bit nT1SYNC __attribute__((address(0x7E6A)));


extern volatile __bit nT3DONE __attribute__((address(0x7D83)));


extern volatile __bit nT3SYNC __attribute__((address(0x7D8A)));


extern volatile __bit nTO __attribute__((address(0x7E83)));


extern volatile __bit nTX8 __attribute__((address(0x7D66)));


extern volatile __bit nW __attribute__((address(0x7E3A)));


extern volatile __bit nWRITE __attribute__((address(0x7E3A)));
# 155 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include/pic18_chip_select.h" 2 3
# 6 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include/pic18.h" 2 3
# 15 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include/pic18.h" 3
__attribute__((__unsupported__("The " "flash_write" " routine is no longer supported. Please use the MPLAB X MCC."))) void flash_write(const unsigned char *, unsigned int, __far unsigned char *);
__attribute__((__unsupported__("The " "EraseFlash" " routine is no longer supported. Please use the MPLAB X MCC."))) void EraseFlash(unsigned long startaddr, unsigned long endaddr);






# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/errata.h" 1 3
# 24 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include/pic18.h" 2 3
# 139 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include/pic18.h" 3
__attribute__((__unsupported__("The " "Read_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) unsigned char Read_b_eep(unsigned int badd);
__attribute__((__unsupported__("The " "Busy_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Busy_eep(void);
__attribute__((__unsupported__("The " "Write_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Write_b_eep(unsigned int badd, unsigned char bdat);
# 175 "C:/Users/moua/.mchp_packs/Microchip/PIC18F-K_DFP/1.15.303/xc8\\pic\\include/pic18.h" 3
unsigned char __t1rd16on(void);
unsigned char __t3rd16on(void);
# 34 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/xc.h" 2 3
# 40 "./mcc_generated_files/system/system.h" 2

# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdbool.h" 1 3
# 42 "./mcc_generated_files/system/system.h" 2
# 1 "./mcc_generated_files/system/config_bits.h" 1
# 39 "./mcc_generated_files/system/config_bits.h"
# 1 "./mcc_generated_files/system/../system/clock.h" 1
# 56 "./mcc_generated_files/system/../system/clock.h"
void CLOCK_Initialize(void);
# 40 "./mcc_generated_files/system/config_bits.h" 2
# 43 "./mcc_generated_files/system/system.h" 2
# 1 "./mcc_generated_files/system/../system/pins.h" 1
# 358 "./mcc_generated_files/system/../system/pins.h"
void PIN_MANAGER_Initialize (void);







void PIN_MANAGER_IOC(void);
# 44 "./mcc_generated_files/system/system.h" 2
# 1 "./mcc_generated_files/system/../uart/eusart1.h" 1
# 45 "./mcc_generated_files/system/../uart/eusart1.h"
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdio.h" 1 3
# 24 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdio.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 1 3
# 12 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef void * va_list[1];




typedef void * __isoc_va_list[1];
# 143 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef __int24 ssize_t;
# 255 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef long long off_t;
# 409 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef struct _IO_FILE FILE;
# 25 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdio.h" 2 3
# 52 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdio.h" 3
typedef union _G_fpos64_t {
 char __opaque[16];
 double __align;
} fpos_t;

extern FILE *const stdin;
extern FILE *const stdout;
extern FILE *const stderr;





FILE *fopen(const char *restrict, const char *restrict);
FILE *freopen(const char *restrict, const char *restrict, FILE *restrict);
int fclose(FILE *);

int remove(const char *);
int rename(const char *, const char *);

int feof(FILE *);
int ferror(FILE *);
int fflush(FILE *);
void clearerr(FILE *);

int fseek(FILE *, long, int);
long ftell(FILE *);
void rewind(FILE *);

int fgetpos(FILE *restrict, fpos_t *restrict);
int fsetpos(FILE *, const fpos_t *);

size_t fread(void *restrict, size_t, size_t, FILE *restrict);
size_t fwrite(const void *restrict, size_t, size_t, FILE *restrict);

int fgetc(FILE *);
int getc(FILE *);
int getchar(void);





int ungetc(int, FILE *);
int getch(void);

int fputc(int, FILE *);
int putc(int, FILE *);
int putchar(int);





void putch(char);

char *fgets(char *restrict, int, FILE *restrict);

char *gets(char *);


int fputs(const char *restrict, FILE *restrict);
int puts(const char *);

__attribute__((__format__(__printf__, 1, 2)))
int printf(const char *restrict, ...);
__attribute__((__format__(__printf__, 2, 3)))
int fprintf(FILE *restrict, const char *restrict, ...);
__attribute__((__format__(__printf__, 2, 3)))
int sprintf(char *restrict, const char *restrict, ...);
__attribute__((__format__(__printf__, 3, 4)))
int snprintf(char *restrict, size_t, const char *restrict, ...);

__attribute__((__format__(__printf__, 1, 0)))
int vprintf(const char *restrict, __isoc_va_list);
int vfprintf(FILE *restrict, const char *restrict, __isoc_va_list);
__attribute__((__format__(__printf__, 2, 0)))
int vsprintf(char *restrict, const char *restrict, __isoc_va_list);
__attribute__((__format__(__printf__, 3, 0)))
int vsnprintf(char *restrict, size_t, const char *restrict, __isoc_va_list);

__attribute__((__format__(__scanf__, 1, 2)))
int scanf(const char *restrict, ...);
__attribute__((__format__(__scanf__, 2, 3)))
int fscanf(FILE *restrict, const char *restrict, ...);
__attribute__((__format__(__scanf__, 2, 3)))
int sscanf(const char *restrict, const char *restrict, ...);

__attribute__((__format__(__scanf__, 1, 0)))
int vscanf(const char *restrict, __isoc_va_list);
int vfscanf(FILE *restrict, const char *restrict, __isoc_va_list);
__attribute__((__format__(__scanf__, 2, 0)))
int vsscanf(const char *restrict, const char *restrict, __isoc_va_list);

void perror(const char *);

int setvbuf(FILE *restrict, char *restrict, int, size_t);
void setbuf(FILE *restrict, char *restrict);

char *tmpnam(char *);
FILE *tmpfile(void);




FILE *fmemopen(void *restrict, size_t, const char *restrict);
FILE *open_memstream(char **, size_t *);
FILE *fdopen(int, const char *);
FILE *popen(const char *, const char *);
int pclose(FILE *);
int fileno(FILE *);
int fseeko(FILE *, off_t, int);
off_t ftello(FILE *);
int dprintf(int, const char *restrict, ...);
int vdprintf(int, const char *restrict, __isoc_va_list);
void flockfile(FILE *);
int ftrylockfile(FILE *);
void funlockfile(FILE *);
int getc_unlocked(FILE *);
int getchar_unlocked(void);
int putc_unlocked(int, FILE *);
int putchar_unlocked(int);
ssize_t getdelim(char **restrict, size_t *restrict, int, FILE *restrict);
ssize_t getline(char **restrict, size_t *restrict, FILE *restrict);
int renameat(int, const char *, int, const char *);
char *ctermid(char *);







char *tempnam(const char *, const char *);
# 46 "./mcc_generated_files/system/../uart/eusart1.h" 2
# 1 "./mcc_generated_files/system/system.h" 1
# 47 "./mcc_generated_files/system/../uart/eusart1.h" 2
# 1 "./mcc_generated_files/system/../uart/uart_drv_interface.h" 1
# 41 "./mcc_generated_files/system/../uart/uart_drv_interface.h"
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stddef.h" 1 3
# 19 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stddef.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 1 3
# 138 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef int ptrdiff_t;
# 20 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stddef.h" 2 3
# 42 "./mcc_generated_files/system/../uart/uart_drv_interface.h" 2
# 1 "./mcc_generated_files/system/../uart/uart_types.h" 1
# 57 "./mcc_generated_files/system/../uart/uart_types.h"
enum UART_STANDARD_BAUDS{
UART_110 = 0,
UART_300 = 1,
UART_600 = 2,
UART_1200 = 3,
UART_2400 = 4,
UART_4800 = 5,
UART_9600 = 6,
UART_14400 = 7,
UART_19200 = 8,
UART_38400 = 9,
UART_57600 = 10,
UART_115200 = 11,
UART_230400 = 12,
UART_460800 = 13,
UART_921600 = 14,
};
# 43 "./mcc_generated_files/system/../uart/uart_drv_interface.h" 2
# 58 "./mcc_generated_files/system/../uart/uart_drv_interface.h"
typedef struct {
void (*Initialize)(void);
void (*Deinitialize)(void);
uint8_t (*Read)(void);
void (*Write)(uint8_t);
_Bool (*IsRxReady)(void);
_Bool (*IsTxReady)(void);
_Bool (*IsTxDone)(void);
void (*TransmitEnable)(void);
void (*TransmitDisable)(void);
void (*AutoBaudSet)(_Bool enable);
_Bool (*AutoBaudQuery)(void);
_Bool (*AutoBaudEventEnableGet)(void);
void (*BRGCountSet)(uint32_t brgValue);
uint32_t (*BRGCountGet)(void);
void (*BaudRateSet)(uint32_t baudRate);
uint32_t (*BaudRateGet)(void);
size_t (*ErrorGet)(void);
void (*TxCompleteCallbackRegister)(void (*CallbackHandler) (void));
void (*RxCompleteCallbackRegister)(void (*CallbackHandler) (void));
void (*TxCollisionCallbackRegister)(void (*CallbackHandler) (void));
void (*FramingErrorCallbackRegister)(void (*CallbackHandler) (void));
void (*OverrunErrorCallbackRegister)(void (*CallbackHandler) (void));
void (*ParityErrorCallbackRegister)(void (*CallbackHandler) (void));
void (*EventCallbackRegister)(void (*CallbackHandler) (void));
}uart_drv_interface_t;
# 48 "./mcc_generated_files/system/../uart/eusart1.h" 2
# 92 "./mcc_generated_files/system/../uart/eusart1.h"
typedef union {
    struct {
        uint8_t perr : 1;
        uint8_t ferr : 1;
        uint8_t oerr : 1;
        uint8_t reserved : 5;
    };
    size_t status;
}eusart1_status_t;
# 110 "./mcc_generated_files/system/../uart/eusart1.h"
extern const uart_drv_interface_t UART1;
# 119 "./mcc_generated_files/system/../uart/eusart1.h"
void EUSART1_Initialize(void);







void EUSART1_Deinitialize(void);







void EUSART1_Enable(void);







void EUSART1_Disable(void);
# 152 "./mcc_generated_files/system/../uart/eusart1.h"
void EUSART1_TransmitEnable(void);







void EUSART1_TransmitDisable(void);
# 169 "./mcc_generated_files/system/../uart/eusart1.h"
void EUSART1_ReceiveEnable(void);







void EUSART1_ReceiveDisable(void);
# 186 "./mcc_generated_files/system/../uart/eusart1.h"
void EUSART1_SendBreakControlEnable(void);







void EUSART1_SendBreakControlDisable(void);







void EUSART1_AutoBaudSet(_Bool enable);







_Bool EUSART1_AutoBaudQuery(void);







_Bool EUSART1_IsAutoBaudDetectOverflow(void);







void EUSART1_AutoBaudDetectOverflowReset(void);
# 235 "./mcc_generated_files/system/../uart/eusart1.h"
_Bool EUSART1_IsRxReady(void);
# 244 "./mcc_generated_files/system/../uart/eusart1.h"
_Bool EUSART1_IsTxReady(void);
# 253 "./mcc_generated_files/system/../uart/eusart1.h"
_Bool EUSART1_IsTxDone(void);







size_t EUSART1_ErrorGet(void);
# 271 "./mcc_generated_files/system/../uart/eusart1.h"
uint8_t EUSART1_Read(void);
# 281 "./mcc_generated_files/system/../uart/eusart1.h"
void EUSART1_Write(uint8_t txData);







void EUSART1_FramingErrorCallbackRegister(void (* callbackHandler)(void));







void EUSART1_OverrunErrorCallbackRegister(void (* callbackHandler)(void));







int getch(void);







void putch(char txData);
# 45 "./mcc_generated_files/system/system.h" 2
# 1 "./mcc_generated_files/system/../i2c_host/mssp.h" 1
# 45 "./mcc_generated_files/system/../i2c_host/mssp.h"
# 1 "./mcc_generated_files/system/../i2c_host/i2c_host_event_types.h" 1
# 39 "./mcc_generated_files/system/../i2c_host/i2c_host_event_types.h"
# 1 "./mcc_generated_files/system/../i2c_host/i2c_host_types.h" 1
# 44 "./mcc_generated_files/system/../i2c_host/i2c_host_types.h"
typedef enum
{
    I2C_ERROR_NONE,
    I2C_ERROR_ADDR_NACK,
    I2C_ERROR_DATA_NACK,
    I2C_ERROR_BUS_COLLISION,
} i2c_host_error_t;
# 62 "./mcc_generated_files/system/../i2c_host/i2c_host_types.h"
typedef struct i2c_transfer_setup
{
  uint32_t clkSpeed;
} i2c_host_transfer_setup_t;
# 40 "./mcc_generated_files/system/../i2c_host/i2c_host_event_types.h" 2








typedef enum
{
    I2C_STATE_IDLE = 0,
    I2C_STATE_SEND_RD_ADDR,
    I2C_STATE_SEND_WR_ADDR,
    I2C_STATE_TX,
    I2C_STATE_RX,
    I2C_STATE_NACK,
    I2C_STATE_ERROR,
    I2C_STATE_STOP,
    I2C_STATE_RESET
} i2c_host_event_states_t;






typedef struct
{
    _Bool busy;
    uint16_t address;
    uint8_t *writePtr;
    size_t writeLength;
    uint8_t *readPtr;
    size_t readLength;
    _Bool switchToRead;
    i2c_host_error_t errorState;
    i2c_host_event_states_t state;
} i2c_host_event_status_t;

typedef i2c_host_event_states_t (*i2c1eventHandler)(void);

extern volatile i2c_host_event_status_t i2c1Status;
extern const i2c1eventHandler i2c1_eventTable[(9)];
# 46 "./mcc_generated_files/system/../i2c_host/mssp.h" 2
# 1 "./mcc_generated_files/system/../i2c_host/i2c_host_interface.h" 1
# 51 "./mcc_generated_files/system/../i2c_host/i2c_host_interface.h"
typedef struct
{
    void (*Initialize)(void);
    void (*Deinitialize)(void);
    _Bool (*Write)(uint16_t address, uint8_t *data, size_t dataLength);
    _Bool (*Read)(uint16_t address, uint8_t *data, size_t dataLength);
    _Bool (*WriteRead)(uint16_t address, uint8_t *writeData, size_t writeLength, uint8_t *readData, size_t readLength);
    _Bool (*TransferSetup)(struct i2c_transfer_setup* setup, uint32_t srcClkFreq);
    i2c_host_error_t (*ErrorGet)(void);
    _Bool (*IsBusy)(void);
    void (*CallbackRegister)(void (*callback)(void));
    void (*Tasks)(void);
}i2c_host_interface_t;
# 47 "./mcc_generated_files/system/../i2c_host/mssp.h" 2
# 69 "./mcc_generated_files/system/../i2c_host/mssp.h"
extern const i2c_host_interface_t I2C1_Host;
# 78 "./mcc_generated_files/system/../i2c_host/mssp.h"
void I2C1_Initialize(void);
# 87 "./mcc_generated_files/system/../i2c_host/mssp.h"
void I2C1_Deinitialize(void);
# 118 "./mcc_generated_files/system/../i2c_host/mssp.h"
_Bool I2C1_Write(uint16_t address, uint8_t *data, size_t dataLength);
# 149 "./mcc_generated_files/system/../i2c_host/mssp.h"
_Bool I2C1_Read(uint16_t address, uint8_t *data, size_t dataLength);
# 184 "./mcc_generated_files/system/../i2c_host/mssp.h"
_Bool I2C1_WriteRead(uint16_t address, uint8_t *writeData, size_t writeLength, uint8_t *readData, size_t readLength);
# 195 "./mcc_generated_files/system/../i2c_host/mssp.h"
i2c_host_error_t I2C1_ErrorGet(void);
# 206 "./mcc_generated_files/system/../i2c_host/mssp.h"
_Bool I2C1_IsBusy(void);
# 233 "./mcc_generated_files/system/../i2c_host/mssp.h"
void I2C1_CallbackRegister(void (*callbackHandler)(void));







void I2C1_Tasks(void);
# 46 "./mcc_generated_files/system/system.h" 2
# 1 "./mcc_generated_files/system/../system/interrupt.h" 1
# 85 "./mcc_generated_files/system/../system/interrupt.h"
void INTERRUPT_Initialize (void);
# 259 "./mcc_generated_files/system/../system/interrupt.h"
void INT0_ISR(void);
# 268 "./mcc_generated_files/system/../system/interrupt.h"
void INT0_CallBack(void);
# 277 "./mcc_generated_files/system/../system/interrupt.h"
void INT0_SetInterruptHandler(void (* InterruptHandler)(void));
# 286 "./mcc_generated_files/system/../system/interrupt.h"
extern void (*INT0_InterruptHandler)(void);
# 295 "./mcc_generated_files/system/../system/interrupt.h"
void INT0_DefaultInterruptHandler(void);
# 304 "./mcc_generated_files/system/../system/interrupt.h"
void INT1_ISR(void);
# 313 "./mcc_generated_files/system/../system/interrupt.h"
void INT1_CallBack(void);
# 322 "./mcc_generated_files/system/../system/interrupt.h"
void INT1_SetInterruptHandler(void (* InterruptHandler)(void));
# 331 "./mcc_generated_files/system/../system/interrupt.h"
extern void (*INT1_InterruptHandler)(void);
# 340 "./mcc_generated_files/system/../system/interrupt.h"
void INT1_DefaultInterruptHandler(void);
# 349 "./mcc_generated_files/system/../system/interrupt.h"
void INT2_ISR(void);
# 358 "./mcc_generated_files/system/../system/interrupt.h"
void INT2_CallBack(void);
# 367 "./mcc_generated_files/system/../system/interrupt.h"
void INT2_SetInterruptHandler(void (* InterruptHandler)(void));
# 376 "./mcc_generated_files/system/../system/interrupt.h"
extern void (*INT2_InterruptHandler)(void);
# 385 "./mcc_generated_files/system/../system/interrupt.h"
void INT2_DefaultInterruptHandler(void);
# 394 "./mcc_generated_files/system/../system/interrupt.h"
void INT3_ISR(void);
# 403 "./mcc_generated_files/system/../system/interrupt.h"
void INT3_CallBack(void);
# 412 "./mcc_generated_files/system/../system/interrupt.h"
void INT3_SetInterruptHandler(void (* InterruptHandler)(void));
# 421 "./mcc_generated_files/system/../system/interrupt.h"
extern void (*INT3_InterruptHandler)(void);
# 430 "./mcc_generated_files/system/../system/interrupt.h"
void INT3_DefaultInterruptHandler(void);
# 47 "./mcc_generated_files/system/system.h" 2

# 1 "./mcc_generated_files/system/../timer/tmr0.h" 1
# 40 "./mcc_generated_files/system/../timer/tmr0.h"
# 1 "./mcc_generated_files/system/../timer/timer_interface.h" 1
# 63 "./mcc_generated_files/system/../timer/timer_interface.h"
struct TIMER_INTERFACE
{
    void (*Initialize)(void);


    void (*Deinitialize)(void);


    void (*Start)(void);


    void (*Stop)(void);







    void (*PeriodSet)(uint32_t count);


 uint32_t (*PeriodGet)(void);


    uint32_t (*CounterGet)(void);


    void (*CounterSet)(uint32_t count);


    uint32_t (*MaxCountGet)(void);







    void (*TimeoutCallbackRegister)(void (*CallbackHandler)(void));


    void (*Tasks)(void);

};
# 41 "./mcc_generated_files/system/../timer/tmr0.h" 2
# 157 "./mcc_generated_files/system/../timer/tmr0.h"
extern const struct TIMER_INTERFACE Timer0;
# 166 "./mcc_generated_files/system/../timer/tmr0.h"
void TMR0_Initialize(void);







void TMR0_Deinitialize(void);
# 183 "./mcc_generated_files/system/../timer/tmr0.h"
void TMR0_Start(void);
# 192 "./mcc_generated_files/system/../timer/tmr0.h"
void TMR0_Stop(void);
# 201 "./mcc_generated_files/system/../timer/tmr0.h"
uint32_t TMR0_CounterGet(void);
# 210 "./mcc_generated_files/system/../timer/tmr0.h"
void TMR0_CounterSet(uint32_t counterValue);
# 219 "./mcc_generated_files/system/../timer/tmr0.h"
void TMR0_PeriodSet(uint32_t periodCount);
# 228 "./mcc_generated_files/system/../timer/tmr0.h"
uint32_t TMR0_PeriodGet(void);







uint32_t TMR0_MaxCountGet(void);
# 245 "./mcc_generated_files/system/../timer/tmr0.h"
 void TMR0_OverflowCallbackRegister(void (* CallbackHandler)(void));







void TMR0_Tasks(void);
# 49 "./mcc_generated_files/system/system.h" 2








void SYSTEM_Initialize(void);
# 212 "main.c" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/string.h" 1 3
# 25 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/string.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 1 3
# 421 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef struct __locale_struct * locale_t;
# 26 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/string.h" 2 3

void *memcpy (void *restrict, const void *restrict, size_t);
void *memmove (void *, const void *, size_t);
void *memset (void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void *memchr (const void *, int, size_t);

char *strcpy (char *restrict, const char *restrict);
char *strncpy (char *restrict, const char *restrict, size_t);

char *strcat (char *restrict, const char *restrict);
char *strncat (char *restrict, const char *restrict, size_t);

int strcmp (const char *, const char *);
int strncmp (const char *, const char *, size_t);

int strcoll (const char *, const char *);
size_t strxfrm (char *restrict, const char *restrict, size_t);

char *strchr (const char *, int);
char *strrchr (const char *, int);

size_t strcspn (const char *, const char *);
size_t strspn (const char *, const char *);
char *strpbrk (const char *, const char *);
char *strstr (const char *, const char *);
char *strtok (char *restrict, const char *restrict);

size_t strlen (const char *);

char *strerror (int);




char *strtok_r (char *restrict, const char *restrict, char **restrict);
int strerror_r (int, char *, size_t);
char *stpcpy(char *restrict, const char *restrict);
char *stpncpy(char *restrict, const char *restrict, size_t);
size_t strnlen (const char *, size_t);
char *strdup (const char *);
char *strndup (const char *, size_t);
char *strsignal(int);
char *strerror_l (int, locale_t);
int strcoll_l (const char *, const char *, locale_t);
size_t strxfrm_l (char *restrict, const char *restrict, size_t, locale_t);




void *memccpy (void *restrict, const void *restrict, int, size_t);
# 213 "main.c" 2
# 235 "main.c"
uint8_t key[] = {0x56,0x4a,0xbc,0x07,0x57,0x1e,0x62,0x94};



const uint16_t silenceC=29690;
const uint16_t debutbitC=2660;
const uint16_t bit0C=640;
const uint16_t bit1C=1280;
const uint16_t toleranceC=170;

const uint16_t silenceC_M=silenceC-toleranceC;
const uint16_t silenceC_P=silenceC+toleranceC;
const uint16_t debutbitC_M=debutbitC-toleranceC;
const uint16_t debutbitC_P=debutbitC+toleranceC;
const uint16_t bit0C_M=bit0C-toleranceC;
const uint16_t bit0C_P=bit0C+toleranceC;
const uint16_t bit1C_M=bit1C-toleranceC;
const uint16_t bit1C_P=bit1C+toleranceC;
const uint16_t coupureC=(bit0C+bit1C)/2;




const uint16_t silenceD=33000;
const uint16_t debutbitD=8020;
const uint16_t bit0D=850;
const uint16_t bit1D=1600;
const uint16_t toleranceD=350;

const uint16_t silenceD_M=silenceD-toleranceD;
const uint16_t silenceD_P=silenceD+toleranceD;
const uint16_t debutbitD_M=debutbitD-toleranceD;
const uint16_t debutbitD_P=debutbitD+toleranceD;
const uint16_t bit0D_M=bit0D-toleranceD;
const uint16_t bit0D_P=bit0D+toleranceD;
const uint16_t bit1D_M=bit1D-toleranceD;
const uint16_t bit1D_P=bit1D+toleranceD;
const uint16_t coupureD=(bit0D+bit1D)/2;



const uint16_t silenceF=6800;
const uint16_t debutbitF=3140;
const uint16_t bit0F=790;
const uint16_t bit1F=1570;
const uint16_t toleranceF=150;

const uint16_t silenceF_M=silenceF-toleranceF;
const uint16_t silenceF_P=silenceF+toleranceF;
const uint16_t debutbitF_M=debutbitF-toleranceF;
const uint16_t debutbitF_P=debutbitF+toleranceF;
const uint16_t bit0F_M=bit0F-toleranceF;
const uint16_t bit0F_P=bit0F+toleranceF;
const uint16_t bit1F_M=bit1F-toleranceF;
const uint16_t bit1F_P=bit1F+toleranceF;
const uint16_t coupureF=(bit0F+bit1F)/2;



const uint16_t silenceN=37776;
const uint16_t debutbitN=2979;
const uint16_t bit0N=958;
const uint16_t bit1N=1962;
const uint16_t toleranceN=280;

const uint16_t silenceN_M=silenceN-toleranceN;
const uint16_t silenceN_P=silenceN+toleranceN;
const uint16_t debutbitN_M=debutbitN-toleranceN;
const uint16_t debutbitN_P=debutbitN+toleranceN;
const uint16_t bit0N_M=bit0N-toleranceN;
const uint16_t bit0N_P=bit0N+toleranceN;
const uint16_t bit1N_M=bit1N-toleranceN;
const uint16_t bit1N_P=bit1N+toleranceN;
const uint16_t coupureN=(bit0N+bit1N)/2;



const uint16_t silenceS=5084;
const uint16_t debutbitS=9600;
const uint16_t bit0S=1317;
const uint16_t bit1S=2614;
const uint16_t toleranceS=220;

const uint16_t silenceS_M=silenceS-toleranceS;
const uint16_t silenceS_P=silenceS+toleranceS;
const uint16_t debutbitS_M=debutbitS-toleranceS;
const uint16_t debutbitS_P=debutbitS+toleranceS;
const uint16_t bit0S_M=bit0S-toleranceS;
const uint16_t bit0S_P=bit0S+toleranceS;
const uint16_t bit1S_M=bit1S-toleranceS;
const uint16_t bit1S_P=bit1S+toleranceS;
const uint16_t coupureS=(bit0S+bit1S)/2;


const uint16_t silenceV=677;
const uint16_t debutbitV=18820;
const uint16_t bit32=677;
const uint16_t bit96=1900;
const uint16_t toleranceV=40;

const uint16_t silenceV_M=silenceV-toleranceV;
const uint16_t silenceV_P=silenceV+toleranceV;
const uint16_t debutbitV_M=debutbitV-toleranceV;
const uint16_t debutbitV_P=debutbitV+toleranceV;
const uint16_t coupureV=(bit32+bit96)/2;


const uint8_t prot_niceflors=1;
const uint8_t prot_came=2;
const uint8_t prot_cardin=3;
const uint8_t prot_somfy=4;
const uint8_t prot_fobloqf=5;
const uint8_t prot_1527=6;


const uint8_t Err_wrong_range_bit=1;
const uint8_t Err_sym_bit=2;
const uint8_t Err_bit_duration=3;

uint8_t b0,b1,b2,b3,b4,b5,b6;
char chaine[50];
uint8_t i2cdata[130];
uint8_t debug=0,protocole;
uint8_t i2cread[130] = {};
uint32_t vitesse[2]={9600,230400};
uint8_t bufferRx[130] ={};
uint32_t mesure_bits[200];
uint8_t mesure_error[200];
uint8_t compteur,timeout,erreur,erreurI2C,repete,BoutonActif=0;
uint8_t Rx_prec,waitCounter,pak,pakcom,pvitesse,bouton;
uint16_t compt,crc,crcrecu,indexcode,dureeS,dureeStart1;
uint64_t code,tpsvalidetelecom,serial;
uint32_t duree=0,deborde=0,anc_duree,i,trame,tpsbouton;
uint8_t command[(8U)];
uint8_t index=0;
uint8_t readMessage;
_Bool recu=0,bitDebut=0,bitSilence=0,bitPrec=0,AncBp,telegram=0,tramebits=0;
_Bool aff_enr=0,rx,consecutif,debugCardin,debugFobloqf,debugBrut,
              modeProg=0;
uint16_t NbreBits,NbreBitsMsg,nb,Nb0;
uint16_t indexCodeRecu[20 +1];
# 384 "main.c"
void raz_bits()
{
  telegram=0;
  bitDebut=0;
  tramebits=0;
  bitSilence=0;
}

void fin_came()
{
  raz_bits();
  nb=NbreBits;
  recu=1;
}

void fin_cardin()
{
  raz_bits();
  nb=NbreBits;
  recu=1;
}

void fin_somfy()
{
  raz_bits();
  nb=NbreBitsMsg;
  recu=1;
}

void fin_fobloqf()
{
  raz_bits();
  nb=NbreBits;
  recu=1;
}

void fin_1527()
{
  raz_bits();
  nb=NbreBits;
  recu=1;
}

void fin_niceflors()
{
  raz_bits();
  nb=NbreBits;
  recu=1;
}



void __attribute__((picinterrupt(("high_priority")))) ISR_high()
{

  if (INTCONbits.TMR0IF==1)
  {

    deborde=deborde+0x10000;
    INTCONbits.TMR0IF=0;
  }


  if(INTCONbits.RBIE==1 && INTCONbits.RBIF==1)
  {
    rx=!RB4;


    anc_duree=duree;


    duree=TMR0+deborde;

    deborde=0;
    TMR0=0;



    NbreBits++;




    if (debug==3)
    {


      if (duree>300) {printf("T=%lu\n\r",duree);}
      if (NbreBits==20) debug=0;
      goto fin;
    }

    if (debugBrut)
    {
      if (NbreBits<200)
      {
        mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;
        goto fin;
      }
      nb=200;
      debug=0;
      debugBrut=0;
      protocole=0;
      raz_bits();
      aff_enr=1;
      goto fin;
    }




    if ( 1 && (!bitSilence) && (duree>silenceF_M) && (duree<silenceF_P))
    {
      NbreBits=0;
      mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;
      if (debug==2)
      printf("F");
      protocole=prot_fobloqf;

      if (debugFobloqf) {debugBrut=1;debugFobloqf=0;goto fin;}
      code=0;
      bitSilence=1;
      bitDebut=0;
      telegram=0;
      goto fin;
    }


    if ((bitSilence) && (protocole==prot_fobloqf) && (duree>debutbitF_M) && (duree<debutbitF_P))
    {
      if (debug==2) printf("S");


      if (NbreBits!=44) {printf("%d\r\n",NbreBits ); bitSilence=0;protocole=0;goto fin;}
      NbreBits=0;
      protocole=prot_fobloqf;
      mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;


      NbreBitsMsg=0;
      telegram=1;
      code=0;
      goto fin;
    }


    if ( (!bitSilence) && (duree>silenceV_M) && (duree<silenceV_P))

    {
      NbreBits=0;
      mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;




      protocole=prot_1527;

      code=0;
      bitSilence=1;
      telegram=0;
      goto fin;
    }


    if ((protocole==prot_1527) && bitSilence)
    {
      if ((duree>debutbitV_M) && (duree<debutbitV_P))
      {
        if (NbreBits!=1) {bitSilence=0;protocole=0;goto fin;}
        protocole=prot_1527;
        mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;


        NbreBits=0;
        NbreBitsMsg=0;
        telegram=1;
        code=0;
        goto fin;
      }
      else bitSilence=0;
    }


    if ((!bitSilence) && (duree>silenceD_M) && (duree<silenceD_P))
    {
      NbreBits=0;
      mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;
      protocole=prot_cardin;
      if (debug==2)
      printf("Cardin=%lu\r\n",duree);
      if (debugCardin) {debugBrut=1;debugCardin=0;goto fin;}
      code=0;
      bitSilence=1;
      goto fin;
    }


    if ((bitSilence) && (duree>debutbitD_M) && (duree<debutbitD_P))


    {

      NbreBits=0;
      mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;
      protocole=prot_cardin;


      NbreBitsMsg=0;
      telegram=1;
      code=0;
      goto fin;
    }



    if ((!bitSilence) && (duree>silenceN_M) && (duree<silenceN_P))
    {
      NbreBits=1;
      bitSilence=1;
      dureeS=duree;
      if (debug==2) printf("NiceFS=%u\r\n",duree);
      protocole=prot_niceflors;
      code=0;
      goto fin;
    }


    if ((!telegram) && (duree>silenceC_M) && (duree<silenceC_P))
    {
      NbreBits=1;
      protocole=prot_came;
      mesure_bits[NbreBits]=duree;
      if (debug==2) printf("came");
      telegram=1;
      code=0;
      goto fin;
    }







    if ((anc_duree>silenceS_M) && (anc_duree<silenceS_P) && rx && (!bitSilence) && (duree>debutbitS_M) && (duree<debutbitS_P) )
    {
      NbreBits=1;
      bitSilence=1;
      protocole=prot_somfy;
      if (debug==2) printf("Somfy=%u\r\n",duree);
      mesure_bits[NbreBits]=duree;
      NbreBitsMsg=0;
      Nb0=0;
      telegram=1;
      code=0;
      goto fin;
    }




    if ((protocole==prot_somfy) & telegram)
    {

      if (NbreBits<150) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;}


      if ((duree>bit1S_M) && (duree<bit1S_P))
      {
        Nb0=0;
        if (rx)
        {

          NbreBitsMsg++;
          code=code<<1;
        }
        else
        {

          NbreBitsMsg++;
          code=code<<1;
          code=code | 1;
        }
        if (NbreBitsMsg==56) fin_somfy();
        goto fin;
      }


      if ((duree>bit0S_M) && (duree<bit0S_P))
      {
        Nb0++;
        if (Nb0==1) goto fin;
        Nb0=0;
        if (!rx)
        {

          NbreBitsMsg++;
          code=code<<1;
          code=code | 1;
        }
        else
        {

          NbreBitsMsg++;
          code=code<<1;
        }
        if (NbreBitsMsg==56) fin_somfy();
        goto fin;
      }

      printf("E%d\r\n",duree);
      if (NbreBits<200) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;}
      raz_bits();
      goto fin;
    }




    if (telegram && (protocole==prot_cardin))
    {


        if (NbreBits<200) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;}

      if (duree>coupureD)
      {
        if ((NbreBits+1) % 2==0)
        {
          bitPrec=1;
        }
        else

        {
          if (bitPrec==0)
          {
            NbreBitsMsg++;
            code=code >> 1;
            code=code | 0x8000000000000000L ;
            if (NbreBitsMsg>=64) fin_cardin();
          }
          else
          {
            mesure_error[NbreBits]=Err_sym_bit;
            if (debug==1) printf("EAA D=%u\r\n",duree);
            nb=NbreBits;
            NbreBits=0;raz_bits();
          }

        }
        goto fin;
      }


      else
      {




        if ((NbreBits+1) % 2==0)
        {
          bitPrec=0;
        }
        else

        {
          if (bitPrec==1)
          {
            NbreBitsMsg++;
            code=code>>1;
            if (NbreBitsMsg>=64) fin_cardin();
          }
          else
          {
            mesure_error[NbreBits]=Err_sym_bit;
            if (debug==1) printf("EBA D=%u\r\n",duree);
            nb=NbreBits;
            NbreBits=0;raz_bits();
          }
        }
        goto fin;
      }

      printf("E%d\r\n",duree);
      if (NbreBits<200) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=Err_bit_duration;}
      nb=NbreBits;
      raz_bits();
      goto fin;
    }


    if (telegram && (protocole==prot_1527))
    {
      if (NbreBits<200) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;}
      if (duree>coupureV)
      {
        if ((NbreBits+1) % 2==0)
        {
          bitPrec=1;
        }
        else

        {
          if (bitPrec==0)
          {
            NbreBitsMsg++;
            code=code >> 1;
            if (NbreBitsMsg>=24) fin_1527();
          }
          else
          {
            mesure_error[NbreBits]=Err_sym_bit;
            if (debug==1) printf("EVA=%u\r\n",duree);
            nb=NbreBits;
            NbreBits=0;raz_bits();
          }
        }
        goto fin;
      }
      else
      {
        if ((NbreBits+1) % 2==0)
        {
          bitPrec=0;
        }
        else

        {
          if (bitPrec==1)
          {
            NbreBitsMsg++;
            code=code>>1;
            code=code | 0x8000000000000000L ;
            if (NbreBitsMsg>=24) fin_1527();
          }
          else
          {
            mesure_error[NbreBits]=Err_sym_bit;
            if (debug==1) printf("EVB=%u\r\n",duree);
            nb=NbreBits;
            NbreBits=0;raz_bits();
          }
        }
        goto fin;
      }
    }


    if (telegram && (protocole==prot_fobloqf))
    {
      if ((duree>(bit1F-toleranceF)) && (duree<(bit1F+toleranceF)))

      {



        code=code>>1;
        code=code | 0x8000000000000000L ;
        if (NbreBits<150) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;}
        if (NbreBits==64) fin_fobloqf();
        goto fin;
      }

      if ((duree>(bit0F-toleranceF)) && (duree<(bit0F+toleranceF)))

      {


        code=code>>1;
        if (NbreBits<150) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;}
        if (NbreBits==64) fin_fobloqf();
        goto fin;
      }

      printf("%d ",duree);
      if (NbreBits<150) mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;
      if (NbreBits>=64) fin_fobloqf();
      goto fin;

      {
        raz_bits();
        nb=NbreBits;
        if (NbreBits<200) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=Err_bit_duration;}
        if (debug==1) printf("EFA%d\r\n",NbreBits);
        goto fin;
      }
    }


    if (protocole==prot_came) && (telegram)
    {

      if (telegram)
      {
        if ((duree>bit1C_M) && (duree<bit1C_P))
        {

          code=code * 2;
          code=code | 1;
          if (NbreBits<150) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;}
          if (NbreBits==26) fin_came();
          goto fin;
          if (NbreBits % 2==0)
          {
            bitPrec=1;
          }
          else

          {
            if (bitPrec==0)
            {
              NbreBitsMsg++;
              code=code * 2;
              code=code | 1;
            }
            else
            {
              mesure_error[NbreBits]=Err_sym_bit;
              NbreBits=0;raz_bits();
              if (debug==1) printf("EAA D=%u\r\n",duree);
            }
          }
          goto fin;
        }

        if ((duree>bit0C_M) && (duree<bit0C_P))
        {

          code=code * 2;
          if (NbreBits<150) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;}
          if (NbreBits==26) fin_came();
          goto fin;
          if (NbreBits % 2==0)
          {
            bitPrec=0;
          }
          else

          {
            if (bitPrec==1)
            {
              NbreBitsMsg++;
              code=code*2;
            }
            else
            {
              NbreBits=0;raz_bits();
              if (debug==1)
              {mesure_error[NbreBits]=Err_sym_bit;printf("EBA D=%u\r\n",duree);}
            }
          }
          goto fin;
        }
        else
        {
          raz_bits();
          nb=NbreBits;
          if (NbreBits<200) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=Err_bit_duration;}
          if (debug==1) printf("ECA%d\r\n",NbreBits);
          goto fin;
        }
      }
    }


    if (protocole==prot_niceflors)
    {



      if ((duree>debutbitN_M) && (duree<debutbitN_P))
      {



        if (NbreBits==108)
        {
          bitDebut=0;bitSilence=0;
          mesure_bits[NbreBits]=duree;
          mesure_error[NbreBits]=0;
          fin_niceflors();
          goto fin;
        }
        if ((NbreBits==2) | (NbreBits==3))
        {
          if (NbreBits==2)
          {
            dureeStart1=duree;


            goto fin;
          }

          if (NbreBits==3)
          {
            mesure_bits[NbreBits-2]=dureeS;mesure_error[NbreBits-2]=0;
            mesure_bits[NbreBits-1]=dureeStart1;mesure_error[NbreBits-1]=0;
            mesure_bits[NbreBits]=duree;
            mesure_error[NbreBits]=0;

            tramebits=1;

            NbreBitsMsg=0;
            bitSilence=0;
            goto fin;
          }
        }


        raz_bits();
        goto fin;
      }

      if (tramebits)
      {

        if ((duree>bit1N_M) && (duree<bit1N_P))
        {

          if (NbreBits<150) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;}
          if (NbreBits % 2==0)
          {
            bitPrec=1;
          }
          else

          {
            if (bitPrec==0)
            {
              NbreBitsMsg++;
              code=code * 2;
              code=code | 1;
            }
            else
            {
              NbreBits=0;raz_bits();
              if (debug==1) {mesure_error[NbreBits]=Err_sym_bit;printf("EA D=%u\r\n",duree);}
            }
          }
        }
        else
        if ((duree>bit0N_M) && (duree<bit0N_P))
        {

          if (NbreBits<150) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=0;}
          if (NbreBits % 2==0)
          {
            bitPrec=0;
          }
          else

          {
            if (bitPrec==1)
            {
              NbreBitsMsg++;
              code=code*2;
            }
            else
            {
              NbreBits=0;raz_bits();
              if (debug==1) {mesure_error[NbreBits]=Err_sym_bit;printf("EBB D=%u\r\n",duree);}
            }
          }
        }
        else
        {
          raz_bits();
          nb=NbreBits;
          if (NbreBits<200) {mesure_bits[NbreBits]=duree;mesure_error[NbreBits]=Err_bit_duration;}
          if (debug==1) printf("EFB%d\r\n",NbreBits);
        }
      }
    }

    fin:

    INTCONbits.RBIF=0;
  }
}




uint8_t lit_eprom_int(uint16_t adresse)
{
  EEADRH=adresse >> 8;
  EEADR=adresse & 0xff;
  EECON1bits.EEPGD=0 ;
  EECON1bits.CFGS=0;
  EECON1bits.RD=1;
  __nop();
  return (EEDATA);
}



uint32_t KeeLoq_Decrypt(uint64_t data, const uint64_t key)
{
  uint32_t x = data, r;
  for (r = 0; r < 528; r++)
  {
    x=(x<<1)^(((x)>>(31))&1)^(((x)>>(15))&1)^(uint32_t)(((key)>>((15-r)&63))&1)^(((0x3A5C742E)>>(((((x)>>(0))&1)+(((x)>>(8))&1)*2+(((x)>>(19))&1)*4+(((x)>>(25))&1)*8+(((x)>>(30))&1)*16)))&1);
  }
  return x;
 }


uint8_t nlf(uint8_t d)
{
  return (((uint32_t)(0x3A5C742E) >> d) & 0x1);
}


 uint64_t KeeLoq_Decrypt2(uint8_t *key, uint64_t data, const uint16_t nrounds)
 {
  uint32_t x;
  uint16_t r;
  uint8_t o,nlf_input,k,ki;

  for (r=0;r<nrounds;r++)
  {
    nlf_input=(((data>>30) & 0x1) << 4) | (((data>>25) & 0x1) << 3) | (((data>>19) & 0x1) << 2) | (((data>>8) & 0x1) << 1) | (data & 0x1);

    o=nlf(nlf_input);
    ki=(uint16_t)(15-r) % 64;
    k=key[ki/8] >> (ki % 8);
    x=k^(data>>31)^(data >> 15)^o;
    data=(data<<1) | x & 1;
  }
  return data;
}

void menu()
{

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
# 1161 "main.c"
   printf("\r\n");

   printf("Votre choix suivi de ENTREE\r\n");




}


void UART_WriteByte(uint8_t b)
{
  while(!UART1.IsTxReady())
  {
  };
  UART1.Write(b);
}



void ecrit_bloc_eprom_ext(uint32_t adresse)
{
  int i;
  uint32_t mask;

  if (adresse>0xffff) mask=1; else mask=0;

  i2cdata[0]=adresse >> 8;
  i2cdata[1]=adresse & 0xff;

  for (i=1;i<=128;i++) i2cdata[i+1]=bufferRx[i];

  if (I2C1_Host.Write(0xA0 >>1 | mask,i2cdata,130))
  {
    waitCounter = 100;
    while (I2C1_Host.IsBusy())
    {
      I2C1_Host.Tasks();

      _delay((unsigned long)((5)*(64000000U/4000.0)));
      waitCounter--;
    }




    erreurI2C=I2C1_Host.ErrorGet();

    if (erreurI2C!=I2C_ERROR_NONE) {printf("Erreur �criture i2c\r\n");erreur=8;}
  }
}



uint8_t attend_rx_30()
{
  uint32_t Compte=200000;
  EUSART1_Read();
  while ((PIR1bits.RC1IF==0) && (Compte!=0))
  {
    _delay((unsigned long)((50)*(64000000U/4000000.0)));
    Compte--;
    if ((Compte % 2000)==0)
    {
      RC0=!RC0;
      UART_WriteByte('C');
    }
  }
  RC0=1;
  timeout=(Compte==0);
  return EUSART1_Read();

}



uint8_t attend_rx()
{
  int nbtimeout=0;
  compt=15000;

  while ((PIR1bits.RC1IF==0) && (compt!=0) && (nbtimeout<3))
  {
    compt--;
    timeout=(compt==0);
    if (timeout) {UART_WriteByte(0x15);nbtimeout++;compt=15000;}
  }
  timeout=nbtimeout>=3;
  return EUSART1_Read();
}



uint16_t calccrc(int count)
{
  uint16_t crc;
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



void ecrit_eprom_int(uint16_t adresse,uint8_t valeur)
{
  _Bool ancgie=INTCONbits.GIE;
  EEADRH=adresse >> 8;
  EEADR=adresse & 0xff;
  EEDATA=valeur;

  EECON1bits.EEPGD=0 ;
  EECON1bits.CFGS=0;
  EECON1bits.WREN=1;
  INTCONbits.GIE=0;

  EECON2=0x55;
  EECON2=0xAA;

  EECON1bits.WR=1;

  while (EECON1bits.WR);

  EECON1bits.WREN=0;
  INTCONbits.GIE=ancgie;
}



void ecrit_bloc_eprom_int(uint16_t adresse)
{
  for (i=1;i<=128;i++) ecrit_eprom_int(adresse+i-1,bufferRx[i]);
}



void erreur_xmodem(uint8_t num)
{
  erreur=num;
  INTCONbits.GIE=1;
  UART_WriteByte(18);
}





void recoit_xmodem(int mode)
{
   uint8_t b,ancienpak,delta;
   uint16_t padr;
   _Bool demande=1;

   RC0=1;
   ancienpak=0;padr=0;pak=0;pakcom=0;
   INTCONbits.GIE=0;
    _delay((unsigned long)((500)*(64000000U/4000.0)));

   trame=0;
   do
   {
     ancienpak=pak;
     refaire:
     if (demande) b=attend_rx_30();
       else b=attend_rx();
     demande=0;
  if (timeout) {erreur_xmodem(1);return;}


     if ((b!=1) & (b!=4) & (b!=0x17)) {erreur_xmodem(2);return;}

     if (b==1)
     {
       pak=attend_rx();

       if (timeout) {erreur_xmodem(4);return;}

       if (ancienpak==255) ancienpak=-1;
# 1367 "main.c"
       pakcom=attend_rx();
       if (timeout) {erreur_xmodem(5);return;}
       if (pak!=255-pakcom) {UART_WriteByte(0x15);goto refaire;}



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



       if (mode==1) ecrit_bloc_eprom_ext(trame*128L);
       if (mode==2) ecrit_bloc_eprom_int(trame*128);
     }

     trame++;
     UART_WriteByte(6);
     RC0=!RC0;
   }
    while (trame<1024);

   INTCONbits.GIE=1;
   RC0=0;
}
# 1425 "main.c"
void lit_eprom_ext(uint32_t adresse)
{
  uint32_t mask;

  if (adresse>0xffff) mask=1; else mask=0;

  i2cdata[0]=(uint8_t)(adresse >> 8);
  i2cdata[1]=(uint8_t)(adresse & 0xff);

  I2C1_Host.WriteRead(0xA0 >>1 | mask,i2cdata,2,i2cread,1);
  int err;
  waitCounter = 1000;
  while ( I2C1_Host.IsBusy())
  {
    I2C1_Host.Tasks();
    waitCounter--;
    _delay((unsigned long)((1)*(64000000U/4000.0)));
  }
  err=I2C1_Host.ErrorGet();
  if (err!=I2C_ERROR_NONE) printf("erreur I2C WriteRead=%d\r\n",err);
}



void lit_bloc_eprom_ext(uint32_t adresse,uint8_t nombre)
{
  uint32_t mask;

  if (adresse>0xffff) mask=1; else mask=0;

  i2cdata[0]=(uint8_t)(adresse >> 8);
  i2cdata[1]=(uint8_t)(adresse & 0xff);

  I2C1_Host.WriteRead(0xA0 >>1 | mask,i2cdata,2,i2cread,nombre);
  int err;
  waitCounter=1000;
  while (I2C1_Host.IsBusy())
  {
    I2C1_Host.Tasks();
    waitCounter--;

  }
  err=I2C1_Host.ErrorGet();
  if (err!=I2C_ERROR_NONE) printf("erreur I2C WriteRead=%d\r\n",err);
}


void affiche_enregistrement()
{
  uint8_t x,y;
  uint16_t ancduree;
  INTCONbits.GIE=0;
  aff_enr=0;

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
      i=((y-1) % 22)+1 + ((x-1) * 22) - 1;
      if (i<=nb)
      {
        printf("%3d",i);
        ancduree=mesure_bits[i-1];
        duree=mesure_bits[i];

         printf("%6lu",duree);

        if (protocole==0) printf("  ");

        if (protocole==prot_niceflors)
        {
          if ((duree>(silenceN-1000)) && (duree<(silenceN+1000))) printf(" S");
          else
          if ((duree>(bit0N-toleranceN)) && (duree<(bit0N+toleranceN))) printf(" 0");
          else
          if ((duree>(bit1N-toleranceN)) && (duree<(bit1N+toleranceN))) printf(" 1");
          else
          if ((duree>(debutbitN-toleranceN)) && (duree<(debutbitN+toleranceN))) printf(" D");
          else
          printf(" ?");
          if (mesure_error[i]!=0) printf( " Err %d",mesure_error[i]);
        }
        if (protocole==prot_came)
        {
          if ((duree>(silenceC-1000)) && (duree<(silenceC+1000))) printf(" S");
          else
          if ((duree>(bit0C-toleranceC)) && (duree<(bit0C+toleranceC))) printf(" 0");
          else
          if ((duree>(bit1C-toleranceC)) && (duree<(bit1C+toleranceC))) printf(" 1");
          else
          printf(" ?");
          if (mesure_error[i]!=0) printf( " Err %d",mesure_error[i]);
        }
        if (protocole==prot_somfy)
        {
          if ((duree>(silenceS-1000)) && (duree<(silenceS+1000))) printf(" S");
          else
          if ((duree>(bit0S-toleranceS)) && (duree<(bit0S+toleranceS))) printf(" 0");
          else
          if ((duree>(bit1S-toleranceS)) && (duree<(bit1S+toleranceS))) printf(" 1");
          else
          if ((duree>(debutbitS-toleranceS)) && (duree<(debutbitS+toleranceS))) printf(" D");
          else
          printf(" ?");
          if (mesure_error[i]!=0) printf( " Err %d",mesure_error[i]);
        }
        if (protocole==prot_cardin)
        {
          if ((duree>(silenceD-550)) && (duree<(silenceD+550))) printf(" S");
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
          if (mesure_error[i]!=0) printf( " Err %d",mesure_error[i]);
        }
        if (protocole==prot_fobloqf)
        {
          if ((duree>(silenceF-550)) && (duree<(silenceF+550))) printf(" S");
          else
          if ((duree>(debutbitF-toleranceF)) && (duree<(debutbitF+toleranceF))) printf(" D");
          else
          if (duree<coupureF) printf(" 0");
          else
          printf(" 1");
          if (mesure_error[i]!=0) printf( " Err %d",mesure_error[i]);
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
    debug=0;debugFobloqf=0;debugCardin=0;
    debugBrut=0;
    printf("Debug 0\r\n");
  }
  else
  if(strcmp(command,"1")==0)
  {
    debug++;
    if (debug>4) debug=0;
    printf("Debug %d ",debug);

    if (debug==0) {printf("Pas de debug\r\n");debugCardin=0;}
    if (debug==1) printf("Affichages supplementaires et les erreurs\r\n");
    if (debug==2) printf("Affiche silence\r\n");
    if (debug==3) printf("Affiche les durees re�ues en direct\r\n");
    if (debug==4) {printf("Mode debug fobloqf\r\n");debugFobloqf=1;debug=0;}







  }
  else
  if(strcmp(command,"2")==0)
  {
    pvitesse++;
    if (pvitesse==2) pvitesse=0;
    printf("Vitesse UART=%lu bauds ",vitesse[pvitesse]);
    if (pvitesse==0) {printf("pour transfert xmodem\r\n");SPBRGH1=0x06;SPBRG1=0x82;}
    if (pvitesse==1) {printf("pour debug\r\n");SPBRGH1=0x00;SPBRG1=0x44;}
  }
  else
  if (strcmp(command,"3")==0)
  {

    if (pvitesse!=0) printf("Utilisez la vitesse de 9600 bauds pour utiliser Xmodem\r\n");
    printf("Dans TeraTerm, s�lectionner le fichier 128Ko de codes en protocole Xmodem CRC dans les 20s\r\n");





    recoit_xmodem(1);
  }
  else
  if (strcmp(command,"4")==0)
  {

    if (pvitesse!=0) printf("Utilisez la vitesse de 9600 bauds pour utiliser Xmodem\r\n");
    printf("Dans TeraTerm, selectionner le fichier 256o de codes en protocole Xmdem CRC dans les 20s\r\n");





    recoit_xmodem(2);
  }
  else

  if (strcmp(command,"5")==0)
  {
    affiche_enregistrement();
  }
  else
  if(strcmp(command,"6")==0)
  {
    INTCONbits.GIE=0;

    printf("Derniere erreur : ");






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
      default: printf(" %d",erreur);
    }
# 1704 "main.c"
    printf(" Derniere erreur I2C=%d",erreurI2C);




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

    uint8_t chk=0;
    uint32_t j;
    INTCONbits.GIE=0;

    printf("Patientez 10s..\r\n");




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

      printf("Eprom ext contient de mauvaises valeurs\r\n");




    }
    printf("Checksum eprom ext = %x ",chk);
    if (chk==0) printf("Ok\r\n"); else printf("Non ok\r\n");
    INTCONbits.GIE=1;
  }
  else
  if (strcmp(command,"B") == 0)
  {


    uint32_t k,j=0;
    INTCONbits.GIE=0;
    while (j<0x1ffff)
    {
      lit_bloc_eprom_ext(j,128);

      for (i=0;i<=127;i++)
      {
        k=i+j;
        if ((i % 16)==0) {Affiche4(k);printf(" ");}
        printf("%x,",i2cread[i]);
        if (((i+1) % 16)==0) printf("\r\n");
        _delay((unsigned long)((100)*(64000000U/4000000.0)));
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

       printf("Telecommande %2d ",i+1);




       Affiche4(ep);
       printf("\r\n");
       i++;
    } while (i<20);
    i--;
  }
# 1855 "main.c"
  else
  if (strcmp(command,"K") == 0)
  {
# 1869 "main.c"
  }

  else
  {

      printf("Commande incorrecte.\r\n");




  }
}

void UART_ProcessCommand(void)
{
  if(UART1.IsRxReady())
  {
    readMessage=UART1.Read();
    if ( (readMessage!=((uint8_t)'\n')) & (readMessage != ((uint8_t)'\r')) )
    {
      command[index++]=readMessage;
      if (index>(8U)) index=0;
    }
    if (readMessage==((uint8_t)'\r'))
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





void ecrit_eprom_ext(uint32_t adresse,uint8_t valeur)
{
  int err ;
  uint32_t mask;

  if (adresse>0xffff) mask=1; else mask=0;

  i2cdata[0]=adresse >> 8;
  i2cdata[1]=adresse & 0xff;
  i2cdata[2]=valeur;

  if (I2C1_Host.Write(0xA0 >>1,i2cdata,3))
  {
    waitCounter = 100;
    while (I2C1_Host.IsBusy())
    {
      I2C1_Host.Tasks();
      _delay((unsigned long)((10)*(64000000U/4000.0)));
      waitCounter--;
    }




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

  }
}


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




_Bool decode_nice_b0b6()
{
  uint64_t decoded;
  int64_t pr;

  decoded=(code << 4);
  decoded=decoded ^ 0xFFFFFFFFFFFFF0;


  pr=decoded / 0x1000000000000;
  b1=(pr << 4) & 0xF0;
  b0=(pr >> 4) & 0x0F;

  pr=decoded / 0x10000000000;
  b1=b1 | ((pr >> 4) & 0x0F);
  b2=((pr << 4) & 0xF0);

  pr=decoded / 0x100000000;
  b2=b2 | ((pr >> 4) & 0x0F);
  b3=(pr << 4) & 0xF0;

  pr=decoded /0x1000000;
  b3=b3 | ((pr >> 4) & 0x0F);
  b4=(pr << 4) & 0xF0;

  pr=decoded /0x10000;
  b4=b4 | ((pr >> 4) & 0x0F);
  b5=(pr << 4) & 0xF0;

  pr=decoded /0x100;
  b5=b5 | ((pr >> 4) & 0x0f);
  b6=(pr << 4) & 0xF0;

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





uint16_t trouve_code_nice(uint16_t c)
{
  _Bool trouve=0;
  uint16_t cr;
  uint32_t i;
  uint8_t j;
  i=0;
  do
  {
    lit_bloc_eprom_ext(i,128);
    i=i+128;
    j=0;
    do
    {
      trouve=(i2cread[j]+(i2cread[j+1] << 8))==c;
      j=j+2;
    }
    while ((!trouve) && (j<=127)) ;
  }
  while ((!trouve) && (i<0x20000));
  return((i-128+j-2)/2);
}





uint16_t trouve_code_algo_nice(uint16_t c)
{
  _Bool trouve;
  uint8_t bal_telecom=1,increment;
  uint16_t i,lu_ext;

  do
  {


    i=indexCodeRecu[bal_telecom];
    lit_bloc_eprom_ext(i*2,128);
    increment=0;
    do
    {



      lu_ext=i2cread[increment];
      lu_ext=lu_ext + (i2cread[increment+1] << 8);

      trouve=c==lu_ext;
      if (!trouve) increment=increment+2;
    } while ((!trouve) & (increment<128));
    bal_telecom++;
  } while ((!trouve) & (bal_telecom<10));


  if (!trouve) i=trouve_code_nice(c);else i=i+(increment/2);

  return (i);
}



uint16_t inverse16(int16_t mot)
{
  uint16_t r;
  r=mot >> 8;
  r=r | ((mot & 0xff) << 8) ;
  return r;
}
# 2116 "main.c"
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
  code=code>>40;
  Affiche4(code);
  serial=code;
  return 0;
}

_Bool decode_fobloqf()
{
  uint32_t temp;


  Affiche(code);
  printf(" Miroir=");
  Affiche(miroir64(code));

  printf("\r\n");

  return 0;


  temp=KeeLoq_Decrypt(code,0x3A5C742E);
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






  uint8_t temp;


  if (debug==1) {Affiche(code);printf(" ");}


  serial=(code>>32) & 0xFFFFFFF;
  temp=code>>60;
  if (temp==1) bouton=4;
  if (temp==2) bouton=1;
  if (temp==4) bouton=2;
  if (temp==8) bouton=3;
  if (temp==0xd) bouton=9;
  modeProg=bouton==9;
  return 0;


  uint32_t tempH;
  tempH=KeeLoq_Decrypt(code,0x3A5C742E);
  printf(" Decode1=");Affiche(tempH);

  tempH=code;
  KeeLoq_Decrypt2(key, tempH, 528);
  printf(" Decode2=");
  Affiche(tempH);
  printf("\r\n");

  return 0;
}



_Bool decode_somfy()
{
  uint8_t chk;

  if (debug==1) {Affiche(code);printf("\r\n");}


  b0=(code >> 48) & 0xff;
  b1=(code >> 40) & 0xff;
  b2=(code >> 32) & 0xff;
  b3=(code >> 24) & 0xff;
  b4=(code >> 16) & 0xff;
  b5=(code >> 8) & 0xff;
  b6=code & 0xff;


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


  chk=(b0)^(b0>>4);
  chk=chk^b1^(b1>>4);
  chk=chk^b2^(b2>>4);
  chk=chk^b3^(b3>>4);
  chk=chk^b4^(b4>>4);
  chk=chk^b5^(b5>>4);
  chk=chk^b6^(b6>>4);
  chk=chk & 0x0f;

  bouton=(b1>>4) & 0x0f;

  modeProg=bouton==8;

  indexcode=(b2<<8)+b3;
  serial=(uint64_t)b4<<16;
  serial=serial | ((uint64_t)b5<<8);
  serial=serial+(uint64_t)b6;

  if (debug==1)
  {
    printf("Chk calc=%x",chk);
    if (chk!=0) printf(" Erreur");
    printf("\r\n");

    printf("Entete=0x%x",b0);
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



void decode_b06_nice()
{
  uint16_t encode,encodeEprom;
  uint8_t ki,snbuf3,snbuf2,snbuf1,snbuf0;
  encode=(b2<<8) + b3;
  indexcode=0;
  indexcode=trouve_code_algo_nice(encode);




  ki=lit_eprom_int(indexcode & 0xff);

  ki=ki ^ (encode & 0xff);


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
  printf("NiceFlorS NumSer=");Affiche4(serial);
  printf(",Bouton=%d",bouton);
  if (debug>=1)
  {
    printf(",Index=%d",indexcode);
    printf(",repete=%d ",repete);
  }
}



uint64_t encode_quartets()
{
  uint64_t encoded;
  uint8_t b;
  code=0;
  code=((b6<<4) & 0xF0) ;

  code|=((((b5 & 0x0F) << 4) | ((b6 & 0xF0) >> 4)) << 8) & 0xff00;

  b=((b4 & 0x0F) << 4) + ((b5 & 0xF0) >> 4);
  code=code + (b *0x10000) ;

  b=(((b3 & 0x0F) << 4) & 0xF0) | (((b4 & 0xF0) >> 4) & 0x0F);
  code=code + (b*0x1000000);



  b=(((b2 & 0x0F) << 4) & 0xF0) | (((b3 & 0xF0) >> 4) & 0x0F);
  code=code + (b*0x100000000);

  b=((b1 & 0x0F) << 4) | ((b2 & 0xF0) >> 4);
  code=code + (b*0x10000000000);

  b=((b0 & 0x0F) << 4) | ((b1 & 0xF0) >> 4);

  code=code + (b*0x1000000000000);
  code=code ^ 0xFFFFFFFFFFFFF0;

  code=code >> 4;

  Affiche(code);
}





uint8_t num_telecommande_int(uint32_t serialin)
{
  uint8_t n;
  uint16_t index=0;
  uint32_t serialEprom=0;


  if (protocole==prot_niceflors) serialin=serialin | ((uint32_t)bouton<<28);


  if (protocole==prot_somfy) serialin=serialin | ((uint32_t)bouton<<28);


  if (protocole==prot_cardin) serialin=serialin | ((uint32_t)bouton<<28);

  do
  {
    serialEprom=(uint32_t)lit_eprom_int(0x100+index*4);
    serialEprom=serialEprom+((uint32_t)lit_eprom_int(0x101+index*4) << 8);
    serialEprom=serialEprom+((uint32_t)lit_eprom_int(0x102+index*4) << 16);
    serialEprom=serialEprom+((uint32_t)lit_eprom_int(0x103+index*4) << 24);
    index++;
  } while ((serialin!=serialEprom) & (index<=20));
  if (index>=20 +1) index=0;
  return(index);
}


void stocke_telecommande()
{
  uint8_t n;
  uint32_t ep;

  i=0;
  do
  {
    ep=(uint32_t)lit_eprom_int(0x100+(i*4));
    ep=ep+((uint32_t)lit_eprom_int(0x101+(i*4)) << 8);
    ep=ep+((uint32_t)lit_eprom_int(0x102+(i*4)) << 16);
    ep=ep+((uint32_t)lit_eprom_int(0x103+(i*4)) << 24);
    i++;
  } while ((ep!=0xffffffff) & (i<20));
  i--;
  if (i>=20 +1)
  {

    printf("Plus de place\r\n");




    return;
  }



  ecrit_eprom_int(0x100+(i*4),serial & 0xff);
  ecrit_eprom_int(0x101+(i*4),serial>>8);
  ecrit_eprom_int(0x102+(i*4),serial>>16);





  if (protocole==prot_niceflors) ecrit_eprom_int(0x103+(i*4),(serial>>24) | (bouton <<4));
  else



  if (protocole==prot_cardin) ecrit_eprom_int(0x103+(i*4),(serial>>24) | (bouton <<4));
  else



  if (protocole==prot_somfy) ecrit_eprom_int(0x103+(i*4),(serial>>24) | (bouton <<4));
    else
      ecrit_eprom_int(0x103+(i*4),serial>>24);

  printf("Telecommande ");Affiche4(serial);printf(" ajoutee\r\n");
  for (i=0;i<10;i++)
  {
    _delay((unsigned long)((50)*(64000000U/4000.0)));
    RC0=0;
    _delay((unsigned long)((50)*(64000000U/4000.0)));
    RC0=1;
  }
  n=num_telecommande_int(serial);
  if (n>0) indexCodeRecu[n]=indexcode;
  _delay((unsigned long)((1000)*(64000000U/4000.0)));
}






void traitementCode()
{
  uint8_t n;
  n=num_telecommande_int(serial);
  printf(" T%d",n);

  if (n!=0)
  {
    consecutif=1;
    if ((protocole==prot_niceflors) || (protocole==prot_somfy))
    {




      consecutif=(indexCodeRecu[n]<indexcode);
      indexCodeRecu[n]=indexcode;
    }

    if (consecutif)
    {
      printf(" ok");


      RA5=0;
      RC0=0;
      _delay((unsigned long)((1000)*(64000000U/4000.0)));
      RA5=1;
      RC0=1;
    }
    else
    {

      printf(" Code non consecutif");




    }
  }
  printf("\r\n");


  if (modeProg)
  {
    modeProg=0;

    printf("Appuyer sur le bouton de la telecommande a memoriser\r\n");




    tpsvalidetelecom=50000;
    return;
  }



  if (tpsvalidetelecom!=0)
  {
    tpsvalidetelecom=0;
    if (n==0)
    {
      stocke_telecommande();
    }
    else
    {
      RC0=1;

        printf("Telecommande deja stockee\r\n");




      _delay((unsigned long)((1000)*(64000000U/4000.0)));
    }
  }
}


int main(void)
{
  SYSTEM_Initialize();
  RA3=0;
  RA5=1;
  erreur=0;
# 2561 "main.c"
  ANCON0=0;
  ANCON1=0;

  RCONbits.IPEN=1;

  INTCON2bits.RBPU=0;
  INTCON2bits.RBIP=1;

  INTCONbits.RBIF=0;
  INTCONbits.RBIE=1;
  INTCONbits.GIEH=1;
  INTCONbits.TMR0IF=0;
  INTCONbits.TMR0IE=1;

  IOCBbits.IOCB4=1;

  pvitesse=1;
  if (pvitesse==0) {SPBRGH1=0x06;SPBRG1=0x82;}
  if (pvitesse==1) {SPBRGH1=0x00;SPBRG1=0x44;}



  T0CON = (2 << 0x0)
        | (0 << 0x3)
        | (1 << 0x4)
        | (0 << 0x5)
        | (0 << 0x6)
        | (1 << 0x7);


  UART1_WriteString("Recepteur telecommande Nice FLOR-s / CAME / Somfy RTS / EV1527\r\n");
  UART1_WriteString("F1IWQ 2025\r\n");


  UART1_WriteString("Remote receiver for Nice FLOR-s / CAME / Somfy RTS / EV1527\r\n");
  UART1_WriteString("F1IWQ 2025\r\n");


  RC0=0;
  menu();
  RC0=1;


  for (i=1;i<10;i++)
  {
    _delay((unsigned long)((100)*(64000000U/4000.0)));
    RC0=0;
    _delay((unsigned long)((100)*(64000000U/4000.0)));
    RC0=1;
  }

  debug=0 ;

  TMR0_Start();
  INTCONbits.GIE=1;

  i=lit_eprom_int(0);
  if (i!=0x21)
  {

    printf("***Erreur l'eprom interne ne contient pas le bon fichier***\r\n");




  }

  lit_eprom_ext(0);
  i=i2cread[0];
  if (i!=3)
  {

    printf("***Erreur l'eprom externe ne contient pas le bon fichier***\r\n");




  }

  RA3=1;

  while(1)
  {
# 2655 "main.c"
    if (!RB2)
    {
      _delay((unsigned long)((1)*(64000000U/4000.0)));
      tpsbouton++;


      if (tpsbouton>5000)
      {
        RC0=0;
        tpsbouton=0;

        printf("Effacement toutes telecommandes\r\n");




        for (crc=0x100;crc<=0x100+(4*20);crc++)
        {
          ecrit_eprom_int(crc,0xff);
        }
        _delay((unsigned long)((1000)*(64000000U/4000.0)));
        RC0=1;
        while (!RB2);
      }
    }



    if ((!AncBp) & (RB2) & (tpsbouton>200) & (tpsbouton<1000))
    {
      tpsvalidetelecom=50000;

      printf("Attente nouvelle telecommande\r\n");




    }

    if (tpsvalidetelecom!=0)
    {
      tpsvalidetelecom--;
      if ((tpsvalidetelecom % 1000)==0) RC0=!RC0;
      if (tpsvalidetelecom==0)
      {
        modeProg=0;
        printf("Abandon memorisation\r\n");
        RC0=1;
      }
    }


    AncBp=RB2;
    if (RB2) tpsbouton=0;

    if (!recu) UART_ProcessCommand();

    if (aff_enr) affiche_enregistrement();



    if (recu)
    {
      recu=0;
      INTCONbits.GIE=0;
      if (debug==2)
      {
        affiche_enregistrement();
      }
      if (protocole==prot_niceflors)
      {
        if (debug>=1) {Affiche(code);printf(" ");}
        if (decode_nice_b0b6())

        {
          decode_b06_nice();
          traitementCode();
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
        if (decode_somfy()==1)
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


      }
      if (protocole==prot_1527)
      {
        printf("EV1527=");
        decode_1527();
        traitementCode();
      }

      NbreBits=0;
      _delay((unsigned long)((1000)*(64000000U/4000.0)));
      INTCONbits.GIE=1;
    }
  }
}
