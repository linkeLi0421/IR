; ModuleID = '/llk/IR/drivers/iio/adc/stm32-dfsdm-core.c_pt.bc'
source_filename = "../drivers/iio/adc/stm32-dfsdm-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stm32_dfsdm_start_dfsdm:\09\09\09\09\09"
module asm "\09.asciz \09\22stm32_dfsdm_start_dfsdm\22\09\09\09\09\09"
module asm "__kstrtabns_stm32_dfsdm_start_dfsdm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stm32_dfsdm_stop_dfsdm:\09\09\09\09\09"
module asm "\09.asciz \09\22stm32_dfsdm_stop_dfsdm\22\09\09\09\09\09"
module asm "__kstrtabns_stm32_dfsdm_stop_dfsdm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.stm32_dfsdm_dev_data = type { i32, i32, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.stm32_dfsdm = type { ptr, i32, ptr, ptr, i32, ptr, i32, i32 }
%struct.dfsdm_priv = type { ptr, %struct.stm32_dfsdm, i32, %struct.atomic_t, ptr, ptr }

@__kstrtab_stm32_dfsdm_start_dfsdm = external dso_local constant [0 x i8], align 1
@__kstrtabns_stm32_dfsdm_start_dfsdm = external dso_local constant [0 x i8], align 1
@__ksymtab_stm32_dfsdm_start_dfsdm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stm32_dfsdm_start_dfsdm to i32), ptr @__kstrtab_stm32_dfsdm_start_dfsdm, ptr @__kstrtabns_stm32_dfsdm_start_dfsdm }, section "___ksymtab_gpl+stm32_dfsdm_start_dfsdm", align 4
@__kstrtab_stm32_dfsdm_stop_dfsdm = external dso_local constant [0 x i8], align 1
@__kstrtabns_stm32_dfsdm_stop_dfsdm = external dso_local constant [0 x i8], align 1
@__ksymtab_stm32_dfsdm_stop_dfsdm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stm32_dfsdm_stop_dfsdm to i32), ptr @__kstrtab_stm32_dfsdm_stop_dfsdm, ptr @__kstrtabns_stm32_dfsdm_stop_dfsdm }, section "___ksymtab_gpl+stm32_dfsdm_stop_dfsdm", align 4
@stm32_dfsdm_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-dfsdm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32h7_dfsdm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-dfsdm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32mp1_dfsdm_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author236 = internal constant [50 x i8] c"author=Arnaud Pouliquen <arnaud.pouliquen@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [50 x i8] c"description=STMicroelectronics STM32 dfsdm driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@stm32h7_dfsdm_data = internal constant %struct.stm32_dfsdm_dev_data { i32 4, i32 8, ptr @stm32h7_dfsdm_regmap_cfg }, align 4
@stm32mp1_dfsdm_data = internal constant %struct.stm32_dfsdm_dev_data { i32 6, i32 8, ptr @stm32mp1_dfsdm_regmap_cfg }, align 4
@stm32h7_dfsdm_regmap_cfg = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr @stm32_dfsdm_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 696, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@stm32mp1_dfsdm_regmap_cfg = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr @stm32_dfsdm_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 2044, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@stm32_dfsdm_driver = internal global %struct.platform_driver { ptr @stm32_dfsdm_probe, ptr @stm32_dfsdm_core_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_dfsdm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_dfsdm_core_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"stm32-dfsdm\00", align 1
@stm32_dfsdm_core_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_dfsdm_core_suspend, ptr @stm32_dfsdm_core_resume, ptr @stm32_dfsdm_core_suspend, ptr @stm32_dfsdm_core_resume, ptr @stm32_dfsdm_core_suspend, ptr @stm32_dfsdm_core_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_dfsdm_core_runtime_suspend, ptr @stm32_dfsdm_core_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"dfsdm\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: Failed to allocate regmap: %d\0A\00", align 1
@__func__.stm32_dfsdm_probe = private unnamed_addr constant [18 x i8] c"stm32_dfsdm_probe\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to start clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Failed to get clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"spi-max-frequency\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"spi-max-frequency not achievable\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"SPI clock not accurate\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"%ld = %d * %d + %d\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_license238, ptr @__ksymtab_stm32_dfsdm_start_dfsdm, ptr @__ksymtab_stm32_dfsdm_stop_dfsdm], section "llvm.metadata"

@__mod_of__stm32_dfsdm_of_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @stm32_dfsdm_of_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stm32_dfsdm_start_dfsdm(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = getelementptr i8, ptr %0, i32 32
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #7, !srcloc !9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #7, !srcloc !10
  %9 = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %45

11:                                               ; preds = %1
  %12 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #7, !srcloc !9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 0, i32 -1, ptr elementtype(i32) %15) #7, !srcloc !13
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %42, label %19

19:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  br label %42

20:                                               ; preds = %11
  %21 = getelementptr i8, ptr %0, i32 44
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.stm32_dfsdm, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = select i1 %23, i32 0, i32 1073741824
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 0, i32 noundef 1073741824, i32 noundef %26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %20
  %30 = load ptr, ptr %24, align 4
  %31 = shl i32 %6, 16
  %32 = and i32 %31, 16711680
  %33 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 0, i32 noundef 16711680, i32 noundef %32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %24, align 4
  %37 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 0, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35, %29, %20
  %40 = phi i32 [ %27, %20 ], [ %33, %29 ], [ %37, %35 ]
  %41 = tail call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 4) #7
  br label %42

42:                                               ; preds = %39, %19, %14
  %43 = phi i32 [ %40, %39 ], [ %12, %14 ], [ %12, %19 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #7, !srcloc !9
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #7, !srcloc !15
  br label %45

45:                                               ; preds = %42, %35, %1
  %46 = phi i32 [ %43, %42 ], [ 0, %35 ], [ 0, %1 ]
  ret i32 %46
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stm32_dfsdm_stop_dfsdm(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #7, !srcloc !9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #7, !srcloc !17
  %5 = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.stm32_dfsdm, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 0, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %8, align 4
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef 16711680, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %19 = tail call i32 @__pm_runtime_idle(ptr noundef %18, i32 noundef 4) #7
  br label %20

20:                                               ; preds = %16, %12, %7, %1
  %21 = phi i32 [ %10, %7 ], [ %14, %12 ], [ 0, %16 ], [ 0, %1 ]
  ret i32 %21
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_dfsdm_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #2 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_dfsdm_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stm32_dfsdm_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #4 {
  %3 = icmp ult i32 %1, 256
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = lshr i32 %1, 2
  %6 = and i32 %5, 31
  %7 = shl i32 %1, 30
  %8 = or i32 %6, %7
  %9 = icmp ult i32 %8, 8
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = trunc i32 %6 to i8
  %12 = lshr i8 -59, %11
  %13 = and i8 %12, 1
  %14 = icmp ne i8 %13, 0
  br label %15

15:                                               ; preds = %10, %4, %2
  %16 = phi i1 [ false, %2 ], [ %14, %10 ], [ false, %4 ]
  ret i1 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_probe(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 52, i32 noundef 3520) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %130, label %7

7:                                                ; preds = %1
  store ptr %0, ptr %5, align 4
  %8 = tail call ptr @of_device_get_match_data(ptr noundef %4) #7
  %9 = getelementptr inbounds %struct.dfsdm_priv, ptr %5, i32 0, i32 1
  %10 = load i32, ptr %8, align 4
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 80) #7
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %13, label %15, !prof !19

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.dfsdm_priv, ptr %5, i32 0, i32 1, i32 3
  store ptr null, ptr %14, align 4
  br label %130

15:                                               ; preds = %7
  %16 = extractvalue { i32, i1 } %11, 0
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %16, i32 noundef 3520) #7
  %18 = getelementptr inbounds %struct.dfsdm_priv, ptr %5, i32 0, i32 1, i32 3
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %130, label %20

20:                                               ; preds = %15
  %21 = load i32, ptr %8, align 4
  %22 = getelementptr inbounds %struct.dfsdm_priv, ptr %5, i32 0, i32 1, i32 4
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.stm32_dfsdm_dev_data, ptr %8, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 16) #7
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %27, label %29, !prof !19

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.dfsdm_priv, ptr %5, i32 0, i32 1, i32 5
  store ptr null, ptr %28, align 4
  br label %130

29:                                               ; preds = %20
  %30 = extractvalue { i32, i1 } %25, 0
  %31 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %30, i32 noundef 3520) #7
  %32 = getelementptr inbounds %struct.dfsdm_priv, ptr %5, i32 0, i32 1, i32 5
  store ptr %31, ptr %32, align 4
  %33 = icmp eq ptr %31, null
  br i1 %33, label %130, label %34

34:                                               ; preds = %29
  %35 = load i32, ptr %23, align 4
  %36 = getelementptr inbounds %struct.dfsdm_priv, ptr %5, i32 0, i32 1, i32 6
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %38 = load ptr, ptr %37, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4, !annotation !20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !20
  %39 = icmp eq ptr %38, null
  br i1 %39, label %93, label %40

40:                                               ; preds = %34
  %41 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #7
  store ptr %41, ptr %9, align 4
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = ptrtoint ptr %41 to i32
  br label %94

45:                                               ; preds = %40
  %46 = load ptr, ptr %2, align 4
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.dfsdm_priv, ptr %5, i32 0, i32 1, i32 1
  store i32 %47, ptr %48, align 4
  %49 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.1) #7
  %50 = getelementptr inbounds %struct.dfsdm_priv, ptr %5, i32 0, i32 4
  store ptr %49, ptr %50, align 4
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = ptrtoint ptr %49 to i32
  %54 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %53, ptr noundef nonnull @.str.4) #7
  br label %94

55:                                               ; preds = %45
  %56 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.5) #7
  %57 = getelementptr inbounds %struct.dfsdm_priv, ptr %5, i32 0, i32 5
  store ptr %56, ptr %57, align 4
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store ptr null, ptr %57, align 4
  br label %64

60:                                               ; preds = %55
  %61 = icmp eq ptr %56, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %60
  %63 = call i32 @clk_get_rate(ptr noundef nonnull %56) #7
  br label %66

64:                                               ; preds = %60, %59
  %65 = call i32 @clk_get_rate(ptr noundef %49) #7
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = load ptr, ptr %37, align 8
  %69 = call i32 @of_property_read_variable_u32_array(ptr noundef %68, ptr noundef nonnull @.str.6, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %92, label %71

71:                                               ; preds = %66
  %72 = load i32, ptr %3, align 4
  %73 = freeze i32 %67
  %74 = freeze i32 %72
  %75 = udiv i32 %73, %74
  %76 = mul i32 %75, %74
  %77 = sub i32 %73, %76
  %78 = icmp eq i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = add i32 %75, %80
  %82 = add i32 %81, -257
  %83 = icmp ult i32 %82, -255
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7) #8
  br label %93

85:                                               ; preds = %71
  %86 = add nsw i32 %81, -1
  %87 = getelementptr inbounds %struct.dfsdm_priv, ptr %5, i32 0, i32 2
  store i32 %86, ptr %87, align 4
  %88 = udiv i32 %67, %81
  %89 = getelementptr inbounds %struct.dfsdm_priv, ptr %5, i32 0, i32 1, i32 7
  store i32 %88, ptr %89, align 4
  br i1 %78, label %92, label %90

90:                                               ; preds = %85
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.8) #8
  %91 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef %67, i32 noundef %91, i32 noundef %81, i32 noundef %77) #8
  br label %92

92:                                               ; preds = %90, %85, %66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %97

93:                                               ; preds = %84, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %130

94:                                               ; preds = %52, %43
  %95 = phi i32 [ %44, %43 ], [ %54, %52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %130, label %97

97:                                               ; preds = %94, %92
  %98 = getelementptr inbounds %struct.stm32_dfsdm_dev_data, ptr %8, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef %41, ptr noundef %99, ptr noundef null, ptr noundef null) #7
  %101 = getelementptr inbounds %struct.dfsdm_priv, ptr %5, i32 0, i32 1, i32 2
  store ptr %100, ptr %101, align 4
  %102 = icmp ugt ptr %100, inttoptr (i32 -4096 to ptr)
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = ptrtoint ptr %100 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stm32_dfsdm_probe, i32 noundef %104) #8
  br label %130

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %106, align 8
  %107 = call fastcc i32 @stm32_dfsdm_clk_prepare_enable(ptr noundef %9)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #8
  br label %130

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %111) #7, !srcloc !9
  %112 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %111, ptr %111, i32 1, ptr elementtype(i32) %111) #7, !srcloc !21
  %113 = call i32 @__pm_runtime_set_status(ptr noundef %4, i32 noundef 0) #7
  call void @pm_runtime_enable(ptr noundef %4) #7
  %114 = load ptr, ptr %37, align 8
  %115 = call i32 @of_platform_populate(ptr noundef %114, ptr noundef null, ptr noundef null, ptr noundef %4) #7
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 5) #7
  br label %130

119:                                              ; preds = %110
  call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #7
  %120 = call i32 @__pm_runtime_set_status(ptr noundef %4, i32 noundef 2) #7
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %111) #7, !srcloc !9
  %121 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %111, ptr %111, i32 0, i32 -1, ptr elementtype(i32) %111) #7, !srcloc !13
  %122 = extractvalue { i32, i32, i32 } %121, 0
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  br label %125

125:                                              ; preds = %124, %119
  %126 = getelementptr %struct.dfsdm_priv, ptr %5, i32 0, i32 5
  %127 = load ptr, ptr %126, align 4
  call void @clk_disable(ptr noundef %127) #7
  call void @clk_unprepare(ptr noundef %127) #7
  %128 = getelementptr %struct.dfsdm_priv, ptr %5, i32 0, i32 4
  %129 = load ptr, ptr %128, align 4
  call void @clk_disable(ptr noundef %129) #7
  call void @clk_unprepare(ptr noundef %129) #7
  br label %130

130:                                              ; preds = %125, %117, %109, %103, %94, %93, %29, %27, %15, %13, %1
  %131 = phi i32 [ %104, %103 ], [ %107, %109 ], [ %115, %125 ], [ 0, %117 ], [ -12, %1 ], [ -12, %15 ], [ -12, %29 ], [ %95, %94 ], [ -12, %13 ], [ -12, %27 ], [ -22, %93 ]
  ret i32 %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_core_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #7
  tail call void @of_platform_depopulate(ptr noundef %4) #7
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #7
  %6 = tail call i32 @__pm_runtime_set_status(ptr noundef %4, i32 noundef 2) #7
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #7, !srcloc !9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 0, i32 -1, ptr elementtype(i32) %7) #7, !srcloc !13
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr i8, ptr %3, i32 44
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %14) #7
  tail call void @clk_unprepare(ptr noundef %14) #7
  %15 = getelementptr i8, ptr %3, i32 40
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %16) #7
  tail call void @clk_unprepare(ptr noundef %16) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_dfsdm_clk_prepare_enable(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 40
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = tail call i32 @clk_enable(ptr noundef %3) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = getelementptr i8, ptr %0, i32 44
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @clk_prepare(ptr noundef nonnull %11) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = tail call i32 @clk_enable(ptr noundef nonnull %11) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  tail call void @clk_unprepare(ptr noundef nonnull %11) #7
  br label %20

20:                                               ; preds = %19, %13
  %21 = phi i32 [ %17, %19 ], [ %14, %13 ]
  %22 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %22) #7
  br label %23

23:                                               ; preds = %20, %6
  %24 = phi ptr [ %22, %20 ], [ %3, %6 ]
  %25 = phi i32 [ %21, %20 ], [ %7, %6 ]
  tail call void @clk_unprepare(ptr noundef %24) #7
  br label %26

26:                                               ; preds = %23, %16, %9, %1
  %27 = phi i32 [ 0, %9 ], [ 0, %16 ], [ %4, %1 ], [ %25, %23 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_core_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %3, i32 40
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_unprepare(ptr noundef %8) #7
  %9 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #7
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ %9, %6 ], [ %4, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_core_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %3, i32 40
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_prepare(ptr noundef %8) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #7
  br label %13

13:                                               ; preds = %11, %6, %1
  %14 = phi i32 [ %12, %11 ], [ %4, %1 ], [ %9, %6 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_core_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 44
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  %6 = getelementptr i8, ptr %3, i32 40
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dfsdm_core_runtime_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @stm32_dfsdm_clk_prepare_enable(ptr noundef %3)
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{i64 2148050194}
!9 = !{i64 450189, i64 2147940160, i64 2147940186, i64 2147940233, i64 2147940255, i64 2147940283, i64 2147940303}
!10 = !{i64 2147953056, i64 2147953088, i64 2147953117, i64 2147953151, i64 2147953182, i64 2147953205}
!11 = !{i64 2148050397}
!12 = !{i64 2147951879}
!13 = !{i64 436758, i64 436783, i64 436805, i64 436821, i64 436833, i64 436853, i64 436877, i64 436893, i64 436905}
!14 = !{i64 2147952005}
!15 = !{i64 2147954729, i64 2147954755, i64 2147954784, i64 2147954818, i64 2147954849, i64 2147954872}
!16 = !{i64 2148053027}
!17 = !{i64 2147955413, i64 2147955445, i64 2147955474, i64 2147955508, i64 2147955539, i64 2147955562}
!18 = !{i64 2148053230}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{!"auto-init"}
!21 = !{i64 2147952372, i64 2147952398, i64 2147952427, i64 2147952461, i64 2147952492, i64 2147952515}
