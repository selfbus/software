################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fb_app_taster.c \
../fb_taster.c \
C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c 

C_DEPS += \
./fb_app_taster.d \
./fb_taster.d \
./watchdog.d 

RELS += \
./fb_app_taster.rel \
./fb_taster.rel \
./watchdog.rel 


# Each subdirectory must supply rules for building sources it contributes
%.rel: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c --stack-auto --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c --stack-auto -MM --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '

watchdog.rel: C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c --stack-auto --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c --stack-auto -MM --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


