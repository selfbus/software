################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Dokumente\ und\ Einstellungen/Andreas/Eigene\ Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c \
C:/Dokumente\ und\ Einstellungen/Andreas/Eigene\ Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c 

C_DEPS += \
./dim2_sla.d \
./fb_i2c.d 

RELS += \
./dim2_sla.rel \
./fb_i2c.rel 


# Each subdirectory must supply rules for building sources it contributes
dim2_sla.rel: C:/Dokumente\ und\ Einstellungen/Andreas/Eigene\ Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c --stack-auto --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c --stack-auto -MM --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '

fb_i2c.rel: C:/Dokumente\ und\ Einstellungen/Andreas/Eigene\ Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c --stack-auto --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c --stack-auto -MM --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


