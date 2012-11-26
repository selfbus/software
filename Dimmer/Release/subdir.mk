################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fb_app_dim.c \
../fb_dim2.c \
C:/Dokumente\ und\ Einstellungen/Andreas/Eigene\ Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c \
../fb_i2c.c \
C:/Dokumente\ und\ Einstellungen/Andreas/Eigene\ Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c \
C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c 

C_DEPS += \
./fb_app_dim.d \
./fb_dim2.d \
./fb_hal_lpc.d \
./fb_i2c.d \
./fb_prot.d \
./fb_rs232.d 

RELS += \
./fb_app_dim.rel \
./fb_dim2.rel \
./fb_hal_lpc.rel \
./fb_i2c.rel \
./fb_prot.rel \
./fb_rs232.rel 


# Each subdirectory must supply rules for building sources it contributes
%.rel: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c --stack-auto --model-small --iram-size $v256 --xram-size $v0 --code-size $v0x1BFF -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c --stack-auto -MM --model-small --iram-size $v256 --xram-size $v0 --code-size $v0x1BFF  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '

fb_hal_lpc.rel: C:/Dokumente\ und\ Einstellungen/Andreas/Eigene\ Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c --stack-auto --model-small --iram-size $v256 --xram-size $v0 --code-size $v0x1BFF -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c --stack-auto -MM --model-small --iram-size $v256 --xram-size $v0 --code-size $v0x1BFF  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '

fb_prot.rel: C:/Dokumente\ und\ Einstellungen/Andreas/Eigene\ Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c --stack-auto --model-small --iram-size $v256 --xram-size $v0 --code-size $v0x1BFF -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c --stack-auto -MM --model-small --iram-size $v256 --xram-size $v0 --code-size $v0x1BFF  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '

fb_rs232.rel: C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c --stack-auto --model-small --iram-size $v256 --xram-size $v0 --code-size $v0x1BFF -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c --stack-auto -MM --model-small --iram-size $v256 --xram-size $v0 --code-size $v0x1BFF  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


