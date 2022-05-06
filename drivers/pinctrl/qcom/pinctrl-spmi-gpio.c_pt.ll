; ModuleID = '/llk/IR/drivers/pinctrl/qcom/pinctrl-spmi-gpio.c_pt.bc'
source_filename = "../drivers/pinctrl/qcom/pinctrl-spmi-gpio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinconf_generic_params = type { ptr, i32, i32 }
%struct.pin_config_item = type { i32, ptr, ptr, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.63, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.63 = type { ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pmic_gpio_state = type { ptr, ptr, ptr, %struct.gpio_chip, %struct.irq_chip, i8, i8 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.spmi_device = type { %struct.device, ptr, i8 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pmic_gpio_pad = type { i16, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_pinctrl_spmi_gpio__210_1199_pmic_gpio_driver_init6 = internal global ptr @pmic_gpio_driver_init, section ".initcall6.init", align 4
@pmic_gpio_driver = internal global %struct.platform_driver { ptr @pmic_gpio_probe, ptr @pmic_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pmic_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_pmic_gpio_driver_exit = internal global ptr @pmic_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author211 = internal constant [61 x i8] c"pinctrl_spmi_gpio.author=Ivan T. Ivanov <iivanov@mm-sol.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [73 x i8] c"pinctrl_spmi_gpio.description=Qualcomm SPMI PMIC GPIO pin control driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias213 = internal constant [48 x i8] c"pinctrl_spmi_gpio.alias=platform:qcom-spmi-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_file214 = internal constant [62 x i8] c"pinctrl_spmi_gpio.file=drivers/pinctrl/qcom/pinctrl-spmi-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license215 = internal constant [33 x i8] c"pinctrl_spmi_gpio.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"qcom-spmi-gpio\00", align 1
@pmic_gpio_of_match = internal constant [34 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm2250-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm660-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 13 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm660l-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm6150-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm6150l-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm6350-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 9 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm7325-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8005-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8008-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8019-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8150-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmc8180-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8150b-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8150l-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmc8180c-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8350-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8350b-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8350c-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 9 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8916-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8941-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 36 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8950-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8994-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 22 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8998-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 26 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pma8084-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 22 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmi8950-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmi8994-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmi8998-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 14 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmk8350-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmm8155au-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmr735a-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmr735b-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pms405-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmx55-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 11 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"missing base address\00", align 1
@pmic_gpio_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @pmic_gpio_get_groups_count, ptr @pmic_gpio_get_group_name, ptr @pmic_gpio_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_group, ptr @pinctrl_utils_free_map }, align 4
@pmic_gpio_pinmux_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @pmic_gpio_get_functions_count, ptr @pmic_gpio_get_function_name, ptr @pmic_gpio_get_function_groups, ptr @pmic_gpio_set_mux, ptr null, ptr null, ptr null, i8 0 }, align 4
@pmic_gpio_pinconf_ops = internal constant %struct.pinconf_ops { i8 1, ptr null, ptr null, ptr @pmic_gpio_config_get, ptr @pmic_gpio_config_set, ptr null, ptr @pmic_gpio_config_dbg_show, ptr null }, align 4
@pmic_gpio_bindings = internal constant [5 x %struct.pinconf_generic_params] [%struct.pinconf_generic_params { ptr @.str.46, i32 128, i32 0 }, %struct.pinconf_generic_params { ptr @.str.47, i32 129, i32 0 }, %struct.pinconf_generic_params { ptr @.str.48, i32 130, i32 0 }, %struct.pinconf_generic_params { ptr @.str.49, i32 131, i32 0 }, %struct.pinconf_generic_params { ptr @.str.50, i32 132, i32 0 }], align 4
@pmic_conf_items = internal constant [5 x %struct.pin_config_item] [%struct.pin_config_item { i32 128, ptr @.str.51, ptr null, i8 1 }, %struct.pin_config_item { i32 129, ptr @.str.52, ptr null, i8 1 }, %struct.pin_config_item { i32 130, ptr @.str.53, ptr null, i8 1 }, %struct.pin_config_item { i32 131, ptr @.str.54, ptr null, i8 1 }, %struct.pin_config_item { i32 132, ptr @.str.55, ptr null, i8 1 }], align 4
@pmic_gpio_groups = internal constant [36 x ptr] [ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91], align 4
@pmic_gpio_gpio_template = internal unnamed_addr constant %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr null, ptr @pmic_gpio_direction_input, ptr @pmic_gpio_direction_output, ptr @pmic_gpio_get, ptr null, ptr @pmic_gpio_set, ptr null, ptr null, ptr null, ptr @pmic_gpio_dbg_show, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr @pmic_gpio_of_xlate }, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"spmi-gpio\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"can't add gpio chip\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"failed to add pin range\0A\00", align 1
@pmic_gpio_functions = internal unnamed_addr constant [10 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"paired\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"func1\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"func2\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"func3\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"func4\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"dtest1\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"dtest2\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"dtest3\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"dtest4\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"\013function: %d is not defined\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"\013LV/MV subtype doesn't have func3/func4\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"write 0x%x failed\0A\00", align 1
@pmic_gpio_config_dbg_show.biases = internal unnamed_addr constant [6 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], align 4
@.str.20 = private unnamed_addr constant [13 x i8] c"pull-up 30uA\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"pull-up 1.5uA\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"pull-up 31.5uA\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"pull-up 1.5uA + 30uA boost\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"pull-down 10uA\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"no pull\00", align 1
@pmic_gpio_config_dbg_show.buffer_types = internal unnamed_addr constant [3 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28], align 4
@.str.26 = private unnamed_addr constant [10 x i8] c"push-pull\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"open-drain\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"open-source\00", align 1
@pmic_gpio_config_dbg_show.strengths = internal unnamed_addr constant [4 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], align 4
@.str.29 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"medium\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c" gpio%-2d:\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c" ---\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c" analog-pass\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c" %-4s\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c" %-7s\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c" vin-%d\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c" %-27s\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c" %-10s\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c" atest-%d\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c" dtest-%d\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"read 0x%x failed\0A\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"qcom,pull-up-strength\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"qcom,drive-strength\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"qcom,atest\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"qcom,analog-pass\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"qcom,dtest-buffer\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"pull up strength\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"drive-strength\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"atest\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"analog-pass\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"dtest-buffer\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"gpio1\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"gpio2\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"gpio3\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"gpio4\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"gpio5\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"gpio6\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"gpio7\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"gpio8\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"gpio9\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"gpio10\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"gpio11\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"gpio12\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"gpio13\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"gpio14\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"gpio15\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"gpio16\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"gpio17\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"gpio18\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"gpio19\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"gpio20\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"gpio21\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"gpio22\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"gpio23\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"gpio24\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"gpio25\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"gpio26\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"gpio27\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"gpio28\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"gpio29\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"gpio30\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"gpio31\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"gpio32\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"gpio33\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"gpio34\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"gpio35\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"gpio36\00", align 1
@.str.92 = private unnamed_addr constant [35 x i8] c"incorrect block type 0x%x at 0x%x\0A\00", align 1
@.str.93 = private unnamed_addr constant [24 x i8] c"unknown GPIO type 0x%x\0A\00", align 1
@.str.94 = private unnamed_addr constant [24 x i8] c"unknown GPIO direction\0A\00", align 1
@.str.95 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias213, ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file214, ptr @__UNIQUE_ID_license215, ptr @__exitcall_pmic_gpio_driver_exit, ptr @__initcall__kmod_pinctrl_spmi_gpio__210_1199_pmic_gpio_driver_init6, ptr @pmic_gpio_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pmic_gpio_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @pmic_gpio_driver, ptr noundef null) #14
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pmic_gpio_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @pmic_gpio_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_gpio_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = alloca %struct.irq_fwspec, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #14
  store i32 0, ptr %14, align 4, !annotation !8
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %17 = load ptr, ptr %16, align 8
  %18 = call i32 @of_property_read_variable_u32_array(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef nonnull %14, i32 noundef 1, i32 noundef 0) #14
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.2) #15
  br label %387

21:                                               ; preds = %1
  %22 = call ptr @device_get_match_data(ptr noundef %15) #14
  %23 = ptrtoint ptr %22 to i32
  %24 = call noalias ptr @devm_kmalloc(ptr noundef %15, i32 noundef 456, i32 noundef 3520) #14
  %25 = icmp eq ptr %24, null
  br i1 %25, label %387, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %24, ptr %27, align 8
  store ptr %15, ptr %24, align 4
  %28 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = call ptr @dev_get_regmap(ptr noundef %29, ptr noundef null) #14
  %31 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  %32 = load ptr, ptr %28, align 4
  %33 = getelementptr inbounds %struct.spmi_device, ptr %32, i32 0, i32 2
  %34 = load i8, ptr %33, align 4
  %35 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 5
  store i8 %34, ptr %35, align 4
  %36 = load i32, ptr %14, align 4
  %37 = lshr i32 %36, 8
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 6
  store i8 %38, ptr %39, align 1
  %40 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 12) #14
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %387, label %42, !prof !9

42:                                               ; preds = %26
  %43 = extractvalue { i32, i1 } %40, 0
  %44 = call noalias ptr @devm_kmalloc(ptr noundef %15, i32 noundef %43, i32 noundef 3520) #14
  %45 = icmp eq ptr %44, null
  br i1 %45, label %387, label %46

46:                                               ; preds = %42
  %47 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 44) #14
  %48 = extractvalue { i32, i1 } %47, 1
  br i1 %48, label %387, label %49, !prof !9

49:                                               ; preds = %46
  %50 = extractvalue { i32, i1 } %47, 0
  %51 = call noalias ptr @devm_kmalloc(ptr noundef %15, i32 noundef %50, i32 noundef 3520) #14
  %52 = icmp eq ptr %51, null
  br i1 %52, label %387, label %53

53:                                               ; preds = %49
  %54 = call noalias ptr @devm_kmalloc(ptr noundef %15, i32 noundef 44, i32 noundef 3520) #14
  %55 = icmp eq ptr %54, null
  br i1 %55, label %387, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.pinctrl_desc, ptr %54, i32 0, i32 3
  store ptr @pmic_gpio_pinctrl_ops, ptr %57, align 4
  %58 = getelementptr inbounds %struct.pinctrl_desc, ptr %54, i32 0, i32 4
  store ptr @pmic_gpio_pinmux_ops, ptr %58, align 4
  %59 = getelementptr inbounds %struct.pinctrl_desc, ptr %54, i32 0, i32 5
  store ptr @pmic_gpio_pinconf_ops, ptr %59, align 4
  %60 = getelementptr inbounds %struct.pinctrl_desc, ptr %54, i32 0, i32 6
  store ptr null, ptr %60, align 4
  %61 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load ptr, ptr %15, align 4
  br label %66

66:                                               ; preds = %64, %56
  %67 = phi ptr [ %65, %64 ], [ %62, %56 ]
  store ptr %67, ptr %54, align 4
  %68 = getelementptr inbounds %struct.pinctrl_desc, ptr %54, i32 0, i32 1
  store ptr %44, ptr %68, align 4
  %69 = getelementptr inbounds %struct.pinctrl_desc, ptr %54, i32 0, i32 2
  store i32 %23, ptr %69, align 4
  %70 = getelementptr inbounds %struct.pinctrl_desc, ptr %54, i32 0, i32 7
  store i32 5, ptr %70, align 4
  %71 = getelementptr inbounds %struct.pinctrl_desc, ptr %54, i32 0, i32 8
  store ptr @pmic_gpio_bindings, ptr %71, align 4
  %72 = getelementptr inbounds %struct.pinctrl_desc, ptr %54, i32 0, i32 9
  store ptr @pmic_conf_items, ptr %72, align 4
  %73 = icmp sgt ptr %22, null
  br i1 %73, label %74, label %309

74:                                               ; preds = %66
  %75 = call i32 @llvm.smax.i32(i32 %23, i32 1)
  br label %76

76:                                               ; preds = %302, %74
  %77 = phi i32 [ %304, %302 ], [ 0, %74 ]
  %78 = phi ptr [ %305, %302 ], [ %44, %74 ]
  %79 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77
  %80 = getelementptr inbounds %struct.pinctrl_pin_desc, ptr %78, i32 0, i32 2
  store ptr %79, ptr %80, align 4
  store i32 %77, ptr %78, align 4
  %81 = getelementptr [36 x ptr], ptr @pmic_gpio_groups, i32 0, i32 %77
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.pinctrl_pin_desc, ptr %78, i32 0, i32 1
  store ptr %82, ptr %83, align 4
  %84 = load i32, ptr %14, align 4
  %85 = shl i32 %77, 8
  %86 = add i32 %84, %85
  %87 = trunc i32 %86 to i16
  store i16 %87, ptr %79, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #14
  store i32 0, ptr %13, align 4, !annotation !8
  %88 = load ptr, ptr %31, align 4
  %89 = and i32 %86, 65535
  %90 = add nuw nsw i32 %89, 4
  %91 = call i32 @regmap_read(ptr noundef %88, i32 noundef %90, ptr noundef nonnull %13) #14
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %76
  %94 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.45, i32 noundef 4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #14
  br label %387

95:                                               ; preds = %76
  %96 = load i32, ptr %13, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #14
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %387, label %98

98:                                               ; preds = %95
  %99 = icmp eq i32 %96, 16
  br i1 %99, label %104, label %100

100:                                              ; preds = %98
  %101 = load ptr, ptr %24, align 4
  %102 = load i16, ptr %79, align 4
  %103 = zext i16 %102 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.92, i32 noundef %96, i32 noundef %103) #15
  br label %387

104:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #14
  store i32 0, ptr %12, align 4, !annotation !8
  %105 = load ptr, ptr %31, align 4
  %106 = load i16, ptr %79, align 4
  %107 = zext i16 %106 to i32
  %108 = add nuw nsw i32 %107, 5
  %109 = call i32 @regmap_read(ptr noundef %105, i32 noundef %108, ptr noundef nonnull %12) #14
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.45, i32 noundef 5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #14
  br label %387

113:                                              ; preds = %104
  %114 = load i32, ptr %12, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #14
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %387, label %116

116:                                              ; preds = %113
  switch i32 %114, label %133 [
    i32 1, label %117
    i32 5, label %119
    i32 9, label %121
    i32 13, label %123
    i32 16, label %125
    i32 17, label %129
  ]

117:                                              ; preds = %116
  %118 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 3
  store i8 1, ptr %118, align 4
  br label %119

119:                                              ; preds = %117, %116
  %120 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 8
  store i32 4, ptr %120, align 4
  br label %135

121:                                              ; preds = %116
  %122 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 3
  store i8 1, ptr %122, align 4
  br label %123

123:                                              ; preds = %121, %116
  %124 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 8
  store i32 8, ptr %124, align 4
  br label %135

125:                                              ; preds = %116
  %126 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 8
  store i32 1, ptr %126, align 4
  %127 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 3
  store i8 1, ptr %127, align 4
  %128 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 7
  store i8 1, ptr %128, align 4
  br label %135

129:                                              ; preds = %116
  %130 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 8
  store i32 2, ptr %130, align 4
  %131 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 3
  store i8 1, ptr %131, align 4
  %132 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 7
  store i8 1, ptr %132, align 4
  br label %135

133:                                              ; preds = %116
  %134 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.93, i32 noundef %114) #15
  br label %387

135:                                              ; preds = %129, %125, %123, %119
  %136 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 7
  %137 = load i8, ptr %136, align 4, !range !10
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %170, label %139

139:                                              ; preds = %135
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #14
  store i32 0, ptr %11, align 4, !annotation !8
  %140 = load ptr, ptr %31, align 4
  %141 = load i16, ptr %79, align 4
  %142 = zext i16 %141 to i32
  %143 = add nuw nsw i32 %142, 68
  %144 = call i32 @regmap_read(ptr noundef %140, i32 noundef %143, ptr noundef nonnull %11) #14
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str.45, i32 noundef 68) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #14
  br label %387

148:                                              ; preds = %139
  %149 = load i32, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #14
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %387, label %151

151:                                              ; preds = %148
  %152 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 2
  %153 = trunc i32 %149 to i8
  %154 = lshr i8 %153, 7
  store i8 %154, ptr %152, align 1
  %155 = and i32 %149, 15
  %156 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 13
  store i32 %155, ptr %156, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  store i32 0, ptr %10, align 4, !annotation !8
  %157 = load ptr, ptr %31, align 4
  %158 = load i16, ptr %79, align 4
  %159 = zext i16 %158 to i32
  %160 = add nuw nsw i32 %159, 64
  %161 = call i32 @regmap_read(ptr noundef %157, i32 noundef %160, ptr noundef nonnull %10) #14
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %151
  %164 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.45, i32 noundef 64) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  br label %387

165:                                              ; preds = %151
  %166 = load i32, ptr %10, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %387, label %168

168:                                              ; preds = %165
  %169 = and i32 %166, 3
  br label %191

170:                                              ; preds = %135
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  store i32 0, ptr %9, align 4, !annotation !8
  %171 = load ptr, ptr %31, align 4
  %172 = load i16, ptr %79, align 4
  %173 = zext i16 %172 to i32
  %174 = add nuw nsw i32 %173, 64
  %175 = call i32 @regmap_read(ptr noundef %171, i32 noundef %174, ptr noundef nonnull %9) #14
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %170
  %178 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %178, ptr noundef nonnull @.str.45, i32 noundef 64) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  br label %387

179:                                              ; preds = %170
  %180 = load i32, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %387, label %182

182:                                              ; preds = %179
  %183 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 2
  %184 = trunc i32 %180 to i8
  %185 = and i8 %184, 1
  store i8 %185, ptr %183, align 1
  %186 = lshr i32 %180, 4
  %187 = and i32 %186, 7
  %188 = lshr i32 %180, 1
  %189 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 13
  %190 = and i32 %188, 7
  store i32 %190, ptr %189, align 4
  br label %191

191:                                              ; preds = %182, %168
  %192 = phi i32 [ %169, %168 ], [ %187, %182 ]
  switch i32 %192, label %207 [
    i32 0, label %193
    i32 1, label %196
    i32 2, label %199
    i32 3, label %202
  ]

193:                                              ; preds = %191
  %194 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 5
  store i8 1, ptr %194, align 2
  %195 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 4
  store i8 0, ptr %195, align 1
  br label %209

196:                                              ; preds = %191
  %197 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 5
  store i8 0, ptr %197, align 2
  %198 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 4
  store i8 1, ptr %198, align 1
  br label %209

199:                                              ; preds = %191
  %200 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 5
  store i8 1, ptr %200, align 2
  %201 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 4
  store i8 1, ptr %201, align 1
  br label %209

202:                                              ; preds = %191
  %203 = load i8, ptr %136, align 4, !range !10
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %387, label %205

205:                                              ; preds = %202
  %206 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 6
  store i8 1, ptr %206, align 1
  br label %209

207:                                              ; preds = %191
  %208 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %208, ptr noundef nonnull @.str.94) #15
  br label %387

209:                                              ; preds = %205, %199, %196, %193
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 0, ptr %8, align 4, !annotation !8
  %210 = load ptr, ptr %31, align 4
  %211 = load i16, ptr %79, align 4
  %212 = zext i16 %211 to i32
  %213 = add nuw nsw i32 %212, 65
  %214 = call i32 @regmap_read(ptr noundef %210, i32 noundef %213, ptr noundef nonnull %8) #14
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %209
  %217 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %217, ptr noundef nonnull @.str.45, i32 noundef 65) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  br label %387

218:                                              ; preds = %209
  %219 = load i32, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %387, label %221

221:                                              ; preds = %218
  %222 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 9
  %223 = and i32 %219, 7
  store i32 %223, ptr %222, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4, !annotation !8
  %224 = load ptr, ptr %31, align 4
  %225 = load i16, ptr %79, align 4
  %226 = zext i16 %225 to i32
  %227 = add nuw nsw i32 %226, 66
  %228 = call i32 @regmap_read(ptr noundef %224, i32 noundef %227, ptr noundef nonnull %7) #14
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %221
  %231 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %231, ptr noundef nonnull @.str.45, i32 noundef 66) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  br label %387

232:                                              ; preds = %221
  %233 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %387, label %235

235:                                              ; preds = %232
  %236 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 11
  %237 = and i32 %233, 7
  store i32 %237, ptr %236, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !8
  %238 = load ptr, ptr %31, align 4
  %239 = load i16, ptr %79, align 4
  %240 = zext i16 %239 to i32
  %241 = add nuw nsw i32 %240, 67
  %242 = call i32 @regmap_read(ptr noundef %238, i32 noundef %241, ptr noundef nonnull %6) #14
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %235
  %245 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %245, ptr noundef nonnull @.str.45, i32 noundef 67) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %387

246:                                              ; preds = %235
  %247 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %387, label %249

249:                                              ; preds = %246
  %250 = load i8, ptr %136, align 4, !range !10
  %251 = icmp eq i8 %250, 0
  %252 = and i32 %247, 128
  %253 = icmp eq i32 %252, 0
  %254 = select i1 %251, i1 true, i1 %253
  br i1 %254, label %258, label %255

255:                                              ; preds = %249
  %256 = and i32 %247, 7
  %257 = add nuw nsw i32 %256, 1
  br label %264

258:                                              ; preds = %249
  br i1 %251, label %259, label %264

259:                                              ; preds = %258
  %260 = call i32 @llvm.cttz.i32(i32 %247, i1 true) #14, !range !11
  %261 = add nuw nsw i32 %260, 1
  %262 = icmp eq i32 %247, 0
  %263 = select i1 %262, i32 0, i32 %261
  br label %264

264:                                              ; preds = %259, %258, %255
  %265 = phi i32 [ %263, %259 ], [ %257, %255 ], [ 0, %258 ]
  %266 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 15
  store i32 %265, ptr %266, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %267 = load ptr, ptr %31, align 4
  %268 = load i16, ptr %79, align 4
  %269 = zext i16 %268 to i32
  %270 = add nuw nsw i32 %269, 69
  %271 = call i32 @regmap_read(ptr noundef %267, i32 noundef %270, ptr noundef nonnull %5) #14
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %264
  %274 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %274, ptr noundef nonnull @.str.45, i32 noundef 69) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %387

275:                                              ; preds = %264
  %276 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %387, label %278

278:                                              ; preds = %275
  %279 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 12
  %280 = and i32 %276, 3
  store i32 %280, ptr %279, align 4
  %281 = lshr i32 %276, 4
  %282 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 10
  %283 = and i32 %281, 3
  store i32 %283, ptr %282, align 4
  %284 = load i8, ptr %136, align 4, !range !10
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %302, label %286

286:                                              ; preds = %278
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  %287 = load ptr, ptr %31, align 4
  %288 = load i16, ptr %79, align 4
  %289 = zext i16 %288 to i32
  %290 = add nuw nsw i32 %289, 74
  %291 = call i32 @regmap_read(ptr noundef %287, i32 noundef %290, ptr noundef nonnull %2) #14
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %286
  %294 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %294, ptr noundef nonnull @.str.45, i32 noundef 74) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br label %387

295:                                              ; preds = %286
  %296 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %387, label %298

298:                                              ; preds = %295
  %299 = and i32 %296, 3
  %300 = add nuw nsw i32 %299, 1
  %301 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 14
  store i32 %300, ptr %301, align 4
  br label %302

302:                                              ; preds = %298, %278
  %303 = getelementptr %struct.pmic_gpio_pad, ptr %51, i32 %77, i32 1
  store i8 1, ptr %303, align 2
  %304 = add nuw nsw i32 %77, 1
  %305 = getelementptr %struct.pinctrl_pin_desc, ptr %78, i32 1
  %306 = icmp eq i32 %304, %75
  br i1 %306, label %307, label %76

307:                                              ; preds = %302
  %308 = load ptr, ptr %61, align 4
  br label %309

309:                                              ; preds = %307, %66
  %310 = phi ptr [ %308, %307 ], [ %62, %66 ]
  %311 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(304) %311, ptr noundef nonnull align 4 dereferenceable(304) @pmic_gpio_gpio_template, i32 304, i1 false)
  %312 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 3, i32 2
  store ptr %15, ptr %312, align 4
  %313 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 3, i32 19
  store i32 -1, ptr %313, align 4
  %314 = trunc i32 %23 to i16
  %315 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 3, i32 20
  store i16 %314, ptr %315, align 4
  %316 = icmp eq ptr %310, null
  br i1 %316, label %317, label %319

317:                                              ; preds = %309
  %318 = load ptr, ptr %15, align 4
  br label %319

319:                                              ; preds = %317, %309
  %320 = phi ptr [ %318, %317 ], [ %310, %309 ]
  store ptr %320, ptr %311, align 4
  %321 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 3, i32 40
  store i32 2, ptr %321, align 4
  %322 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 3, i32 23
  store i8 0, ptr %322, align 4
  %323 = call ptr @devm_pinctrl_register(ptr noundef %15, ptr noundef nonnull %54, ptr noundef nonnull %24) #14
  %324 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 2
  store ptr %323, ptr %324, align 4
  %325 = icmp ugt ptr %323, inttoptr (i32 -4096 to ptr)
  br i1 %325, label %326, label %328

326:                                              ; preds = %319
  %327 = ptrtoint ptr %323 to i32
  br label %387

328:                                              ; preds = %319
  %329 = load ptr, ptr %24, align 4
  %330 = getelementptr inbounds %struct.device, ptr %329, i32 0, i32 25
  %331 = load ptr, ptr %330, align 8
  %332 = call ptr @of_irq_find_parent(ptr noundef %331) #14
  %333 = icmp eq ptr %332, null
  br i1 %333, label %387, label %334

334:                                              ; preds = %328
  %335 = getelementptr inbounds %struct.device_node, ptr %332, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #14
  %336 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %336, i8 0, i64 68, i1 false) #14
  store ptr %335, ptr %4, align 4
  %337 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %4, i32 noundef 1) #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #14
  %338 = icmp eq ptr %337, null
  br i1 %338, label %340, label %339

339:                                              ; preds = %334
  call void @of_node_put(ptr noundef nonnull %332) #14
  br label %344

340:                                              ; preds = %334
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #14
  %341 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %341, i8 0, i64 68, i1 false) #14
  store ptr %335, ptr %3, align 4
  %342 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #14
  call void @of_node_put(ptr noundef nonnull %332) #14
  %343 = icmp eq ptr %342, null
  br i1 %343, label %387, label %344

344:                                              ; preds = %340, %339
  %345 = phi ptr [ %337, %339 ], [ %342, %340 ]
  %346 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 4
  %347 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 4, i32 1
  store ptr @.str.3, ptr %347, align 4
  %348 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 4, i32 6
  store ptr @irq_chip_ack_parent, ptr %348, align 4
  %349 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 4, i32 7
  store ptr @irq_chip_mask_parent, ptr %349, align 4
  %350 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 4, i32 9
  store ptr @irq_chip_unmask_parent, ptr %350, align 4
  %351 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 4, i32 13
  store ptr @irq_chip_set_type_parent, ptr %351, align 4
  %352 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 4, i32 14
  store ptr @irq_chip_set_wake_parent, ptr %352, align 4
  %353 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 4, i32 33
  store i32 4, ptr %353, align 4
  %354 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 3, i32 37
  store ptr %346, ptr %354, align 4
  %355 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 3, i32 37, i32 10
  store i32 0, ptr %355, align 4
  %356 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 3, i32 37, i32 9
  store ptr @handle_level_irq, ptr %356, align 4
  %357 = load ptr, ptr %24, align 4
  %358 = getelementptr inbounds %struct.device, ptr %357, i32 0, i32 25
  %359 = load ptr, ptr %358, align 8
  %360 = icmp eq ptr %359, null
  %361 = getelementptr inbounds %struct.device_node, ptr %359, i32 0, i32 3
  %362 = select i1 %360, ptr null, ptr %361
  %363 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 3, i32 37, i32 3
  store ptr %362, ptr %363, align 4
  %364 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 3, i32 37, i32 4
  store ptr %345, ptr %364, align 4
  %365 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 3, i32 37, i32 5
  store ptr @pmic_gpio_child_to_parent_hwirq, ptr %365, align 4
  %366 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 3, i32 37, i32 6
  store ptr @pmic_gpio_populate_parent_fwspec, ptr %366, align 4
  %367 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 3, i32 37, i32 7
  store ptr @pmic_gpio_child_offset_to_irq, ptr %367, align 4
  %368 = getelementptr inbounds %struct.pmic_gpio_state, ptr %24, i32 0, i32 3, i32 37, i32 8, i32 9
  store ptr @pmic_gpio_domain_translate, ptr %368, align 4
  %369 = call i32 @gpiochip_add_data_with_key(ptr noundef %311, ptr noundef %24, ptr noundef null, ptr noundef null) #14
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %373, label %371

371:                                              ; preds = %344
  %372 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %372, ptr noundef nonnull @.str.4) #15
  br label %387

373:                                              ; preds = %344
  %374 = load ptr, ptr %16, align 8
  %375 = call ptr @of_find_property(ptr noundef %374, ptr noundef nonnull @.str.5, ptr noundef null) #14
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %387

377:                                              ; preds = %373
  %378 = load ptr, ptr %61, align 4
  %379 = icmp eq ptr %378, null
  br i1 %379, label %380, label %382

380:                                              ; preds = %377
  %381 = load ptr, ptr %15, align 4
  br label %382

382:                                              ; preds = %380, %377
  %383 = phi ptr [ %381, %380 ], [ %378, %377 ]
  %384 = call i32 @gpiochip_add_pin_range(ptr noundef %311, ptr noundef %383, i32 noundef 0, i32 noundef 0, i32 noundef %23) #14
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %387, label %386

386:                                              ; preds = %382
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.6) #15
  call void @gpiochip_remove(ptr noundef %311) #14
  br label %387

387:                                              ; preds = %386, %382, %373, %371, %340, %328, %326, %295, %293, %275, %273, %246, %244, %232, %230, %218, %216, %207, %202, %179, %177, %165, %163, %148, %146, %133, %113, %111, %100, %95, %93, %53, %49, %46, %42, %26, %21, %20
  %388 = phi i32 [ %18, %20 ], [ %327, %326 ], [ %369, %371 ], [ %384, %386 ], [ -12, %21 ], [ -12, %42 ], [ -12, %49 ], [ -12, %53 ], [ -6, %328 ], [ -6, %340 ], [ 0, %382 ], [ 0, %373 ], [ -12, %26 ], [ -12, %46 ], [ %291, %293 ], [ %271, %273 ], [ %242, %244 ], [ %228, %230 ], [ %214, %216 ], [ %175, %177 ], [ %161, %163 ], [ %144, %146 ], [ %109, %111 ], [ %91, %93 ], [ -19, %207 ], [ -19, %133 ], [ -19, %100 ], [ %96, %95 ], [ %114, %113 ], [ %149, %148 ], [ %166, %165 ], [ %180, %179 ], [ -19, %202 ], [ %219, %218 ], [ %233, %232 ], [ %247, %246 ], [ %276, %275 ], [ %296, %295 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #14
  ret i32 %388
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_gpio_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pmic_gpio_state, ptr %3, i32 0, i32 3
  tail call void @gpiochip_remove(ptr noundef %4) #14
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_irq_find_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_ack_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_wake_parent(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_gpio_child_to_parent_hwirq(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #2 {
  %6 = tail call ptr @gpiochip_get_data(ptr noundef %0) #14
  %7 = getelementptr inbounds %struct.pmic_gpio_state, ptr %6, i32 0, i32 6
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = add i32 %9, %1
  store i32 %10, ptr %3, align 4
  store i32 %2, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @pmic_gpio_populate_parent_fwspec(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #14
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 72) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.irq_domain, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  store ptr %12, ptr %6, align 8
  %13 = getelementptr inbounds %struct.irq_fwspec, ptr %6, i32 0, i32 1
  store i32 4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.pmic_gpio_state, ptr %4, i32 0, i32 5
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.irq_fwspec, ptr %6, i32 0, i32 2
  store i32 %16, ptr %17, align 8
  %18 = getelementptr %struct.irq_fwspec, ptr %6, i32 0, i32 2, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr %struct.irq_fwspec, ptr %6, i32 0, i32 2, i32 3
  store i32 %2, ptr %19, align 4
  br label %20

20:                                               ; preds = %8, %3
  ret ptr %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pmic_gpio_child_offset_to_irq(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  %3 = add i32 %1, 1
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pmic_gpio_domain_translate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #7 {
  %5 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %23

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gpio_chip, ptr %6, i32 0, i32 20
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = icmp ugt i32 %12, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = add i32 %12, -1
  store i32 %20, ptr %2, align 4
  %21 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %3, align 4
  br label %23

23:                                               ; preds = %19, %14, %10, %4
  %24 = phi i32 [ 0, %19 ], [ -22, %14 ], [ -22, %10 ], [ -22, %4 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @pmic_gpio_get_groups_count(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pinctrl_desc, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @pmic_gpio_get_group_name(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pinctrl_desc, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.pinctrl_pin_desc, ptr %6, i32 %1, i32 1
  %8 = load ptr, ptr %7, align 4
  ret ptr %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pmic_gpio_get_group_pins(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #7 {
  %5 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pinctrl_desc, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.pinctrl_pin_desc, ptr %8, i32 %1
  store ptr %9, ptr %2, align 4
  store i32 1, ptr %3, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_group(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #10 {
  %5 = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 4) #14
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pmic_gpio_get_functions_count(ptr nocapture noundef readnone %0) #6 {
  ret i32 10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @pmic_gpio_get_function_name(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  %3 = getelementptr [10 x ptr], ptr @pmic_gpio_functions, i32 0, i32 %1
  %4 = load ptr, ptr %3, align 4
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pmic_gpio_get_function_groups(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #7 {
  store ptr @pmic_gpio_groups, ptr %2, align 4
  %5 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pinctrl_desc, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_gpio_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %5 = icmp ugt i32 %1, 9
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %1) #15
  br label %115

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.pinctrl_desc, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.pinctrl_pin_desc, ptr %12, i32 %2, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %14, i32 0, i32 7
  %16 = load i8, ptr %15, align 4, !range !10
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %8
  %19 = and i32 %1, -2
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #15
  br label %115

23:                                               ; preds = %18
  %24 = icmp ugt i32 %1, 5
  %25 = add nsw i32 %1, -2
  %26 = select i1 %24, i32 %25, i32 %1
  br label %27

27:                                               ; preds = %23, %8
  %28 = phi i32 [ %1, %8 ], [ %26, %23 ]
  %29 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %14, i32 0, i32 13
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %14, i32 0, i32 6
  %31 = load i8, ptr %30, align 1, !range !10
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %14, i32 0, i32 4
  %35 = load i8, ptr %34, align 1, !range !10
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %14, i32 0, i32 5
  %39 = load i8, ptr %38, align 2, !range !10
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %33
  %42 = xor i1 %36, true
  %43 = zext i1 %42 to i32
  br label %44

44:                                               ; preds = %41, %37, %27
  %45 = phi i32 [ 3, %27 ], [ 2, %37 ], [ %43, %41 ]
  br i1 %17, label %84, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.pmic_gpio_state, ptr %4, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load i16, ptr %14, align 4
  %50 = zext i16 %49 to i32
  %51 = add nuw nsw i32 %50, 64
  %52 = tail call i32 @regmap_write(ptr noundef %48, i32 noundef %51, i32 noundef %45) #14
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.19, i32 noundef 64) #15
  br label %115

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %14, i32 0, i32 14
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, -1
  %60 = load ptr, ptr %47, align 4
  %61 = load i16, ptr %14, align 4
  %62 = zext i16 %61 to i32
  %63 = add nuw nsw i32 %62, 74
  %64 = tail call i32 @regmap_write(ptr noundef %60, i32 noundef %63, i32 noundef %59) #14
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.19, i32 noundef 74) #15
  br label %115

68:                                               ; preds = %56
  %69 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %14, i32 0, i32 2
  %70 = load i8, ptr %69, align 1, !range !10
  %71 = shl nuw i8 %70, 7
  %72 = zext i8 %71 to i32
  %73 = load i32, ptr %29, align 4
  %74 = and i32 %73, 15
  %75 = or i32 %74, %72
  %76 = load ptr, ptr %47, align 4
  %77 = load i16, ptr %14, align 4
  %78 = zext i16 %77 to i32
  %79 = add nuw nsw i32 %78, 68
  %80 = tail call i32 @regmap_write(ptr noundef %76, i32 noundef %79, i32 noundef %75) #14
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %68
  %83 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.19, i32 noundef 68) #15
  br label %115

84:                                               ; preds = %44
  %85 = shl nuw nsw i32 %45, 4
  %86 = shl nuw nsw i32 %28, 1
  %87 = or i32 %85, %86
  %88 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %14, i32 0, i32 2
  %89 = load i8, ptr %88, align 1, !range !10
  %90 = zext i8 %89 to i32
  %91 = or i32 %87, %90
  %92 = getelementptr inbounds %struct.pmic_gpio_state, ptr %4, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = load i16, ptr %14, align 4
  %95 = zext i16 %94 to i32
  %96 = add nuw nsw i32 %95, 64
  %97 = tail call i32 @regmap_write(ptr noundef %93, i32 noundef %96, i32 noundef %91) #14
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %84
  %100 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.19, i32 noundef 64) #15
  br label %115

101:                                              ; preds = %84, %68
  %102 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %14, i32 0, i32 1
  %103 = load i8, ptr %102, align 2, !range !10
  %104 = shl nuw i8 %103, 7
  %105 = zext i8 %104 to i32
  %106 = getelementptr inbounds %struct.pmic_gpio_state, ptr %4, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = load i16, ptr %14, align 4
  %109 = zext i16 %108 to i32
  %110 = add nuw nsw i32 %109, 70
  %111 = tail call i32 @regmap_write(ptr noundef %107, i32 noundef %110, i32 noundef %105) #14
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %101
  %114 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.19, i32 noundef 70) #15
  br label %115

115:                                              ; preds = %113, %101, %99, %82, %66, %54, %21, %6
  %116 = phi i32 [ -22, %6 ], [ -22, %21 ], [ %52, %54 ], [ %64, %66 ], [ %80, %82 ], [ %97, %99 ], [ %111, %101 ], [ %111, %113 ]
  ret i32 %116
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pmic_gpio_config_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) #7 {
  %4 = load i32, ptr %2, align 4
  %5 = and i32 %4, 255
  %6 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pinctrl_desc, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.pinctrl_pin_desc, ptr %9, i32 %1, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = trunc i32 %4 to i8
  switch i8 %12, label %76 [
    i8 8, label %13
    i8 6, label %17
    i8 7, label %21
    i8 3, label %25
    i8 1, label %29
    i8 5, label %33
    i8 2, label %37
    i8 21, label %41
    i8 12, label %44
    i8 18, label %48
    i8 17, label %52
    i8 -128, label %56
    i8 -127, label %59
    i8 -126, label %62
    i8 -125, label %65
    i8 -124, label %69
  ]

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %72, label %76

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %72, label %76

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %72, label %76

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 11
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %72, label %76

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 11
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 5
  br i1 %32, label %72, label %76

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 11
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %72, label %76

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 1
  %39 = load i8, ptr %38, align 2, !range !10
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %72, label %76

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 9
  %43 = load i32, ptr %42, align 4
  br label %72

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 5
  %46 = load i8, ptr %45, align 2, !range !10
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %76, label %72

48:                                               ; preds = %3
  %49 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 4
  %50 = load i8, ptr %49, align 1, !range !10
  %51 = zext i8 %50 to i32
  br label %72

52:                                               ; preds = %3
  %53 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 2
  %54 = load i8, ptr %53, align 1, !range !10
  %55 = zext i8 %54 to i32
  br label %72

56:                                               ; preds = %3
  %57 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 11
  %58 = load i32, ptr %57, align 4
  br label %72

59:                                               ; preds = %3
  %60 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 12
  %61 = load i32, ptr %60, align 4
  br label %72

62:                                               ; preds = %3
  %63 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 14
  %64 = load i32, ptr %63, align 4
  br label %72

65:                                               ; preds = %3
  %66 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 6
  %67 = load i8, ptr %66, align 1, !range !10
  %68 = zext i8 %67 to i32
  br label %72

69:                                               ; preds = %3
  %70 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 15
  %71 = load i32, ptr %70, align 4
  br label %72

72:                                               ; preds = %69, %65, %62, %59, %56, %52, %48, %44, %41, %37, %33, %29, %25, %21, %17, %13
  %73 = phi i32 [ %71, %69 ], [ %68, %65 ], [ %64, %62 ], [ %61, %59 ], [ %58, %56 ], [ %55, %52 ], [ %51, %48 ], [ %43, %41 ], [ 1, %13 ], [ 1, %17 ], [ 1, %21 ], [ 1, %25 ], [ 1, %29 ], [ 1, %33 ], [ 1, %37 ], [ 1, %44 ]
  %74 = shl i32 %73, 8
  %75 = or i32 %74, %5
  store i32 %75, ptr %2, align 4
  br label %76

76:                                               ; preds = %72, %44, %37, %33, %29, %25, %21, %17, %13, %3
  %77 = phi i32 [ 0, %72 ], [ -22, %13 ], [ -22, %17 ], [ -22, %21 ], [ -22, %25 ], [ -22, %29 ], [ -22, %33 ], [ -22, %37 ], [ -22, %44 ], [ -22, %3 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_gpio_config_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %6 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pinctrl_desc, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.pinctrl_pin_desc, ptr %9, i32 %1, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 1
  store i8 1, ptr %12, align 2
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %85, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 15
  %16 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 7
  %17 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 6
  %18 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 14
  %19 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 12
  %20 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 11
  %21 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 4
  %22 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 2
  %23 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 5
  %24 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 8
  %25 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 9
  %26 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 3
  %27 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 10
  br label %28

28:                                               ; preds = %82, %14
  %29 = phi i32 [ 0, %14 ], [ %83, %82 ]
  %30 = getelementptr i32, ptr %2, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %31, 8
  %33 = trunc i32 %31 to i8
  switch i8 %33, label %220 [
    i8 8, label %34
    i8 6, label %35
    i8 7, label %39
    i8 1, label %43
    i8 5, label %44
    i8 3, label %45
    i8 2, label %49
    i8 21, label %50
    i8 12, label %54
    i8 18, label %57
    i8 17, label %60
    i8 -128, label %63
    i8 -127, label %66
    i8 -126, label %69
    i8 -125, label %75
    i8 -124, label %79
  ]

34:                                               ; preds = %28
  store i32 0, ptr %27, align 4
  br label %82

35:                                               ; preds = %28
  %36 = load i8, ptr %26, align 4, !range !10
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %220, label %38

38:                                               ; preds = %35
  store i32 1, ptr %27, align 4
  br label %82

39:                                               ; preds = %28
  %40 = load i8, ptr %26, align 4, !range !10
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %220, label %42

42:                                               ; preds = %39
  store i32 2, ptr %27, align 4
  br label %82

43:                                               ; preds = %28
  store i32 5, ptr %20, align 4
  br label %82

44:                                               ; preds = %28
  store i32 0, ptr %20, align 4
  br label %82

45:                                               ; preds = %28
  %46 = icmp ult i32 %31, 256
  br i1 %46, label %48, label %47

47:                                               ; preds = %45
  store i32 4, ptr %20, align 4
  br label %82

48:                                               ; preds = %45
  store i32 5, ptr %20, align 4
  br label %82

49:                                               ; preds = %28
  store i8 0, ptr %12, align 2
  br label %82

50:                                               ; preds = %28
  %51 = load i32, ptr %24, align 4
  %52 = icmp ult i32 %32, %51
  br i1 %52, label %53, label %220

53:                                               ; preds = %50
  store i32 %32, ptr %25, align 4
  br label %82

54:                                               ; preds = %28
  %55 = icmp ugt i32 %31, 255
  %56 = zext i1 %55 to i8
  store i8 %56, ptr %23, align 2
  br label %82

57:                                               ; preds = %28
  %58 = icmp ugt i32 %31, 255
  %59 = zext i1 %58 to i8
  store i8 %59, ptr %21, align 1
  br label %82

60:                                               ; preds = %28
  store i8 1, ptr %21, align 1
  %61 = icmp ugt i32 %31, 255
  %62 = zext i1 %61 to i8
  store i8 %62, ptr %22, align 1
  br label %82

63:                                               ; preds = %28
  %64 = icmp ugt i32 %31, 1023
  br i1 %64, label %220, label %65

65:                                               ; preds = %63
  store i32 %32, ptr %20, align 4
  br label %82

66:                                               ; preds = %28
  %67 = icmp ugt i32 %31, 1023
  br i1 %67, label %220, label %68

68:                                               ; preds = %66
  store i32 %32, ptr %19, align 4
  br label %82

69:                                               ; preds = %28
  %70 = load i8, ptr %16, align 4, !range !10
  %71 = icmp eq i8 %70, 0
  %72 = icmp ugt i32 %31, 1279
  %73 = select i1 %71, i1 true, i1 %72
  br i1 %73, label %220, label %74

74:                                               ; preds = %69
  store i32 %32, ptr %18, align 4
  br label %82

75:                                               ; preds = %28
  %76 = load i8, ptr %16, align 4, !range !10
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %220, label %78

78:                                               ; preds = %75
  store i8 1, ptr %17, align 1
  br label %82

79:                                               ; preds = %28
  %80 = icmp ugt i32 %31, 1279
  br i1 %80, label %220, label %81

81:                                               ; preds = %79
  store i32 %32, ptr %15, align 4
  br label %82

82:                                               ; preds = %81, %78, %74, %68, %65, %60, %57, %54, %53, %49, %48, %47, %44, %43, %42, %38, %34
  %83 = add nuw i32 %29, 1
  %84 = icmp eq i32 %83, %3
  br i1 %84, label %85, label %28

85:                                               ; preds = %82, %4
  %86 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 9
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.pmic_gpio_state, ptr %5, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = load i16, ptr %11, align 4
  %91 = zext i16 %90 to i32
  %92 = add nuw nsw i32 %91, 65
  %93 = tail call i32 @regmap_write(ptr noundef %89, i32 noundef %92, i32 noundef %87) #14
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %216, label %95

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 11
  %97 = load i32, ptr %96, align 4
  %98 = load ptr, ptr %88, align 4
  %99 = load i16, ptr %11, align 4
  %100 = zext i16 %99 to i32
  %101 = add nuw nsw i32 %100, 66
  %102 = tail call i32 @regmap_write(ptr noundef %98, i32 noundef %101, i32 noundef %97) #14
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %216, label %104

104:                                              ; preds = %95
  %105 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 10
  %106 = load i32, ptr %105, align 4
  %107 = shl i32 %106, 4
  %108 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 12
  %109 = load i32, ptr %108, align 4
  %110 = or i32 %107, %109
  %111 = load ptr, ptr %88, align 4
  %112 = load i16, ptr %11, align 4
  %113 = zext i16 %112 to i32
  %114 = add nuw nsw i32 %113, 69
  %115 = tail call i32 @regmap_write(ptr noundef %111, i32 noundef %114, i32 noundef %110) #14
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %216, label %117

117:                                              ; preds = %104
  %118 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 15
  %119 = load i32, ptr %118, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 7
  %123 = load i8, ptr %122, align 4, !range !10
  %124 = icmp eq i8 %123, 0
  %125 = add i32 %119, -1
  br i1 %124, label %128, label %126

126:                                              ; preds = %121
  %127 = or i32 %125, 128
  br label %130

128:                                              ; preds = %121
  %129 = shl nuw i32 1, %125
  br label %130

130:                                              ; preds = %128, %126, %117
  %131 = phi i32 [ %127, %126 ], [ %129, %128 ], [ 0, %117 ]
  %132 = load ptr, ptr %88, align 4
  %133 = load i16, ptr %11, align 4
  %134 = zext i16 %133 to i32
  %135 = add nuw nsw i32 %134, 67
  %136 = tail call i32 @regmap_write(ptr noundef %132, i32 noundef %135, i32 noundef %131) #14
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %216, label %138

138:                                              ; preds = %130
  %139 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 6
  %140 = load i8, ptr %139, align 1, !range !10
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 4
  %144 = load i8, ptr %143, align 1, !range !10
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 5
  %148 = load i8, ptr %147, align 2, !range !10
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %146, %142
  %151 = xor i1 %145, true
  %152 = zext i1 %151 to i32
  br label %153

153:                                              ; preds = %150, %146, %138
  %154 = phi i32 [ 3, %138 ], [ 2, %146 ], [ %152, %150 ]
  %155 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 7
  %156 = load i8, ptr %155, align 4, !range !10
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %190, label %158

158:                                              ; preds = %153
  %159 = load ptr, ptr %88, align 4
  %160 = load i16, ptr %11, align 4
  %161 = zext i16 %160 to i32
  %162 = add nuw nsw i32 %161, 64
  %163 = tail call i32 @regmap_write(ptr noundef %159, i32 noundef %162, i32 noundef %154) #14
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %216, label %165

165:                                              ; preds = %158
  %166 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 14
  %167 = load i32, ptr %166, align 4
  %168 = add i32 %167, -1
  %169 = load ptr, ptr %88, align 4
  %170 = load i16, ptr %11, align 4
  %171 = zext i16 %170 to i32
  %172 = add nuw nsw i32 %171, 74
  %173 = tail call i32 @regmap_write(ptr noundef %169, i32 noundef %172, i32 noundef %168) #14
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %216, label %175

175:                                              ; preds = %165
  %176 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 2
  %177 = load i8, ptr %176, align 1, !range !10
  %178 = shl nuw i8 %177, 7
  %179 = zext i8 %178 to i32
  %180 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 13
  %181 = load i32, ptr %180, align 4
  %182 = and i32 %181, 15
  %183 = or i32 %182, %179
  %184 = load ptr, ptr %88, align 4
  %185 = load i16, ptr %11, align 4
  %186 = zext i16 %185 to i32
  %187 = add nuw nsw i32 %186, 68
  %188 = tail call i32 @regmap_write(ptr noundef %184, i32 noundef %187, i32 noundef %183) #14
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %216, label %206

190:                                              ; preds = %153
  %191 = shl nuw nsw i32 %154, 4
  %192 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 13
  %193 = load i32, ptr %192, align 4
  %194 = shl i32 %193, 1
  %195 = or i32 %194, %191
  %196 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %11, i32 0, i32 2
  %197 = load i8, ptr %196, align 1, !range !10
  %198 = zext i8 %197 to i32
  %199 = or i32 %195, %198
  %200 = load ptr, ptr %88, align 4
  %201 = load i16, ptr %11, align 4
  %202 = zext i16 %201 to i32
  %203 = add nuw nsw i32 %202, 64
  %204 = tail call i32 @regmap_write(ptr noundef %200, i32 noundef %203, i32 noundef %199) #14
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %216, label %206

206:                                              ; preds = %190, %175
  %207 = load i8, ptr %12, align 2, !range !10
  %208 = shl nuw i8 %207, 7
  %209 = zext i8 %208 to i32
  %210 = load ptr, ptr %88, align 4
  %211 = load i16, ptr %11, align 4
  %212 = zext i16 %211 to i32
  %213 = add nuw nsw i32 %212, 70
  %214 = tail call i32 @regmap_write(ptr noundef %210, i32 noundef %213, i32 noundef %209) #14
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %206, %190, %175, %165, %158, %130, %104, %95, %85
  %217 = phi i32 [ 65, %85 ], [ 66, %95 ], [ 69, %104 ], [ 67, %130 ], [ 64, %158 ], [ 74, %165 ], [ 68, %175 ], [ 64, %190 ], [ 70, %206 ]
  %218 = phi i32 [ %93, %85 ], [ %102, %95 ], [ %115, %104 ], [ %136, %130 ], [ %163, %158 ], [ %173, %165 ], [ %188, %175 ], [ %204, %190 ], [ %214, %206 ]
  %219 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %219, ptr noundef nonnull @.str.19, i32 noundef %217) #15
  br label %220

220:                                              ; preds = %216, %206, %79, %75, %69, %66, %63, %50, %39, %35, %28
  %221 = phi i32 [ %214, %206 ], [ %218, %216 ], [ -22, %35 ], [ -22, %39 ], [ -22, %50 ], [ -22, %63 ], [ -22, %66 ], [ -22, %69 ], [ -22, %75 ], [ -22, %79 ], [ -22, %28 ]
  ret i32 %221
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pmic_gpio_config_dbg_show(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %7 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pinctrl_desc, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.pinctrl_pin_desc, ptr %10, i32 %2, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = add i32 %2, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.33, i32 noundef %13) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %14 = getelementptr inbounds %struct.pmic_gpio_state, ptr %6, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load i16, ptr %12, align 4
  %17 = zext i16 %16 to i32
  %18 = add nuw nsw i32 %17, 70
  %19 = call i32 @regmap_read(ptr noundef %15, i32 noundef %18, ptr noundef nonnull %5) #14
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.45, i32 noundef 70) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %26

23:                                               ; preds = %3
  %24 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %25 = icmp sgt i32 %24, 127
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %21
  call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.34) #14
  br label %91

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %12, i32 0, i32 5
  %29 = load i8, ptr %28, align 2, !range !10
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %32 = load ptr, ptr %14, align 4
  %33 = load i16, ptr %12, align 4
  %34 = zext i16 %33 to i32
  %35 = add nuw nsw i32 %34, 16
  %36 = call i32 @regmap_read(ptr noundef %32, i32 noundef %35, ptr noundef nonnull %4) #14
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.45, i32 noundef 16) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %91

40:                                               ; preds = %31
  %41 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %91, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %12, i32 0, i32 2
  %45 = trunc i32 %41 to i8
  %46 = and i8 %45, 1
  store i8 %46, ptr %44, align 1
  br label %47

47:                                               ; preds = %43, %27
  %48 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %12, i32 0, i32 13
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %12, i32 0, i32 7
  %51 = load i8, ptr %50, align 4, !range !10
  %52 = icmp eq i8 %51, 0
  %53 = icmp ugt i32 %49, 3
  %54 = select i1 %52, i1 %53, i1 false
  %55 = add i32 %49, 2
  %56 = select i1 %54, i32 %55, i32 %49
  %57 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %12, i32 0, i32 6
  %58 = load i8, ptr %57, align 1, !range !10
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %47
  call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.35) #14
  br label %66

61:                                               ; preds = %47
  %62 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %12, i32 0, i32 4
  %63 = load i8, ptr %62, align 1, !range !10
  %64 = icmp eq i8 %63, 0
  %65 = select i1 %64, ptr @.str.38, ptr @.str.37
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef nonnull %65) #14
  br label %66

66:                                               ; preds = %61, %60
  %67 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %12, i32 0, i32 2
  %68 = load i8, ptr %67, align 1, !range !10
  %69 = icmp eq i8 %68, 0
  %70 = select i1 %69, ptr @.str.32, ptr @.str.30
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef nonnull %70) #14
  %71 = getelementptr [10 x ptr], ptr @pmic_gpio_functions, i32 0, i32 %56
  %72 = load ptr, ptr %71, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef %72) #14
  %73 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %12, i32 0, i32 9
  %74 = load i32, ptr %73, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.40, i32 noundef %74) #14
  %75 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %12, i32 0, i32 11
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr [6 x ptr], ptr @pmic_gpio_config_dbg_show.biases, i32 0, i32 %76
  %78 = load ptr, ptr %77, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef %78) #14
  %79 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %12, i32 0, i32 10
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr [3 x ptr], ptr @pmic_gpio_config_dbg_show.buffer_types, i32 0, i32 %80
  %82 = load ptr, ptr %81, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.42, ptr noundef %82) #14
  %83 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %12, i32 0, i32 12
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr [4 x ptr], ptr @pmic_gpio_config_dbg_show.strengths, i32 0, i32 %84
  %86 = load ptr, ptr %85, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef %86) #14
  %87 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %12, i32 0, i32 14
  %88 = load i32, ptr %87, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.43, i32 noundef %88) #14
  %89 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %12, i32 0, i32 15
  %90 = load i32, ptr %89, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef %90) #14
  br label %91

91:                                               ; preds = %66, %40, %38, %26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_gpio_direction_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 268, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pmic_gpio_state, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @pmic_gpio_config_set(ptr noundef %6, i32 noundef %1, ptr noundef nonnull %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  %6 = shl i32 %2, 8
  %7 = or i32 %6, 17
  store i32 %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.pmic_gpio_state, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @pmic_gpio_config_set(ptr noundef %9, i32 noundef %1, ptr noundef nonnull %4, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.pmic_gpio_state, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pinctrl_dev, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pinctrl_desc, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.pinctrl_pin_desc, ptr %10, i32 %1, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %12, i32 0, i32 1
  %14 = load i8, ptr %13, align 2, !range !10
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %12, i32 0, i32 5
  %18 = load i8, ptr %17, align 2, !range !10
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %12, i32 0, i32 2
  %22 = load i8, ptr %21, align 1, !range !10
  br label %40

23:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %24 = getelementptr inbounds %struct.pmic_gpio_state, ptr %4, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load i16, ptr %12, align 4
  %27 = zext i16 %26 to i32
  %28 = add nuw nsw i32 %27, 16
  %29 = call i32 @regmap_read(ptr noundef %25, i32 noundef %28, ptr noundef nonnull %3) #14
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.45, i32 noundef 16) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %43

33:                                               ; preds = %23
  %34 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.pmic_gpio_pad, ptr %12, i32 0, i32 2
  %38 = trunc i32 %34 to i8
  %39 = and i8 %38, 1
  store i8 %39, ptr %37, align 1
  br label %40

40:                                               ; preds = %36, %20
  %41 = phi i8 [ %22, %20 ], [ %39, %36 ]
  %42 = zext i8 %41 to i32
  br label %43

43:                                               ; preds = %40, %33, %31, %2
  %44 = phi i32 [ %42, %40 ], [ -22, %2 ], [ %34, %33 ], [ %29, %31 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pmic_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  %6 = shl i32 %2, 8
  %7 = or i32 %6, 17
  store i32 %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.pmic_gpio_state, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @pmic_gpio_config_set(ptr noundef %9, i32 noundef %1, ptr noundef nonnull %4, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pmic_gpio_dbg_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %1) #14
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %5 = load i16, ptr %4, align 4
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pmic_gpio_state, ptr %3, i32 0, i32 2
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ 0, %7 ], [ %12, %9 ]
  %11 = load ptr, ptr %8, align 4
  tail call void @pmic_gpio_config_dbg_show(ptr noundef %11, ptr noundef %0, i32 noundef %10)
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.95) #14
  %12 = add nuw nsw i32 %10, 1
  %13 = load i16, ptr %4, align 4
  %14 = zext i16 %13 to i32
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %9, label %16

16:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pmic_gpio_of_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) #11 {
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 40
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %2, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = getelementptr %struct.of_phandle_args, ptr %1, i32 0, i32 2, i32 1
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %2, align 4
  br label %12

12:                                               ; preds = %9, %7
  %13 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -1
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i32 [ %15, %12 ], [ -22, %3 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
!11 = !{i32 0, i32 33}
