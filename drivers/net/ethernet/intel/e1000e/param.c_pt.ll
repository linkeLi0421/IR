; ModuleID = '/llk/IR/drivers/net/ethernet/intel/e1000e/param.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/e1000e/param.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.90 }
%union.anon.90 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.e1000_option = type { i32, ptr, ptr, i32, %union.anon.121 }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type { i32, i32 }
%struct.e1000_adapter = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, ptr, [128 x i32], i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, ptr, i32, %struct.napi_struct, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, [52 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i64, i32, i32, i32, i32, i16, i32, i32, ptr, ptr, %struct.e1000_hw, %struct.spinlock, %struct.e1000_hw_stats, %struct.e1000_phy_info, %struct.e1000_phy_stats, %struct.e1000_phy_regs, %struct.e1000_ring, %struct.e1000_ring, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i16, i16, %struct.hwtstamp_config, %struct.delayed_work, ptr, i32, %struct.work_struct, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, ptr, %struct.ptp_clock_info, %struct.pm_qos_request, i32, i16, [50 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.e1000_hw = type { ptr, ptr, ptr, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon.117 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_fc_info = type { i32, i32, i16, i16, i8, i8, i32, i32 }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_bus_info = type { i32, i16 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon.117 = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { i8, [2048 x %struct.e1000_shadow_ram], i8, i8, i16, i32 }
%struct.e1000_shadow_ram = type { i16, i8 }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_phy_stats = type { i32, i32 }
%struct.e1000_phy_regs = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.e1000_ring = type { ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, [21 x i8], i32, i32, ptr, i32, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.e1000_opt_list = type { i32, ptr }

@copybreak = dso_local global i32 256, align 4
@__param_str_copybreak = internal constant [17 x i8] c"e1000e.copybreak\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_copybreak = internal constant %struct.kernel_param { ptr @__param_str_copybreak, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.90 { ptr @copybreak } }, section "__param", align 4
@__UNIQUE_ID_copybreaktype334 = internal constant [31 x i8] c"e1000e.parmtype=copybreak:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_copybreak335 = internal constant [87 x i8] c"e1000e.parm=copybreak:Maximum size of packet that is copied to a new buffer on receive\00", section ".modinfo", align 1
@__param_str_TxIntDelay = internal constant [18 x i8] c"e1000e.TxIntDelay\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_TxIntDelay = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_TxIntDelay, ptr @param_ops_int, ptr @TxIntDelay }, align 4
@__param_TxIntDelay = internal constant %struct.kernel_param { ptr @__param_str_TxIntDelay, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.90 { ptr @__param_arr_TxIntDelay } }, section "__param", align 4
@__UNIQUE_ID_TxIntDelaytype336 = internal constant [40 x i8] c"e1000e.parmtype=TxIntDelay:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_TxIntDelay337 = internal constant [48 x i8] c"e1000e.parm=TxIntDelay:Transmit Interrupt Delay\00", section ".modinfo", align 1
@__param_str_TxAbsIntDelay = internal constant [21 x i8] c"e1000e.TxAbsIntDelay\00", align 1
@__param_arr_TxAbsIntDelay = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_TxAbsIntDelay, ptr @param_ops_int, ptr @TxAbsIntDelay }, align 4
@__param_TxAbsIntDelay = internal constant %struct.kernel_param { ptr @__param_str_TxAbsIntDelay, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.90 { ptr @__param_arr_TxAbsIntDelay } }, section "__param", align 4
@__UNIQUE_ID_TxAbsIntDelaytype338 = internal constant [43 x i8] c"e1000e.parmtype=TxAbsIntDelay:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_TxAbsIntDelay339 = internal constant [60 x i8] c"e1000e.parm=TxAbsIntDelay:Transmit Absolute Interrupt Delay\00", section ".modinfo", align 1
@__param_str_RxIntDelay = internal constant [18 x i8] c"e1000e.RxIntDelay\00", align 1
@__param_arr_RxIntDelay = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_RxIntDelay, ptr @param_ops_int, ptr @RxIntDelay }, align 4
@__param_RxIntDelay = internal constant %struct.kernel_param { ptr @__param_str_RxIntDelay, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.90 { ptr @__param_arr_RxIntDelay } }, section "__param", align 4
@__UNIQUE_ID_RxIntDelaytype340 = internal constant [40 x i8] c"e1000e.parmtype=RxIntDelay:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_RxIntDelay341 = internal constant [47 x i8] c"e1000e.parm=RxIntDelay:Receive Interrupt Delay\00", section ".modinfo", align 1
@__param_str_RxAbsIntDelay = internal constant [21 x i8] c"e1000e.RxAbsIntDelay\00", align 1
@__param_arr_RxAbsIntDelay = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_RxAbsIntDelay, ptr @param_ops_int, ptr @RxAbsIntDelay }, align 4
@__param_RxAbsIntDelay = internal constant %struct.kernel_param { ptr @__param_str_RxAbsIntDelay, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.90 { ptr @__param_arr_RxAbsIntDelay } }, section "__param", align 4
@__UNIQUE_ID_RxAbsIntDelaytype342 = internal constant [43 x i8] c"e1000e.parmtype=RxAbsIntDelay:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_RxAbsIntDelay343 = internal constant [59 x i8] c"e1000e.parm=RxAbsIntDelay:Receive Absolute Interrupt Delay\00", section ".modinfo", align 1
@__param_str_InterruptThrottleRate = internal constant [29 x i8] c"e1000e.InterruptThrottleRate\00", align 1
@__param_arr_InterruptThrottleRate = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_InterruptThrottleRate, ptr @param_ops_int, ptr @InterruptThrottleRate }, align 4
@__param_InterruptThrottleRate = internal constant %struct.kernel_param { ptr @__param_str_InterruptThrottleRate, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.90 { ptr @__param_arr_InterruptThrottleRate } }, section "__param", align 4
@__UNIQUE_ID_InterruptThrottleRatetype344 = internal constant [51 x i8] c"e1000e.parmtype=InterruptThrottleRate:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_InterruptThrottleRate345 = internal constant [60 x i8] c"e1000e.parm=InterruptThrottleRate:Interrupt Throttling Rate\00", section ".modinfo", align 1
@__param_str_IntMode = internal constant [15 x i8] c"e1000e.IntMode\00", align 1
@__param_arr_IntMode = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_IntMode, ptr @param_ops_int, ptr @IntMode }, align 4
@__param_IntMode = internal constant %struct.kernel_param { ptr @__param_str_IntMode, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.90 { ptr @__param_arr_IntMode } }, section "__param", align 4
@__UNIQUE_ID_IntModetype346 = internal constant [37 x i8] c"e1000e.parmtype=IntMode:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_IntMode347 = internal constant [35 x i8] c"e1000e.parm=IntMode:Interrupt Mode\00", section ".modinfo", align 1
@__param_str_SmartPowerDownEnable = internal constant [28 x i8] c"e1000e.SmartPowerDownEnable\00", align 1
@__param_arr_SmartPowerDownEnable = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_SmartPowerDownEnable, ptr @param_ops_int, ptr @SmartPowerDownEnable }, align 4
@__param_SmartPowerDownEnable = internal constant %struct.kernel_param { ptr @__param_str_SmartPowerDownEnable, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.90 { ptr @__param_arr_SmartPowerDownEnable } }, section "__param", align 4
@__UNIQUE_ID_SmartPowerDownEnabletype348 = internal constant [50 x i8] c"e1000e.parmtype=SmartPowerDownEnable:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_SmartPowerDownEnable349 = internal constant [61 x i8] c"e1000e.parm=SmartPowerDownEnable:Enable PHY smart power down\00", section ".modinfo", align 1
@__param_str_KumeranLockLoss = internal constant [23 x i8] c"e1000e.KumeranLockLoss\00", align 1
@__param_arr_KumeranLockLoss = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_KumeranLockLoss, ptr @param_ops_int, ptr @KumeranLockLoss }, align 4
@__param_KumeranLockLoss = internal constant %struct.kernel_param { ptr @__param_str_KumeranLockLoss, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.90 { ptr @__param_arr_KumeranLockLoss } }, section "__param", align 4
@__UNIQUE_ID_KumeranLockLosstype350 = internal constant [45 x i8] c"e1000e.parmtype=KumeranLockLoss:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_KumeranLockLoss351 = internal constant [64 x i8] c"e1000e.parm=KumeranLockLoss:Enable Kumeran lock loss workaround\00", section ".modinfo", align 1
@__param_str_WriteProtectNVM = internal constant [23 x i8] c"e1000e.WriteProtectNVM\00", align 1
@__param_arr_WriteProtectNVM = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_WriteProtectNVM, ptr @param_ops_int, ptr @WriteProtectNVM }, align 4
@__param_WriteProtectNVM = internal constant %struct.kernel_param { ptr @__param_str_WriteProtectNVM, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.90 { ptr @__param_arr_WriteProtectNVM } }, section "__param", align 4
@__UNIQUE_ID_WriteProtectNVMtype352 = internal constant [45 x i8] c"e1000e.parmtype=WriteProtectNVM:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_WriteProtectNVM353 = internal constant [98 x i8] c"e1000e.parm=WriteProtectNVM:Write-protect NVM [WARNING: disabling this can lead to corrupted NVM]\00", section ".modinfo", align 1
@__param_str_CrcStripping = internal constant [20 x i8] c"e1000e.CrcStripping\00", align 1
@__param_arr_CrcStripping = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_CrcStripping, ptr @param_ops_int, ptr @CrcStripping }, align 4
@__param_CrcStripping = internal constant %struct.kernel_param { ptr @__param_str_CrcStripping, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.90 { ptr @__param_arr_CrcStripping } }, section "__param", align 4
@__UNIQUE_ID_CrcStrippingtype354 = internal constant [42 x i8] c"e1000e.parmtype=CrcStripping:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_CrcStripping355 = internal constant [81 x i8] c"e1000e.parm=CrcStripping:Enable CRC Stripping, disable if your BMC needs the CRC\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [41 x i8] c"Warning: no configuration for board #%i\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Using defaults for all values\0A\00", align 1
@e1000e_check_options.opt = internal constant %struct.e1000_option { i32 1, ptr @.str.2, ptr @.str.3, i32 8, %union.anon.121 { %struct.anon.122 { i32 0, i32 65535 } } }, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Transmit Interrupt Delay\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"using default of 8\00", align 1
@num_TxIntDelay = internal global i32 0, align 4
@TxIntDelay = internal global [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@e1000e_check_options.opt.4 = internal constant %struct.e1000_option { i32 1, ptr @.str.5, ptr @.str.6, i32 32, %union.anon.121 { %struct.anon.122 { i32 0, i32 65535 } } }, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Transmit Absolute Interrupt Delay\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"using default of 32\00", align 1
@num_TxAbsIntDelay = internal global i32 0, align 4
@TxAbsIntDelay = internal global [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@e1000e_check_options.opt.7 = internal global %struct.e1000_option { i32 1, ptr @.str.8, ptr @.str.9, i32 0, %union.anon.121 { %struct.anon.122 { i32 0, i32 65535 } } }, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"Receive Interrupt Delay\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"using default of 0\00", align 1
@num_RxIntDelay = internal global i32 0, align 4
@RxIntDelay = internal global [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@e1000e_check_options.opt.10 = internal global %struct.e1000_option { i32 1, ptr @.str.11, ptr @.str.3, i32 8, %union.anon.121 { %struct.anon.122 { i32 0, i32 65535 } } }, align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"Receive Absolute Interrupt Delay\00", align 1
@num_RxAbsIntDelay = internal global i32 0, align 4
@RxAbsIntDelay = internal global [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@e1000e_check_options.opt.12 = internal constant %struct.e1000_option { i32 1, ptr @.str.13, ptr @.str.14, i32 3, %union.anon.121 { %struct.anon.122 { i32 100, i32 100000 } } }, align 4
@.str.13 = private unnamed_addr constant [37 x i8] c"Interrupt Throttling Rate (ints/sec)\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"using default of 3\00", align 1
@num_InterruptThrottleRate = internal global i32 0, align 4
@InterruptThrottleRate = internal global [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@.str.16 = private unnamed_addr constant [15 x i8] c"%s turned off\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"%s set to dynamic mode\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"%s Invalid mode - setting default\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"%s set to dynamic conservative mode\0A\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"%s set to simplified (2000-8000 ints) mode\0A\00", align 1
@e1000e_check_options.opt.21 = internal global %struct.e1000_option { i32 1, ptr @.str.22, ptr null, i32 0, %union.anon.121 zeroinitializer }, align 4
@.str.22 = private unnamed_addr constant [15 x i8] c"Interrupt Mode\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"defaulting to 2 (MSI-X)\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"defaulting to 1 (MSI)\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Failed to allocate memory\0A\00", align 1
@num_IntMode = internal global i32 0, align 4
@IntMode = internal global [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@e1000e_check_options.opt.26 = internal constant %struct.e1000_option { i32 0, ptr @.str.27, ptr @.str.28, i32 0, %union.anon.121 zeroinitializer }, align 4
@.str.27 = private unnamed_addr constant [21 x i8] c"PHY Smart Power Down\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"defaulting to Disabled\00", align 1
@num_SmartPowerDownEnable = internal global i32 0, align 4
@SmartPowerDownEnable = internal global [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@e1000e_check_options.opt.29 = internal constant %struct.e1000_option { i32 0, ptr @.str.30, ptr @.str.31, i32 1, %union.anon.121 zeroinitializer }, align 4
@.str.30 = private unnamed_addr constant [14 x i8] c"CRC Stripping\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"defaulting to Enabled\00", align 1
@num_CrcStripping = internal global i32 0, align 4
@CrcStripping = internal global [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@e1000e_check_options.opt.32 = internal constant %struct.e1000_option { i32 0, ptr @.str.33, ptr @.str.31, i32 1, %union.anon.121 zeroinitializer }, align 4
@.str.33 = private unnamed_addr constant [29 x i8] c"Kumeran Lock Loss Workaround\00", align 1
@num_KumeranLockLoss = internal global i32 0, align 4
@KumeranLockLoss = internal global [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@e1000e_check_options.opt.34 = internal constant %struct.e1000_option { i32 0, ptr @.str.35, ptr @.str.31, i32 1, %union.anon.121 zeroinitializer }, align 4
@.str.35 = private unnamed_addr constant [18 x i8] c"Write-protect NVM\00", align 1
@num_WriteProtectNVM = internal global i32 0, align 4
@WriteProtectNVM = internal global [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@.str.36 = private unnamed_addr constant [12 x i8] c"%s Enabled\0A\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"%s Disabled\0A\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"%s set to %i\0A\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"Invalid %s value specified (%i) %s\0A\00", align 1
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_CrcStripping355, ptr @__UNIQUE_ID_CrcStrippingtype354, ptr @__UNIQUE_ID_IntMode347, ptr @__UNIQUE_ID_IntModetype346, ptr @__UNIQUE_ID_InterruptThrottleRate345, ptr @__UNIQUE_ID_InterruptThrottleRatetype344, ptr @__UNIQUE_ID_KumeranLockLoss351, ptr @__UNIQUE_ID_KumeranLockLosstype350, ptr @__UNIQUE_ID_RxAbsIntDelay343, ptr @__UNIQUE_ID_RxAbsIntDelaytype342, ptr @__UNIQUE_ID_RxIntDelay341, ptr @__UNIQUE_ID_RxIntDelaytype340, ptr @__UNIQUE_ID_SmartPowerDownEnable349, ptr @__UNIQUE_ID_SmartPowerDownEnabletype348, ptr @__UNIQUE_ID_TxAbsIntDelay339, ptr @__UNIQUE_ID_TxAbsIntDelaytype338, ptr @__UNIQUE_ID_TxIntDelay337, ptr @__UNIQUE_ID_TxIntDelaytype336, ptr @__UNIQUE_ID_WriteProtectNVM353, ptr @__UNIQUE_ID_WriteProtectNVMtype352, ptr @__UNIQUE_ID_copybreak335, ptr @__UNIQUE_ID_copybreaktype334, ptr @__param_CrcStripping, ptr @__param_IntMode, ptr @__param_InterruptThrottleRate, ptr @__param_KumeranLockLoss, ptr @__param_RxAbsIntDelay, ptr @__param_RxIntDelay, ptr @__param_SmartPowerDownEnable, ptr @__param_TxAbsIntDelay, ptr @__param_TxIntDelay, ptr @__param_WriteProtectNVM, ptr @__param_copybreak], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_check_options(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %8 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 32
  %10 = icmp sgt i32 %9, 31
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %13 = load ptr, ptr %12, align 32
  %14 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %14, ptr noundef nonnull @.str, i32 noundef %9) #4
  %15 = load ptr, ptr %12, align 32
  %16 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %16, ptr noundef nonnull @.str.1) #4
  br label %17

17:                                               ; preds = %11, %1
  %18 = load i32, ptr @num_TxIntDelay, align 4
  %19 = icmp ugt i32 %18, %9
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = getelementptr [33 x i32], ptr @TxIntDelay, i32 0, i32 %9
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 28
  store i32 %22, ptr %23, align 4
  %24 = tail call fastcc i32 @e1000_validate_option(ptr noundef %23, ptr noundef nonnull @e1000e_check_options.opt, ptr noundef %0)
  br label %27

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 28
  store i32 8, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %20
  %28 = load i32, ptr @num_TxAbsIntDelay, align 4
  %29 = icmp ugt i32 %28, %9
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = getelementptr [33 x i32], ptr @TxAbsIntDelay, i32 0, i32 %9
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 29
  store i32 %32, ptr %33, align 8
  %34 = tail call fastcc i32 @e1000_validate_option(ptr noundef %33, ptr noundef nonnull @e1000e_check_options.opt.4, ptr noundef %0)
  br label %37

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 29
  store i32 32, ptr %36, align 8
  br label %37

37:                                               ; preds = %35, %30
  %38 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 85
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 64
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 32, ptr getelementptr inbounds (%struct.e1000_option, ptr @e1000e_check_options.opt.7, i32 0, i32 3), align 4
  br label %43

43:                                               ; preds = %42, %37
  %44 = load i32, ptr @num_RxIntDelay, align 4
  %45 = icmp ugt i32 %44, %9
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = getelementptr [33 x i32], ptr @RxIntDelay, i32 0, i32 %9
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 49
  store i32 %48, ptr %49, align 4
  %50 = tail call fastcc i32 @e1000_validate_option(ptr noundef %49, ptr noundef nonnull @e1000e_check_options.opt.7, ptr noundef %0)
  %51 = load i32, ptr %38, align 4
  %52 = and i32 %51, 64
  br label %56

53:                                               ; preds = %43
  %54 = load i32, ptr getelementptr inbounds (%struct.e1000_option, ptr @e1000e_check_options.opt.7, i32 0, i32 3), align 4
  %55 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 49
  store i32 %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %53, %46
  %57 = phi i32 [ %40, %53 ], [ %52, %46 ]
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  store i32 32, ptr getelementptr inbounds (%struct.e1000_option, ptr @e1000e_check_options.opt.10, i32 0, i32 3), align 4
  br label %60

60:                                               ; preds = %59, %56
  %61 = load i32, ptr @num_RxAbsIntDelay, align 4
  %62 = icmp ugt i32 %61, %9
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = getelementptr [33 x i32], ptr @RxAbsIntDelay, i32 0, i32 %9
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 50
  store i32 %65, ptr %66, align 16
  %67 = tail call fastcc i32 @e1000_validate_option(ptr noundef %66, ptr noundef nonnull @e1000e_check_options.opt.10, ptr noundef %0)
  br label %71

68:                                               ; preds = %60
  %69 = load i32, ptr getelementptr inbounds (%struct.e1000_option, ptr @e1000e_check_options.opt.10, i32 0, i32 3), align 4
  %70 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 50
  store i32 %69, ptr %70, align 16
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32, ptr @num_InterruptThrottleRate, align 4
  %73 = icmp ugt i32 %72, %9
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = getelementptr [33 x i32], ptr @InterruptThrottleRate, i32 0, i32 %9
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 14
  store i32 %76, ptr %77, align 4
  %78 = icmp ugt i32 %76, 4
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = tail call fastcc i32 @e1000_validate_option(ptr noundef %77, ptr noundef nonnull @e1000e_check_options.opt.12, ptr noundef %0)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, ptr %77, align 4
  br label %90

84:                                               ; preds = %71
  %85 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 14
  br label %86

86:                                               ; preds = %84, %79
  %87 = phi ptr [ %85, %84 ], [ %77, %79 ]
  store i32 3, ptr %87, align 4
  %88 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 14
  %89 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 15
  br label %106

90:                                               ; preds = %82, %74
  %91 = phi i32 [ %83, %82 ], [ %76, %74 ]
  %92 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 14
  %93 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 15
  store i32 %91, ptr %93, align 8
  switch i32 %91, label %118 [
    i32 0, label %94
    i32 1, label %98
    i32 2, label %102
    i32 3, label %109
    i32 4, label %114
  ]

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %96 = load ptr, ptr %95, align 32
  %97 = getelementptr inbounds %struct.pci_dev, ptr %96, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %97, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #4
  br label %120

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %100 = load ptr, ptr %99, align 32
  %101 = getelementptr inbounds %struct.pci_dev, ptr %100, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %101, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.13) #4
  store i32 20000, ptr %92, align 4
  br label %120

102:                                              ; preds = %90
  %103 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %104 = load ptr, ptr %103, align 32
  %105 = getelementptr inbounds %struct.pci_dev, ptr %104, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %105, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.13) #4
  br label %106

106:                                              ; preds = %102, %86
  %107 = phi ptr [ %89, %86 ], [ %93, %102 ]
  %108 = phi ptr [ %88, %86 ], [ %92, %102 ]
  store i32 3, ptr %107, align 8
  br label %109

109:                                              ; preds = %106, %90
  %110 = phi ptr [ %92, %90 ], [ %108, %106 ]
  %111 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %112 = load ptr, ptr %111, align 32
  %113 = getelementptr inbounds %struct.pci_dev, ptr %112, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %113, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.13) #4
  store i32 20000, ptr %110, align 4
  br label %120

114:                                              ; preds = %90
  %115 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %116 = load ptr, ptr %115, align 32
  %117 = getelementptr inbounds %struct.pci_dev, ptr %116, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %117, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.13) #4
  br label %120

118:                                              ; preds = %90
  %119 = and i32 %91, -4
  store i32 %119, ptr %93, align 8
  br label %120

120:                                              ; preds = %118, %114, %109, %98, %94
  %121 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 84
  %122 = load i32, ptr %121, align 8
  %123 = and i32 %122, 1024
  %124 = icmp eq i32 %123, 0
  %125 = select i1 %124, ptr @.str.24, ptr @.str.23
  %126 = select i1 %124, i32 1, i32 2
  %127 = tail call noalias ptr @kstrdup(ptr noundef nonnull %125, i32 noundef 3264) #5
  store ptr %127, ptr getelementptr inbounds (%struct.e1000_option, ptr @e1000e_check_options.opt.21, i32 0, i32 2), align 4
  store i32 %126, ptr getelementptr inbounds (%struct.e1000_option, ptr @e1000e_check_options.opt.21, i32 0, i32 3), align 4
  store i32 %126, ptr getelementptr inbounds (%struct.e1000_option, ptr @e1000e_check_options.opt.21, i32 0, i32 4, i32 0, i32 1), align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %120
  %130 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %131 = load ptr, ptr %130, align 32
  %132 = getelementptr inbounds %struct.pci_dev, ptr %131, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.25) #4
  br label %211

133:                                              ; preds = %120
  %134 = load i32, ptr @num_IntMode, align 4
  %135 = icmp ugt i32 %134, %9
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  %137 = getelementptr [33 x i32], ptr @IntMode, i32 0, i32 %9
  %138 = load i32, ptr %137, align 4
  store i32 %138, ptr %2, align 4
  %139 = call fastcc i32 @e1000_validate_option(ptr noundef nonnull %2, ptr noundef nonnull @e1000e_check_options.opt.21, ptr noundef %0)
  %140 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %141 = load ptr, ptr getelementptr inbounds (%struct.e1000_option, ptr @e1000e_check_options.opt.21, i32 0, i32 2), align 4
  br label %142

142:                                              ; preds = %136, %133
  %143 = phi ptr [ %141, %136 ], [ %127, %133 ]
  %144 = phi i32 [ %140, %136 ], [ %126, %133 ]
  %145 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 77
  store i32 %144, ptr %145, align 4
  tail call void @kfree(ptr noundef %143) #5
  %146 = load i32, ptr @num_SmartPowerDownEnable, align 4
  %147 = icmp ugt i32 %146, %9
  br i1 %147, label %148, label %161

148:                                              ; preds = %142
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  %149 = getelementptr [33 x i32], ptr @SmartPowerDownEnable, i32 0, i32 %9
  %150 = load i32, ptr %149, align 4
  store i32 %150, ptr %3, align 4
  %151 = call fastcc i32 @e1000_validate_option(ptr noundef nonnull %3, ptr noundef nonnull @e1000e_check_options.opt.26, ptr noundef %0)
  %152 = load i32, ptr %121, align 8
  %153 = and i32 %152, 2048
  %154 = icmp ne i32 %153, 0
  %155 = load i32, ptr %3, align 4
  %156 = icmp ne i32 %155, 0
  %157 = select i1 %154, i1 %156, i1 false
  br i1 %157, label %158, label %160

158:                                              ; preds = %148
  %159 = or i32 %152, 67108864
  store i32 %159, ptr %121, align 8
  br label %160

160:                                              ; preds = %158, %148
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  br label %161

161:                                              ; preds = %160, %142
  %162 = load i32, ptr @num_CrcStripping, align 4
  %163 = icmp ugt i32 %162, %9
  br i1 %163, label %164, label %174

164:                                              ; preds = %161
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  %165 = getelementptr [33 x i32], ptr @CrcStripping, i32 0, i32 %9
  %166 = load i32, ptr %165, align 4
  store i32 %166, ptr %4, align 4
  %167 = call fastcc i32 @e1000_validate_option(ptr noundef nonnull %4, ptr noundef nonnull @e1000e_check_options.opt.29, ptr noundef %0)
  %168 = load i32, ptr %4, align 4
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %173

170:                                              ; preds = %164
  %171 = load i32, ptr %38, align 4
  %172 = or i32 %171, 4097
  store i32 %172, ptr %38, align 4
  br label %173

173:                                              ; preds = %170, %164
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  br label %177

174:                                              ; preds = %161
  %175 = load i32, ptr %38, align 4
  %176 = or i32 %175, 4097
  store i32 %176, ptr %38, align 4
  br label %177

177:                                              ; preds = %174, %173
  %178 = load i32, ptr @num_KumeranLockLoss, align 4
  %179 = icmp ugt i32 %178, %9
  br i1 %179, label %180, label %186

180:                                              ; preds = %177
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  %181 = getelementptr [33 x i32], ptr @KumeranLockLoss, i32 0, i32 %9
  %182 = load i32, ptr %181, align 4
  store i32 %182, ptr %5, align 4
  %183 = call fastcc i32 @e1000_validate_option(ptr noundef nonnull %5, ptr noundef nonnull @e1000e_check_options.opt.32, ptr noundef %0)
  %184 = load i32, ptr %5, align 4
  %185 = icmp ne i32 %184, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  br label %186

186:                                              ; preds = %180, %177
  %187 = phi i1 [ %185, %180 ], [ true, %177 ]
  %188 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 3
  %189 = load i32, ptr %188, align 4
  %190 = icmp eq i32 %189, 6
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  tail call void @e1000e_set_kmrn_lock_loss_workaround_ich8lan(ptr noundef %7, i1 noundef zeroext %187) #5
  br label %192

192:                                              ; preds = %191, %186
  %193 = load i32, ptr %121, align 8
  %194 = and i32 %193, 512
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %211, label %196

196:                                              ; preds = %192
  %197 = load i32, ptr @num_WriteProtectNVM, align 4
  %198 = icmp ugt i32 %197, %9
  br i1 %198, label %199, label %209

199:                                              ; preds = %196
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  %200 = getelementptr [33 x i32], ptr @WriteProtectNVM, i32 0, i32 %9
  %201 = load i32, ptr %200, align 4
  store i32 %201, ptr %6, align 4
  %202 = call fastcc i32 @e1000_validate_option(ptr noundef nonnull %6, ptr noundef nonnull @e1000e_check_options.opt.34, ptr noundef %0)
  %203 = load i32, ptr %6, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %199
  %206 = load i32, ptr %121, align 8
  %207 = or i32 %206, 256
  store i32 %207, ptr %121, align 8
  br label %208

208:                                              ; preds = %205, %199
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  br label %211

209:                                              ; preds = %196
  %210 = or i32 %193, 256
  store i32 %210, ptr %121, align 8
  br label %211

211:                                              ; preds = %209, %208, %192, %129
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_validate_option(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.e1000_option, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %0, align 4
  br label %73

9:                                                ; preds = %3
  %10 = load i32, ptr %1, align 4
  switch i32 %10, label %62 [
    i32 0, label %18
    i32 1, label %31
    i32 2, label %11
  ]

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.e1000_option, ptr %1, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %63

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.e1000_option, ptr %1, i32 0, i32 4, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  br label %45

18:                                               ; preds = %9
  switch i32 %4, label %63 [
    i32 1, label %19
    i32 0, label %25
  ]

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 64
  %21 = load ptr, ptr %20, align 32
  %22 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %23 = getelementptr inbounds %struct.e1000_option, ptr %1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.36, ptr noundef %24) #4
  br label %73

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 64
  %27 = load ptr, ptr %26, align 32
  %28 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %29 = getelementptr inbounds %struct.e1000_option, ptr %1, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.37, ptr noundef %30) #4
  br label %73

31:                                               ; preds = %9
  %32 = getelementptr inbounds %struct.e1000_option, ptr %1, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = icmp ult i32 %4, %33
  br i1 %34, label %63, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.e1000_option, ptr %1, i32 0, i32 4, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp ugt i32 %4, %37
  br i1 %38, label %63, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 64
  %41 = load ptr, ptr %40, align 32
  %42 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %43 = getelementptr inbounds %struct.e1000_option, ptr %1, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str.38, ptr noundef %44, i32 noundef %4) #4
  br label %73

45:                                               ; preds = %59, %15
  %46 = phi i32 [ 0, %15 ], [ %60, %59 ]
  %47 = getelementptr %struct.e1000_opt_list, ptr %17, i32 %46
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %4, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = getelementptr %struct.e1000_opt_list, ptr %17, i32 %46, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %73, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 64
  %57 = load ptr, ptr %56, align 32
  %58 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.39, ptr noundef %52) #4
  br label %73

59:                                               ; preds = %45
  %60 = add nuw nsw i32 %46, 1
  %61 = icmp eq i32 %60, %13
  br i1 %61, label %63, label %45

62:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/intel/e1000e/param.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 208, 0\0A.popsection", ""() #5, !srcloc !8
  unreachable

63:                                               ; preds = %59, %35, %31, %18, %11
  %64 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 64
  %65 = load ptr, ptr %64, align 32
  %66 = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  %67 = getelementptr inbounds %struct.e1000_option, ptr %1, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.e1000_option, ptr %1, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.40, ptr noundef %68, i32 noundef %4, ptr noundef %70) #4
  %71 = getelementptr inbounds %struct.e1000_option, ptr %1, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  store i32 %72, ptr %0, align 4
  br label %73

73:                                               ; preds = %63, %55, %50, %39, %25, %19, %6
  %74 = phi i32 [ 0, %6 ], [ -1, %63 ], [ 0, %39 ], [ 0, %25 ], [ 0, %19 ], [ 0, %50 ], [ 0, %55 ]
  ret i32 %74
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_set_kmrn_lock_loss_workaround_ich8lan(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind }
attributes #5 = { nounwind }

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
!8 = !{i64 2155641504, i64 2155642010, i64 2155641541, i64 2155641597, i64 2155641631, i64 2155641655, i64 2155641696, i64 2155641717, i64 2155641745, i64 2155641779}
