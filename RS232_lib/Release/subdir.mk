################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fb_app_rs.c \
../fb_rs.c 

C_DEPS += \
./fb_app_rs.d \
./fb_rs.d 

RELS += \
./fb_app_rs.rel \
./fb_rs.rel 


# Each subdirectory must supply rules for building sources it contributes
%.rel: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc -c --stack-auto -I/usr/share/sdcc/include/mcs51 -I"/home/stefan/Projekte/Selfbus/Workspace.lpc/software/lib_lpc922_mini/Releases" -I"/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com" --model-small -o"$@" "$<" && \
	echo -n $(@:%.rel=%.d) $(dir $@) > $(@:%.rel=%.d) && \
	sdcc -c --stack-auto -MM -I/usr/share/sdcc/include/mcs51 -I"/home/stefan/Projekte/Selfbus/Workspace.lpc/software/lib_lpc922_mini/Releases" -I"/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com" --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '


