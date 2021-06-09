
_main:

;WATER.c,30 :: 		void main()
;WATER.c,33 :: 		int i = 0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
	MOVLW      16
	MOVWF      main_c_L0+0
	MOVLW      0
	MOVWF      main_c_L0+1
	CLRF       main_b_L0+0
	CLRF       main_b_L0+1
;WATER.c,36 :: 		CMCON = 0x07;
	MOVLW      7
	MOVWF      CMCON+0
;WATER.c,37 :: 		ADCON1 = 0x06;
	MOVLW      6
	MOVWF      ADCON1+0
;WATER.c,38 :: 		TRISA = 0x0F;                  // set direction to be input
	MOVLW      15
	MOVWF      TRISA+0
;WATER.c,39 :: 		PORTA = 0x00;
	CLRF       PORTA+0
;WATER.c,40 :: 		PORTD = 0x00;
	CLRF       PORTD+0
;WATER.c,41 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;WATER.c,42 :: 		TRISB = 0x00;                  //  set direction to be output
	CLRF       TRISB+0
;WATER.c,43 :: 		TRISC = 0x00;                  // set direction to be output
	CLRF       TRISC+0
;WATER.c,44 :: 		TRISD = 0x80;                  // set direction to be output
	MOVLW      128
	MOVWF      TRISD+0
;WATER.c,46 :: 		PORTD.F2 = 1;
	BSF        PORTD+0, 2
;WATER.c,47 :: 		PORTD.F7 = 1;
	BSF        PORTD+0, 7
;WATER.c,49 :: 		Lcd_Init();                    // Initialize LCD
	CALL       _Lcd_Init+0
;WATER.c,50 :: 		Lcd_Cmd(_LCD_CLEAR);           // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;WATER.c,51 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);      // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;WATER.c,52 :: 		Lcd_Out(1,1,txt1);             // Write text in first row
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;WATER.c,53 :: 		Lcd_Out(2,1,txt2);             // Write text in second row
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;WATER.c,54 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
	NOP
;WATER.c,55 :: 		Lcd_Cmd(_LCD_CLEAR);           // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;WATER.c,56 :: 		Lcd_Out(1,1,txt3);             // Write text in first row
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;WATER.c,57 :: 		Lcd_Out(2,1,txt4);             // Write text in second row
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt4+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;WATER.c,58 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main1:
	DECFSZ     R13+0, 1
	GOTO       L_main1
	DECFSZ     R12+0, 1
	GOTO       L_main1
	DECFSZ     R11+0, 1
	GOTO       L_main1
	NOP
	NOP
;WATER.c,61 :: 		for(i=0; i<15; i++)
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main2:
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main26
	MOVLW      15
	SUBWF      main_i_L0+0, 0
L__main26:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;WATER.c,63 :: 		Lcd_Cmd(_LCD_SHIFT_RIGHT);
	MOVLW      28
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;WATER.c,64 :: 		Delay_ms(125);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;WATER.c,61 :: 		for(i=0; i<15; i++)
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;WATER.c,65 :: 		}
	GOTO       L_main2
L_main3:
;WATER.c,69 :: 		do
L_main6:
;WATER.c,71 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;WATER.c,72 :: 		Lcd_Out(1,1,wtr1);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _wtr1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;WATER.c,73 :: 		if(c>0)
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_c_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main27
	MOVF       main_c_L0+0, 0
	SUBLW      0
L__main27:
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;WATER.c,75 :: 		PORTD.F2 = 1 ;              //LCD Backlight ON
	BSF        PORTD+0, 2
;WATER.c,76 :: 		c--;
	MOVLW      1
	SUBWF      main_c_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_c_L0+1, 1
;WATER.c,77 :: 		}
	GOTO       L_main10
L_main9:
;WATER.c,79 :: 		PORTD.F2 = 0;              //LCD Backlight OFF
	BCF        PORTD+0, 2
L_main10:
;WATER.c,81 :: 		if(b>0)
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_b_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main28
	MOVF       main_b_L0+0, 0
	SUBLW      0
L__main28:
	BTFSC      STATUS+0, 0
	GOTO       L_main11
;WATER.c,83 :: 		PORTD.F0 = 1;              //Buzzer ON
	BSF        PORTD+0, 0
;WATER.c,84 :: 		Delay_ms(125);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	DECFSZ     R11+0, 1
	GOTO       L_main12
	NOP
	NOP
;WATER.c,85 :: 		PORTD.F0 = 0;              //Buzzer OFF
	BCF        PORTD+0, 0
;WATER.c,86 :: 		b--;
	MOVLW      1
	SUBWF      main_b_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_b_L0+1, 1
;WATER.c,87 :: 		}
L_main11:
;WATER.c,89 :: 		if(PORTD.F7 == 0)            //Manual Backlight ON
	BTFSC      PORTD+0, 7
	GOTO       L_main13
;WATER.c,90 :: 		c = 16;
	MOVLW      16
	MOVWF      main_c_L0+0
	MOVLW      0
	MOVWF      main_c_L0+1
L_main13:
;WATER.c,92 :: 		if(PORTA == 0x0F)
	MOVF       PORTA+0, 0
	XORLW      15
	BTFSS      STATUS+0, 2
	GOTO       L_main14
;WATER.c,94 :: 		PORTD.F1 = 1;
	BSF        PORTD+0, 1
;WATER.c,95 :: 		Lcd_Out(1,8,wtr2);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _wtr2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;WATER.c,96 :: 		PORTC = 1;
	MOVLW      1
	MOVWF      PORTC+0
;WATER.c,97 :: 		}
	GOTO       L_main15
L_main14:
;WATER.c,98 :: 		else if(PORTA == 0x0E)
	MOVF       PORTA+0, 0
	XORLW      14
	BTFSS      STATUS+0, 2
	GOTO       L_main16
;WATER.c,100 :: 		Lcd_Out(1,8,wtr3);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _wtr3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;WATER.c,101 :: 		PORTC = 3;                 //LED Bar
	MOVLW      3
	MOVWF      PORTC+0
;WATER.c,102 :: 		}
	GOTO       L_main17
L_main16:
;WATER.c,103 :: 		else if(PORTA == 0x0C)
	MOVF       PORTA+0, 0
	XORLW      12
	BTFSS      STATUS+0, 2
	GOTO       L_main18
;WATER.c,105 :: 		Lcd_Out(1,8,wtr4);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _wtr4+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;WATER.c,106 :: 		PORTC = 7;                  //LED Bar
	MOVLW      7
	MOVWF      PORTC+0
;WATER.c,107 :: 		}
	GOTO       L_main19
L_main18:
;WATER.c,108 :: 		else if(PORTA == 0x08)
	MOVF       PORTA+0, 0
	XORLW      8
	BTFSS      STATUS+0, 2
	GOTO       L_main20
;WATER.c,110 :: 		Lcd_Out(1,8,wtr5);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _wtr5+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;WATER.c,111 :: 		PORTC = 15;              //LED Bar
	MOVLW      15
	MOVWF      PORTC+0
;WATER.c,112 :: 		}
	GOTO       L_main21
L_main20:
;WATER.c,113 :: 		else if(PORTA == 0x00)
	MOVF       PORTA+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main22
;WATER.c,115 :: 		Lcd_Out(1,8,wtr6);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _wtr6+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;WATER.c,116 :: 		PORTC = 31;                //LED Bar
	MOVLW      31
	MOVWF      PORTC+0
;WATER.c,117 :: 		}
	GOTO       L_main23
L_main22:
;WATER.c,119 :: 		PORTA = 0x0F;
	MOVLW      15
	MOVWF      PORTA+0
L_main23:
L_main21:
L_main19:
L_main17:
L_main15:
;WATER.c,120 :: 		Delay_ms(125);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_main24:
	DECFSZ     R13+0, 1
	GOTO       L_main24
	DECFSZ     R12+0, 1
	GOTO       L_main24
	DECFSZ     R11+0, 1
	GOTO       L_main24
	NOP
	NOP
;WATER.c,123 :: 		}while(1);                     // Endless loop
	GOTO       L_main6
;WATER.c,124 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
