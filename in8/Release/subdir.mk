################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fb_app_in8.c \
../fb_in8.c \
C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c 

C_DEPS += \
./fb_app_in8.d \
./fb_in8.d \
./watchdog.d 

RELS += \
./fb_app_in8.rel \
./fb_in8.rel \
./watchdog.rel 


# Each subdirectory must supply rules for building sources it contributes
%.rel: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c --stack-auto --data-loc 0x20 --model-small --iram-size $v256 --xram-size $v0 --code-size $v0x1bff -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c --stack-auto --data-loc 0x20 -MM --model-small --iram-size $v256 --xram-size $v0 --code-size $v0x1bff  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '

watchdog.rel: C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c --stack-auto --data-loc 0x20 --model-small --iram-size $v256 --xram-size $v0 --code-size $v0x1bff -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c --stack-auto --data-loc 0x20 -MM --model-small --iram-size $v256 --xram-size $v0 --code-size $v0x1bff  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


