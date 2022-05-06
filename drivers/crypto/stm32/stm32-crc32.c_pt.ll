; ModuleID = '/llk/IR/drivers/crypto/stm32/stm32-crc32.c_pt.bc'
source_filename = "../drivers/crypto/stm32/stm32-crc32.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stm32_crc_list = type { %struct.list_head, %struct.spinlock }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [20 x i8], i32, i32, [56 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.5, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.5 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.stm32_crc = type { %struct.list_head, ptr, ptr, ptr, %struct.spinlock }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }

@__param_str_burst_size = internal constant [11 x i8] c"burst_size\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@burst_size = internal global i32 0, align 4
@__param_burst_size = internal constant %struct.kernel_param { ptr @__param_str_burst_size, ptr @__this_module, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.4 { ptr @burst_size } }, section "__param", align 4
@__UNIQUE_ID_burst_sizetype167 = internal constant [25 x i8] c"parmtype=burst_size:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_burst_size168 = internal constant [53 x i8] c"parm=burst_size:Select burst byte size (0 unlimited)\00", section ".modinfo", align 1
@stm32_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f7-crc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author173 = internal constant [48 x i8] c"author=Fabien Dessenne <fabien.dessenne@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description174 = internal constant [58 x i8] c"description=STMicrolectronics STM32 CRC32 hardware driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@stm32_crc_driver = internal global %struct.platform_driver { ptr @stm32_crc_probe, ptr @stm32_crc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_crc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"stm32-crc32\00", align 1
@stm32_crc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_crc_suspend, ptr @stm32_crc_resume, ptr @stm32_crc_suspend, ptr @stm32_crc_resume, ptr @stm32_crc_suspend, ptr @stm32_crc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_crc_runtime_suspend, ptr @stm32_crc_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Cannot map CRC IO\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Could not get clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Failed to enable clock\0A\00", align 1
@crc_list = internal global %struct.stm32_crc_list { %struct.list_head { ptr @crc_list, ptr @crc_list }, %struct.spinlock zeroinitializer }, align 4
@refcnt_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @refcnt_lock, i64 12), ptr getelementptr (i8, ptr @refcnt_lock, i64 12) } }, align 4
@refcnt = internal unnamed_addr global i32 0, align 4
@algs = internal global [2 x %struct.shash_alg] [%struct.shash_alg { ptr @stm32_crc_init, ptr @stm32_crc_update, ptr @stm32_crc_final, ptr @stm32_crc_finup, ptr @stm32_crc_digest, ptr null, ptr null, ptr @stm32_crc_setkey, ptr null, ptr null, i32 4, [20 x i8] undef, i32 4, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 16384, i32 1, i32 8, i32 3, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"crc32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-crc32-crc32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.5 zeroinitializer, ptr @stm32_crc32_cra_init, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.shash_alg { ptr @stm32_crc_init, ptr @stm32_crc_update, ptr @stm32_crc_final, ptr @stm32_crc_finup, ptr @stm32_crc_digest, ptr null, ptr null, ptr @stm32_crc_setkey, ptr null, ptr null, i32 4, [20 x i8] undef, i32 4, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 16384, i32 1, i32 8, i32 3, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"crc32c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-crc32-crc32c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.5 zeroinitializer, ptr @stm32_crc32c_cra_init, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }], align 64
@.str.4 = private unnamed_addr constant [20 x i8] c"Failed to register\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Initialized\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Failed to prepare clock\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_burst_size168, ptr @__UNIQUE_ID_burst_sizetype167, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_license175, ptr @__param_burst_size], section "llvm.metadata"

@__mod_of__stm32_dt_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @stm32_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_crc_driver, ptr noundef nonnull @__this_module) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_crc_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_crc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 24, i32 noundef 3520) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stm32_crc, ptr %3, i32 0, i32 1
  store ptr %2, ptr %6, align 4
  %7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #10
  %8 = getelementptr inbounds %struct.stm32_crc, ptr %3, i32 0, i32 2
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #11
  %11 = ptrtoint ptr %7 to i32
  br label %46

12:                                               ; preds = %5
  %13 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #10
  %14 = getelementptr inbounds %struct.stm32_crc, ptr %3, i32 0, i32 3
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #11
  %17 = ptrtoint ptr %13 to i32
  br label %46

18:                                               ; preds = %12
  %19 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %13)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #11
  br label %46

22:                                               ; preds = %18
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %2, i32 noundef 50) #10
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %2, i1 noundef zeroext true) #10
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #10, !srcloc !8
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #10, !srcloc !9
  %25 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #10
  tail call void @pm_runtime_irq_safe(ptr noundef %2) #10
  tail call void @pm_runtime_enable(ptr noundef %2) #10
  %26 = getelementptr inbounds %struct.stm32_crc, ptr %3, i32 0, i32 4
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %27, align 8
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 1)) #10
  %28 = load ptr, ptr @crc_list, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %3, ptr %29, align 4
  store ptr %28, ptr %3, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr @crc_list, ptr %30, align 4
  store volatile ptr %3, ptr @crc_list, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %31 = load i16, ptr getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 1), align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  tail call void @mutex_lock(ptr noundef nonnull @refcnt_lock) #10
  %33 = load i32, ptr @refcnt, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %22
  %36 = tail call i32 @crypto_register_shashes(ptr noundef nonnull @algs, i32 noundef 2) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, ptr @refcnt, align 4
  br label %42

40:                                               ; preds = %35
  tail call void @mutex_unlock(ptr noundef nonnull @refcnt_lock) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #11
  %41 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %41) #10
  tail call void @clk_unprepare(ptr noundef %41) #10
  br label %46

42:                                               ; preds = %38, %22
  %43 = phi i32 [ %39, %38 ], [ %33, %22 ]
  %44 = add i32 %43, 1
  store i32 %44, ptr @refcnt, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @refcnt_lock) #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.5) #11
  %45 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 4) #10
  br label %46

46:                                               ; preds = %42, %40, %21, %16, %10, %1
  %47 = phi i32 [ %11, %10 ], [ %17, %16 ], [ %19, %21 ], [ 0, %42 ], [ %36, %40 ], [ -12, %1 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_crc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_crc, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 1)) #10
  %9 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %13 = load i16, ptr getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 1), align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  tail call void @mutex_lock(ptr noundef nonnull @refcnt_lock) #10
  %15 = load i32, ptr @refcnt, align 4
  %16 = add i32 %15, -1
  store i32 %16, ptr @refcnt, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  tail call void @crypto_unregister_shashes(ptr noundef nonnull @algs, i32 noundef 2) #10
  br label %19

19:                                               ; preds = %18, %8
  tail call void @mutex_unlock(ptr noundef nonnull @refcnt_lock) #10
  %20 = load ptr, ptr %4, align 4
  tail call void @__pm_runtime_disable(ptr noundef %20, i1 noundef zeroext true) #10
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #10, !srcloc !8
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 0, i32 -1, ptr elementtype(i32) %22) #10, !srcloc !15
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  br label %27

27:                                               ; preds = %26, %19
  %28 = getelementptr inbounds %struct.stm32_crc, ptr %3, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  tail call void @clk_disable(ptr noundef %29) #10
  tail call void @clk_unprepare(ptr noundef %29) #10
  br label %30

30:                                               ; preds = %27, %1
  %31 = phi i32 [ 0, %27 ], [ %6, %1 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #10
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_irq_safe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_crc_init(ptr nocapture noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 1)) #10
  %3 = load ptr, ptr @crc_list, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 1)) #10
  br label %38

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  %12 = load ptr, ptr getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 0, i32 1), align 4
  store ptr %3, ptr getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 0, i32 1), align 4
  store ptr @crc_list, ptr %3, align 4
  store ptr %12, ptr %8, align 4
  store volatile ptr %3, ptr %12, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 1)) #10
  %13 = getelementptr inbounds %struct.stm32_crc, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @__pm_runtime_resume(ptr noundef %14, i32 noundef 4) #10
  %16 = getelementptr inbounds %struct.stm32_crc, ptr %3, i32 0, i32 4
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #10
  %18 = getelementptr inbounds %struct.crypto_shash, ptr %2, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %19) #12, !srcloc !17
  %21 = getelementptr inbounds %struct.stm32_crc, ptr %3, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %20) #10, !srcloc !18
  %24 = getelementptr inbounds %struct.crypto_shash, ptr %2, i32 1, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %25) #12, !srcloc !17
  %27 = load ptr, ptr %21, align 4
  %28 = getelementptr i8, ptr %27, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #10, !srcloc !18
  %29 = load ptr, ptr %21, align 4
  %30 = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 225) #10, !srcloc !18
  %31 = load ptr, ptr %21, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #10, !srcloc !19
  store i32 %32, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #10
  %33 = load ptr, ptr %13, align 4
  %34 = tail call i64 @ktime_get_mono_fast_ns() #10
  %35 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 11, i32 22
  store volatile i64 %34, ptr %35, align 8
  %36 = load ptr, ptr %13, align 4
  %37 = tail call i32 @__pm_runtime_suspend(ptr noundef %36, i32 noundef 13) #10
  br label %38

38:                                               ; preds = %6, %5
  %39 = phi i32 [ 0, %6 ], [ -19, %5 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_crc_update(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = load i32, ptr @burst_size, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @burst_update(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %26

8:                                                ; preds = %3
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %8
  %11 = ptrtoint ptr %1 to i32
  %12 = and i32 %11, 3
  %13 = add i32 %12, %4
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 %2)
  br label %15

15:                                               ; preds = %21, %10
  %16 = phi i32 [ %22, %21 ], [ %2, %10 ]
  %17 = phi ptr [ %23, %21 ], [ %1, %10 ]
  %18 = phi i32 [ %24, %21 ], [ %14, %10 ]
  %19 = tail call fastcc i32 @burst_update(ptr noundef %0, ptr noundef %17, i32 noundef %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = sub i32 %16, %18
  %23 = getelementptr i8, ptr %17, i32 %18
  %24 = tail call i32 @llvm.umin.i32(i32 %22, i32 %4)
  %25 = icmp eq i32 %22, 0
  br i1 %25, label %26, label %15

26:                                               ; preds = %21, %15, %8, %6
  %27 = phi i32 [ %7, %6 ], [ 0, %8 ], [ %19, %15 ], [ 0, %21 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stm32_crc_final(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.crypto_shash, ptr %4, i32 1, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, -2097792136
  %8 = load i32, ptr %3, align 4
  %9 = sext i1 %7 to i32
  %10 = xor i32 %8, %9
  store i32 %10, ptr %1, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_crc_finup(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = load i32, ptr @burst_size, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %4
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %7
  %10 = ptrtoint ptr %1 to i32
  %11 = and i32 %10, 3
  %12 = add i32 %5, %11
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %2) #10
  br label %14

14:                                               ; preds = %20, %9
  %15 = phi i32 [ %21, %20 ], [ %2, %9 ]
  %16 = phi ptr [ %22, %20 ], [ %1, %9 ]
  %17 = phi i32 [ %23, %20 ], [ %13, %9 ]
  %18 = tail call fastcc i32 @burst_update(ptr noundef %0, ptr noundef %16, i32 noundef %17) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = sub i32 %15, %17
  %22 = getelementptr i8, ptr %16, i32 %17
  %23 = tail call i32 @llvm.umin.i32(i32 %21, i32 %5) #10
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %28, label %14

25:                                               ; preds = %4
  %26 = tail call fastcc i32 @burst_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25, %20, %7
  %29 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %0, align 8
  %31 = getelementptr inbounds %struct.crypto_shash, ptr %30, i32 1, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, -2097792136
  %34 = load i32, ptr %29, align 4
  %35 = sext i1 %33 to i32
  %36 = xor i32 %34, %35
  store i32 %36, ptr %3, align 1
  br label %37

37:                                               ; preds = %28, %25, %14
  %38 = phi i32 [ 0, %28 ], [ %26, %25 ], [ %18, %14 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_crc_digest(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call i32 @stm32_crc_init(ptr noundef %0)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %4
  %8 = load i32, ptr @burst_size, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %7
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %10
  %13 = ptrtoint ptr %1 to i32
  %14 = and i32 %13, 3
  %15 = add i32 %8, %14
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 %2) #10
  br label %17

17:                                               ; preds = %23, %12
  %18 = phi i32 [ %24, %23 ], [ %2, %12 ]
  %19 = phi ptr [ %25, %23 ], [ %1, %12 ]
  %20 = phi i32 [ %26, %23 ], [ %16, %12 ]
  %21 = tail call fastcc i32 @burst_update(ptr noundef %0, ptr noundef %19, i32 noundef %20) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %17
  %24 = sub i32 %18, %20
  %25 = getelementptr i8, ptr %19, i32 %20
  %26 = tail call i32 @llvm.umin.i32(i32 %24, i32 %8) #10
  %27 = icmp eq i32 %24, 0
  br i1 %27, label %31, label %17

28:                                               ; preds = %7
  %29 = tail call fastcc i32 @burst_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28, %23, %10
  %32 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr inbounds %struct.crypto_shash, ptr %33, i32 1, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, -2097792136
  %37 = load i32, ptr %32, align 4
  %38 = sext i1 %36 to i32
  %39 = xor i32 %37, %38
  store i32 %39, ptr %3, align 1
  br label %40

40:                                               ; preds = %31, %28, %17, %4
  %41 = phi i32 [ %5, %4 ], [ 0, %31 ], [ %29, %28 ], [ %21, %17 ]
  ret i32 %41
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stm32_crc_setkey(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 4
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 1
  %7 = load i32, ptr %1, align 1
  store i32 %7, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i32 [ 0, %5 ], [ -22, %3 ]
  ret i32 %9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @stm32_crc32_cra_init(ptr nocapture noundef writeonly %0) #7 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  store i32 -306674912, ptr %3, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @stm32_crc32c_cra_init(ptr nocapture noundef writeonly %0) #7 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  store i32 -1, ptr %2, align 4
  %3 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  store i32 -2097792136, ptr %3, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @burst_update(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %0, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 1)) #10
  %6 = load ptr, ptr @crc_list, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 1)) #10
  br label %109

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  %14 = load ptr, ptr getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 0, i32 1), align 4
  store ptr %6, ptr getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 0, i32 1), align 4
  store ptr @crc_list, ptr %6, align 4
  store ptr %14, ptr %10, align 4
  store volatile ptr %6, ptr %14, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_crc_list, ptr @crc_list, i32 0, i32 1)) #10
  %15 = getelementptr inbounds %struct.stm32_crc, ptr %6, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @__pm_runtime_resume(ptr noundef %16, i32 noundef 4) #10
  %18 = getelementptr inbounds %struct.stm32_crc, ptr %6, i32 0, i32 4
  %19 = tail call i32 @_raw_spin_trylock(ptr noundef %18) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 1, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, -306674912
  %25 = load i32, ptr %4, align 4
  br i1 %24, label %26, label %28

26:                                               ; preds = %21
  %27 = tail call i32 @crc32_le(i32 noundef %25, ptr noundef %1, i32 noundef %2) #13
  store i32 %27, ptr %4, align 4
  br label %103

28:                                               ; preds = %21
  %29 = tail call i32 @__crc32c_le(i32 noundef %25, ptr noundef %1, i32 noundef %2) #13
  store i32 %29, ptr %4, align 4
  br label %103

30:                                               ; preds = %9
  %31 = load i32, ptr %4, align 4
  %32 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %31) #12, !srcloc !17
  %33 = getelementptr inbounds %struct.stm32_crc, ptr %6, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %32) #10, !srcloc !18
  %36 = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 1, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %37) #12, !srcloc !17
  %39 = load ptr, ptr %33, align 4
  %40 = getelementptr i8, ptr %39, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #10, !srcloc !18
  %41 = load ptr, ptr %33, align 4
  %42 = getelementptr i8, ptr %41, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 225) #10, !srcloc !18
  %43 = ptrtoint ptr %1 to i32
  %44 = add i32 %43, 3
  %45 = and i32 %44, -4
  %46 = inttoptr i32 %45 to ptr
  %47 = icmp eq ptr %46, %1
  br i1 %47, label %71, label %48

48:                                               ; preds = %30
  %49 = load ptr, ptr %33, align 4
  %50 = getelementptr i8, ptr %49, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 160) #10, !srcloc !18
  %51 = icmp eq i32 %2, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %52, %48
  %53 = phi ptr [ %55, %52 ], [ %1, %48 ]
  %54 = phi i32 [ %58, %52 ], [ %2, %48 ]
  %55 = getelementptr i8, ptr %53, i32 1
  %56 = load i8, ptr %53, align 1
  %57 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %57, i8 %56) #10, !srcloc !20
  %58 = add i32 %54, -1
  %59 = ptrtoint ptr %55 to i32
  %60 = add i32 %59, 3
  %61 = and i32 %60, -4
  %62 = inttoptr i32 %61 to ptr
  %63 = icmp ne ptr %55, %62
  %64 = icmp ne i32 %58, 0
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %52, label %66

66:                                               ; preds = %52, %48
  %67 = phi i32 [ 0, %48 ], [ %58, %52 ]
  %68 = phi ptr [ %1, %48 ], [ %55, %52 ]
  %69 = load ptr, ptr %33, align 4
  %70 = getelementptr i8, ptr %69, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 224) #10, !srcloc !18
  br label %71

71:                                               ; preds = %66, %30
  %72 = phi i32 [ %67, %66 ], [ %2, %30 ]
  %73 = phi ptr [ %68, %66 ], [ %1, %30 ]
  %74 = icmp ugt i32 %72, 3
  br i1 %74, label %75, label %83

75:                                               ; preds = %75, %71
  %76 = phi ptr [ %80, %75 ], [ %73, %71 ]
  %77 = phi i32 [ %81, %75 ], [ %72, %71 ]
  %78 = load i32, ptr %76, align 4
  %79 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %78) #10, !srcloc !18
  %80 = getelementptr i8, ptr %76, i32 4
  %81 = add i32 %77, -4
  %82 = icmp ugt i32 %81, 3
  br i1 %82, label %75, label %83

83:                                               ; preds = %75, %71
  %84 = phi i32 [ %72, %71 ], [ %81, %75 ]
  %85 = phi ptr [ %73, %71 ], [ %80, %75 ]
  %86 = icmp eq i32 %84, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %33, align 4
  %89 = getelementptr i8, ptr %88, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 160) #10, !srcloc !18
  br label %90

90:                                               ; preds = %90, %87
  %91 = phi ptr [ %85, %87 ], [ %94, %90 ]
  %92 = phi i32 [ %84, %87 ], [ %93, %90 ]
  %93 = add i32 %92, -1
  %94 = getelementptr i8, ptr %91, i32 1
  %95 = load i8, ptr %91, align 1
  %96 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %96, i8 %95) #10, !srcloc !20
  %97 = icmp eq i32 %93, 0
  br i1 %97, label %98, label %90

98:                                               ; preds = %90, %83
  %99 = load ptr, ptr %33, align 4
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #10, !srcloc !19
  store i32 %100, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %101 = load i16, ptr %18, align 4
  %102 = add i16 %101, 1
  store i16 %102, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %103

103:                                              ; preds = %98, %28, %26
  %104 = load ptr, ptr %15, align 4
  %105 = tail call i64 @ktime_get_mono_fast_ns() #10
  %106 = getelementptr inbounds %struct.device, ptr %104, i32 0, i32 11, i32 22
  store volatile i64 %105, ptr %106, align 8
  %107 = load ptr, ptr %15, align 4
  %108 = tail call i32 @__pm_runtime_suspend(ptr noundef %107, i32 noundef 13) #10
  br label %109

109:                                              ; preds = %103, %8
  %110 = phi i32 [ 0, %103 ], [ -19, %8 ]
  ret i32 %110
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @__crc32c_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_crc_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stm32_crc, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_unprepare(ptr noundef %8) #10
  br label %9

9:                                                ; preds = %6, %1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_crc_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_crc, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.stm32_crc, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.6) #11
  br label %13

11:                                               ; preds = %1
  %12 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #10
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i32 [ %6, %8 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_crc_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_crc, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_crc_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_crc, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_enable(ptr noundef %5) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.stm32_crc, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.3) #11
  br label %11

11:                                               ; preds = %8, %1
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind readonly willreturn }

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
!8 = !{i64 454370, i64 2147944341, i64 2147944367, i64 2147944414, i64 2147944436, i64 2147944464, i64 2147944484}
!9 = !{i64 2147956553, i64 2147956579, i64 2147956608, i64 2147956642, i64 2147956673, i64 2147956696}
!10 = !{i64 2148892538}
!11 = !{i64 2148888362}
!12 = !{i64 2148888437, i64 2148888464, i64 2148888511, i64 2148888533, i64 2148888561, i64 2148888581}
!13 = !{i64 2148915541}
!14 = !{i64 2147956060}
!15 = !{i64 440939, i64 440964, i64 440986, i64 441002, i64 441014, i64 441034, i64 441058, i64 441074, i64 441086}
!16 = !{i64 2147956186}
!17 = !{i64 202591}
!18 = !{i64 1736339}
!19 = !{i64 1736757}
!20 = !{i64 1736142}
