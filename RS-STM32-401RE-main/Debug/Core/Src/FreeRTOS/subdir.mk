################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/FreeRTOS/croutine.c \
../Core/Src/FreeRTOS/event_groups.c \
../Core/Src/FreeRTOS/heap_2.c \
../Core/Src/FreeRTOS/list.c \
../Core/Src/FreeRTOS/port.c \
../Core/Src/FreeRTOS/queue.c \
../Core/Src/FreeRTOS/stream_buffer.c \
../Core/Src/FreeRTOS/tasks.c \
../Core/Src/FreeRTOS/timers.c 

OBJS += \
./Core/Src/FreeRTOS/croutine.o \
./Core/Src/FreeRTOS/event_groups.o \
./Core/Src/FreeRTOS/heap_2.o \
./Core/Src/FreeRTOS/list.o \
./Core/Src/FreeRTOS/port.o \
./Core/Src/FreeRTOS/queue.o \
./Core/Src/FreeRTOS/stream_buffer.o \
./Core/Src/FreeRTOS/tasks.o \
./Core/Src/FreeRTOS/timers.o 

C_DEPS += \
./Core/Src/FreeRTOS/croutine.d \
./Core/Src/FreeRTOS/event_groups.d \
./Core/Src/FreeRTOS/heap_2.d \
./Core/Src/FreeRTOS/list.d \
./Core/Src/FreeRTOS/port.d \
./Core/Src/FreeRTOS/queue.d \
./Core/Src/FreeRTOS/stream_buffer.d \
./Core/Src/FreeRTOS/tasks.d \
./Core/Src/FreeRTOS/timers.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/FreeRTOS/%.o Core/Src/FreeRTOS/%.su Core/Src/FreeRTOS/%.cyclo: ../Core/Src/FreeRTOS/%.c Core/Src/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I"C:/Users/likelike07/STM32CubeIDE/workspace_1.18.1/RS_test/Core/Inc/FreeRTOS" -I"C:/Users/likelike07/STM32Cube/Repository/STM32Cube_FW_F4_V1.28.2/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/likelike07/STM32Cube/Repository/STM32Cube_FW_F4_V1.28.2/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"C:/Users/likelike07/STM32Cube/Repository/STM32Cube_FW_F4_V1.28.2/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/likelike07/STM32Cube/Repository/STM32Cube_FW_F4_V1.28.2/Drivers/CMSIS/Include" -I"C:/Users/likelike07/STM32CubeIDE/workspace_1.18.1/RS_test/Core/Inc/FreeRTOS/port" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-FreeRTOS

clean-Core-2f-Src-2f-FreeRTOS:
	-$(RM) ./Core/Src/FreeRTOS/croutine.cyclo ./Core/Src/FreeRTOS/croutine.d ./Core/Src/FreeRTOS/croutine.o ./Core/Src/FreeRTOS/croutine.su ./Core/Src/FreeRTOS/event_groups.cyclo ./Core/Src/FreeRTOS/event_groups.d ./Core/Src/FreeRTOS/event_groups.o ./Core/Src/FreeRTOS/event_groups.su ./Core/Src/FreeRTOS/heap_2.cyclo ./Core/Src/FreeRTOS/heap_2.d ./Core/Src/FreeRTOS/heap_2.o ./Core/Src/FreeRTOS/heap_2.su ./Core/Src/FreeRTOS/list.cyclo ./Core/Src/FreeRTOS/list.d ./Core/Src/FreeRTOS/list.o ./Core/Src/FreeRTOS/list.su ./Core/Src/FreeRTOS/port.cyclo ./Core/Src/FreeRTOS/port.d ./Core/Src/FreeRTOS/port.o ./Core/Src/FreeRTOS/port.su ./Core/Src/FreeRTOS/queue.cyclo ./Core/Src/FreeRTOS/queue.d ./Core/Src/FreeRTOS/queue.o ./Core/Src/FreeRTOS/queue.su ./Core/Src/FreeRTOS/stream_buffer.cyclo ./Core/Src/FreeRTOS/stream_buffer.d ./Core/Src/FreeRTOS/stream_buffer.o ./Core/Src/FreeRTOS/stream_buffer.su ./Core/Src/FreeRTOS/tasks.cyclo ./Core/Src/FreeRTOS/tasks.d ./Core/Src/FreeRTOS/tasks.o ./Core/Src/FreeRTOS/tasks.su ./Core/Src/FreeRTOS/timers.cyclo ./Core/Src/FreeRTOS/timers.d ./Core/Src/FreeRTOS/timers.o ./Core/Src/FreeRTOS/timers.su

.PHONY: clean-Core-2f-Src-2f-FreeRTOS

