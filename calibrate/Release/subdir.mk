################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fb_calibrate.c \
C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c 

C_DEPS += \
./fb_calibrate.d \
./fb_rs232.d 

RELS += \
./fb_calibrate.rel \
./fb_rs232.rel 


# Each subdirectory must supply rules for building sources it contributes
%.rel: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c --stack-auto --model-small --iram-size $v256 -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c --stack-auto -MM --model-small --iram-size $v256  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '

fb_rs232.rel: C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c --stack-auto --model-small --iram-size $v256 -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c --stack-auto -MM --model-small --iram-size $v256  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


