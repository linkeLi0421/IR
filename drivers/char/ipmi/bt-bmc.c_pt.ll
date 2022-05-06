; ModuleID = '/llk/IR/drivers/char/ipmi/bt-bmc.c_pt.bc'
source_filename = "../drivers/char/ipmi/bt-bmc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.lock_class_key = type {}
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.bt_bmc = type { %struct.device, %struct.miscdevice, ptr, i32, %struct.wait_queue_head, %struct.timer_list, %struct.mutex }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@bt_bmc_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-ibt-bmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-ibt-bmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-ibt-bmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license214 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author215 = internal constant [47 x i8] c"author=Alistair Popple <alistair@popple.id.au>\00", section ".modinfo", align 1
@__UNIQUE_ID_description216 = internal constant [60 x i8] c"description=Linux device interface to the IPMI BT interface\00", section ".modinfo", align 1
@bt_bmc_driver = internal global %struct.platform_driver { ptr @bt_bmc_probe, ptr @bt_bmc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bt_bmc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"ipmi-bt-host\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Found bt bmc device\0A\00", align 1
@bt_bmc_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"&bt_bmc->mutex\00", align 1
@bt_bmc_probe.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"&bt_bmc->queue\00", align 1
@bt_bmc_fops = internal constant %struct.file_operations { ptr @__this_module, ptr null, ptr @bt_bmc_read, ptr @bt_bmc_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bt_bmc_poll, ptr @bt_bmc_ioctl, ptr null, ptr null, i32 0, ptr @bt_bmc_open, ptr null, ptr @bt_bmc_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Unable to register misc device\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Using IRQ %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"No IRQ; using timer\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.8 = private unnamed_addr constant [27 x i8] c"drivers/char/ipmi/bt-bmc.c\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@open_count = internal global %struct.atomic_t zeroinitializer, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"Unable to request IRQ %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author215, ptr @__UNIQUE_ID_description216, ptr @__UNIQUE_ID_license214], section "llvm.metadata"

@__mod_of__bt_bmc_match_device_table = dso_local alias [4 x %struct.of_device_id], ptr @bt_bmc_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bt_bmc_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bt_bmc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bt_bmc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.1) #9
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 576, i32 noundef 3520) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %6, align 8
  %7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %8 = getelementptr inbounds %struct.bt_bmc, ptr %3, i32 0, i32 2
  store ptr %7, ptr %8, align 8
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = ptrtoint ptr %7 to i32
  br label %34

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.bt_bmc, ptr %3, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %13, ptr noundef nonnull @.str.2, ptr noundef nonnull @bt_bmc_probe.__key) #8
  %14 = getelementptr inbounds %struct.bt_bmc, ptr %3, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %14, ptr noundef nonnull @.str.4, ptr noundef nonnull @bt_bmc_probe.__key.3) #8
  %15 = getelementptr inbounds %struct.bt_bmc, ptr %3, i32 0, i32 1
  store i32 255, ptr %15, align 8
  %16 = getelementptr inbounds %struct.bt_bmc, ptr %3, i32 0, i32 1, i32 1
  store ptr @.str, ptr %16, align 4
  %17 = getelementptr inbounds %struct.bt_bmc, ptr %3, i32 0, i32 1, i32 2
  store ptr @bt_bmc_fops, ptr %17, align 8
  %18 = getelementptr inbounds %struct.bt_bmc, ptr %3, i32 0, i32 1, i32 4
  store ptr %2, ptr %18, align 4
  %19 = tail call i32 @misc_register(ptr noundef %15) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #9
  br label %34

22:                                               ; preds = %12
  tail call fastcc void @bt_bmc_config_irq(ptr noundef nonnull %3, ptr noundef %0)
  %23 = getelementptr inbounds %struct.bt_bmc, ptr %3, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %24) #9
  br label %32

27:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.7) #9
  %28 = getelementptr inbounds %struct.bt_bmc, ptr %3, i32 0, i32 5
  tail call void @init_timer_key(ptr noundef %28, ptr noundef nonnull @poll_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  %29 = load volatile i32, ptr @jiffies, align 64
  %30 = add i32 %29, 1
  %31 = getelementptr inbounds %struct.bt_bmc, ptr %3, i32 0, i32 5, i32 1
  store i32 %30, ptr %31, align 4
  tail call void @add_timer(ptr noundef %28) #8
  br label %32

32:                                               ; preds = %27, %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %33 = load ptr, ptr %8, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 14983181) #8, !srcloc !9
  tail call fastcc void @clr_b_busy(ptr noundef nonnull %3)
  br label %34

34:                                               ; preds = %32, %21, %10, %1
  %35 = phi i32 [ %11, %10 ], [ %19, %21 ], [ 0, %32 ], [ -12, %1 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bt_bmc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bt_bmc, ptr %3, i32 0, i32 1
  tail call void @misc_deregister(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.bt_bmc, ptr %3, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.bt_bmc, ptr %3, i32 0, i32 5
  %10 = tail call i32 @del_timer_sync(ptr noundef %9) #8
  br label %11

11:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bt_bmc_config_irq(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %4 = tail call i32 @platform_get_irq_optional(ptr noundef %1, i32 noundef 0) #8
  %5 = getelementptr inbounds %struct.bt_bmc, ptr %0, i32 0, i32 3
  store i32 %4, ptr %5, align 4
  %6 = icmp slt i32 %4, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %4, ptr noundef nonnull @bt_bmc_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %0) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load i32, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef %11) #9
  store i32 %8, ptr %5, align 4
  br label %20

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.bt_bmc, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %14, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %17 = or i32 %16, 65
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %18 = load ptr, ptr %13, align 8
  %19 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #8, !srcloc !9
  br label %20

20:                                               ; preds = %12, %10, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @poll_timer(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.timer_list, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, 50
  store i32 %4, ptr %2, align 4
  %5 = getelementptr i8, ptr %0, i32 -12
  tail call void @__wake_up(ptr noundef %5, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  tail call void @add_timer(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clr_b_busy(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bt_bmc, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %6 = icmp sgt i8 %5, -1
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 -128) #8, !srcloc !16
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bt_bmc_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #2 {
  %5 = alloca [256 x i8], align 1
  %6 = alloca %struct.wait_queue_entry, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %5, i8 0, i32 256, i1 false), !annotation !17
  %9 = load i64, ptr %3, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %12, label %11, !prof !18

11:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 185, i32 noundef 9, ptr noundef null) #8
  br label %12

12:                                               ; preds = %11, %4
  %13 = getelementptr i8, ptr %8, i32 40
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %14, i32 16
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %15) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %17 = and i8 %16, 4
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !17
  call void @init_wait_entry(ptr noundef nonnull %6, i32 noundef 0) #8
  %20 = getelementptr i8, ptr %8, i32 48
  %21 = call i32 @prepare_to_wait_event(ptr noundef %20, ptr noundef nonnull %6, i32 noundef 1) #8
  %22 = load ptr, ptr %13, align 8
  %23 = getelementptr i8, ptr %22, i32 16
  %24 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %23) #8, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %25 = and i8 %24, 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %30, %19
  %28 = phi i32 [ %31, %30 ], [ %21, %19 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  call void @schedule() #8
  %31 = call i32 @prepare_to_wait_event(ptr noundef %20, ptr noundef nonnull %6, i32 noundef 1) #8
  %32 = load ptr, ptr %13, align 8
  %33 = getelementptr i8, ptr %32, i32 16
  %34 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %33) #8, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %35 = and i8 %34, 4
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %27, label %37

37:                                               ; preds = %30, %19
  call void @finish_wait(ptr noundef %20, ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #8
  br label %39

38:                                               ; preds = %27
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #8
  br label %104

39:                                               ; preds = %37, %12
  %40 = getelementptr i8, ptr %8, i32 80
  call void @mutex_lock(ptr noundef %40) #8
  %41 = load ptr, ptr %13, align 8
  %42 = getelementptr i8, ptr %41, i32 16
  %43 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %42) #8, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %44 = and i8 %43, 4
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %102, label %46, !prof !19

46:                                               ; preds = %39
  %47 = load ptr, ptr %13, align 8
  %48 = getelementptr i8, ptr %47, i32 16
  %49 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %48) #8, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %50 = icmp sgt i8 %49, -1
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  call void @arm_heavy_mb() #8
  %52 = load ptr, ptr %13, align 8
  %53 = getelementptr i8, ptr %52, i32 16
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %53, i8 -128) #8, !srcloc !16
  br label %54

54:                                               ; preds = %51, %46
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  call void @arm_heavy_mb() #8
  %55 = load ptr, ptr %13, align 8
  %56 = getelementptr i8, ptr %55, i32 16
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %56, i8 4) #8, !srcloc !16
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  call void @arm_heavy_mb() #8
  %57 = load ptr, ptr %13, align 8
  %58 = getelementptr i8, ptr %57, i32 16
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %58, i8 2) #8, !srcloc !16
  %59 = load ptr, ptr %13, align 8
  %60 = getelementptr i8, ptr %59, i32 20
  %61 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %60) #8, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  store i8 %61, ptr %5, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp ult i32 %62, %2
  %64 = trunc i32 %2 to i8
  %65 = add i8 %64, -1
  %66 = select i1 %63, i8 %61, i8 %65
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %93, label %68

68:                                               ; preds = %54
  %69 = zext i8 %66 to i32
  %70 = getelementptr inbounds i8, ptr %5, i32 1
  br label %71

71:                                               ; preds = %71, %68
  %72 = phi i32 [ 0, %68 ], [ %77, %71 ]
  %73 = load ptr, ptr %13, align 8
  %74 = getelementptr i8, ptr %73, i32 20
  %75 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %74) #8, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %76 = getelementptr i8, ptr %70, i32 %72
  store i8 %75, ptr %76, align 1
  %77 = add nuw i32 %72, 1
  %78 = icmp eq i32 %77, %69
  br i1 %78, label %79, label %71

79:                                               ; preds = %71
  %80 = add nuw nsw i32 %69, 1
  %81 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %80, i32 -1090519040) #10, !srcloc !20
  %82 = extractvalue { i32, i32 } %81, 0
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = tail call ptr @llvm.thread.pointer() #8
  %86 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 3
  %87 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %86) #11, !srcloc !21
  %88 = and i32 %87, -13
  %89 = or i32 %88, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %89) #8, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !23
  %90 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %5, i32 noundef %80) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %87) #8, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !23
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, i32 %80, i32 -14
  br label %93

93:                                               ; preds = %84, %79, %54
  %94 = phi i32 [ 0, %54 ], [ -14, %79 ], [ %92, %84 ]
  %95 = load ptr, ptr %13, align 8
  %96 = getelementptr i8, ptr %95, i32 16
  %97 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %96) #8, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %98 = icmp sgt i8 %97, -1
  br i1 %98, label %102, label %99

99:                                               ; preds = %93
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  call void @arm_heavy_mb() #8
  %100 = load ptr, ptr %13, align 8
  %101 = getelementptr i8, ptr %100, i32 16
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %101, i8 -128) #8, !srcloc !16
  br label %102

102:                                              ; preds = %99, %93, %39
  %103 = phi i32 [ -5, %39 ], [ %94, %93 ], [ %94, %99 ]
  call void @mutex_unlock(ptr noundef %40) #8
  br label %104

104:                                              ; preds = %102, %38
  %105 = phi i32 [ %103, %102 ], [ -512, %38 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #8
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bt_bmc_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #2 {
  %5 = alloca [256 x i8], align 1
  %6 = alloca %struct.wait_queue_entry, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %5, i8 0, i32 256, i1 false), !annotation !17
  %9 = icmp ult i32 %2, 5
  br i1 %9, label %96, label %10

10:                                               ; preds = %4
  %11 = load i64, ptr %3, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %14, label %13, !prof !18

13:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 255, i32 noundef 9, ptr noundef null) #8
  br label %14

14:                                               ; preds = %13, %10
  %15 = getelementptr i8, ptr %8, i32 40
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %16, i32 16
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %17) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %19 = and i8 %18, 72
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !17
  call void @init_wait_entry(ptr noundef nonnull %6, i32 noundef 0) #8
  %22 = getelementptr i8, ptr %8, i32 48
  %23 = call i32 @prepare_to_wait_event(ptr noundef %22, ptr noundef nonnull %6, i32 noundef 1) #8
  %24 = load ptr, ptr %15, align 8
  %25 = getelementptr i8, ptr %24, i32 16
  %26 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %25) #8, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %27 = and i8 %26, 72
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %32, %21
  %30 = phi i32 [ %33, %32 ], [ %23, %21 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  call void @schedule() #8
  %33 = call i32 @prepare_to_wait_event(ptr noundef %22, ptr noundef nonnull %6, i32 noundef 1) #8
  %34 = load ptr, ptr %15, align 8
  %35 = getelementptr i8, ptr %34, i32 16
  %36 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %35) #8, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %37 = and i8 %36, 72
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %29

39:                                               ; preds = %32, %21
  call void @finish_wait(ptr noundef %22, ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #8
  br label %41

40:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #8
  br label %96

41:                                               ; preds = %39, %14
  %42 = getelementptr i8, ptr %8, i32 80
  call void @mutex_lock(ptr noundef %42) #8
  %43 = load ptr, ptr %15, align 8
  %44 = getelementptr i8, ptr %43, i32 16
  %45 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %44) #8, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %46 = and i8 %45, 72
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %94, !prof !18

48:                                               ; preds = %41
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  call void @arm_heavy_mb() #8
  %49 = load ptr, ptr %15, align 8
  %50 = getelementptr i8, ptr %49, i32 16
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %50, i8 1) #8, !srcloc !16
  br label %51

51:                                               ; preds = %85, %48
  %52 = phi ptr [ %87, %85 ], [ %1, %48 ]
  %53 = phi i32 [ %86, %85 ], [ %2, %48 ]
  %54 = phi i32 [ %88, %85 ], [ 0, %48 ]
  %55 = call i32 @llvm.smin.i32(i32 %53, i32 256)
  %56 = icmp ugt i32 %55, 256
  br i1 %56, label %57, label %58, !prof !19

57:                                               ; preds = %51
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef 256, i32 noundef %55) #8
  br label %90

58:                                               ; preds = %51
  %59 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %52, i32 %55, i32 -1090519040) #10, !srcloc !24
  %60 = extractvalue { i32, i32 } %59, 0
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %69, !prof !18

62:                                               ; preds = %58
  %63 = tail call ptr @llvm.thread.pointer() #8
  %64 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 3
  %65 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %64) #11, !srcloc !21
  %66 = and i32 %65, -13
  %67 = or i32 %66, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #8, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !23
  %68 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %52, i32 noundef %55) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #8, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !23
  br label %69

69:                                               ; preds = %62, %58
  %70 = phi i32 [ %68, %62 ], [ %55, %58 ]
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72, !prof !18

72:                                               ; preds = %69
  %73 = sub i32 %55, %70
  %74 = getelementptr i8, ptr %5, i32 %73
  call void @llvm.memset.p0.i32(ptr align 1 %74, i8 0, i32 %70, i1 false) #8
  br label %90

75:                                               ; preds = %69
  %76 = icmp eq i32 %55, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %77, %75
  %78 = phi i32 [ %83, %77 ], [ 0, %75 ]
  %79 = getelementptr i8, ptr %5, i32 %78
  %80 = load i8, ptr %79, align 1
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  call void @arm_heavy_mb() #8
  %81 = load ptr, ptr %15, align 8
  %82 = getelementptr i8, ptr %81, i32 20
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %82, i8 %80) #8, !srcloc !16
  %83 = add nuw i32 %78, 1
  %84 = icmp eq i32 %83, %55
  br i1 %84, label %85, label %77

85:                                               ; preds = %77, %75
  %86 = sub i32 %53, %55
  %87 = getelementptr i8, ptr %52, i32 %55
  %88 = add i32 %55, %54
  %89 = icmp eq i32 %86, 0
  br i1 %89, label %90, label %51

90:                                               ; preds = %85, %72, %57
  %91 = phi i32 [ -14, %72 ], [ -14, %57 ], [ %88, %85 ]
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  call void @arm_heavy_mb() #8
  %92 = load ptr, ptr %15, align 8
  %93 = getelementptr i8, ptr %92, i32 16
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %93, i8 8) #8, !srcloc !16
  br label %94

94:                                               ; preds = %90, %41
  %95 = phi i32 [ %91, %90 ], [ -5, %41 ]
  call void @mutex_unlock(ptr noundef %42) #8
  br label %96

96:                                               ; preds = %94, %40, %4
  %97 = phi i32 [ %95, %94 ], [ -22, %4 ], [ -512, %40 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #8
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bt_bmc_poll(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 48
  %6 = icmp eq ptr %1, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %5, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1) #8
  br label %13

13:                                               ; preds = %12, %7, %2
  %14 = getelementptr i8, ptr %4, i32 40
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr i8, ptr %15, i32 16
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %18 = zext i8 %17 to i32
  %19 = lshr i32 %18, 2
  %20 = and i32 %19, 1
  %21 = and i32 %18, 72
  %22 = icmp eq i32 %21, 0
  %23 = or i32 %20, 4
  %24 = select i1 %22, i32 %23, i32 %20
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bt_bmc_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %1, 45312
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %8 = getelementptr i8, ptr %7, i32 40
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %10, i8 16) #8, !srcloc !16
  br label %11

11:                                               ; preds = %5, %3
  %12 = phi i32 [ 0, %5 ], [ -22, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bt_bmc_open(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @open_count) #8, !srcloc !26
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @open_count, ptr nonnull @open_count, i32 1, ptr nonnull elementtype(i32) @open_count) #8, !srcloc !27
  %6 = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !28
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %4, i32 40
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %10, i32 16
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %11) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %13 = icmp sgt i8 %12, -1
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %15 = load ptr, ptr %9, align 8
  %16 = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %16, i8 -128) #8, !srcloc !16
  br label %19

17:                                               ; preds = %2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @open_count) #8, !srcloc !26
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @open_count, ptr nonnull @open_count, i32 1, ptr nonnull elementtype(i32) @open_count) #8, !srcloc !29
  br label %19

19:                                               ; preds = %17, %14, %8
  %20 = phi i32 [ -16, %17 ], [ 0, %8 ], [ 0, %14 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bt_bmc_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @open_count) #8, !srcloc !26
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @open_count, ptr nonnull @open_count, i32 1, ptr nonnull elementtype(i32) @open_count) #8, !srcloc !29
  %6 = getelementptr i8, ptr %4, i32 40
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 16
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %10 = icmp sgt i8 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 -128) #8, !srcloc !16
  br label %14

14:                                               ; preds = %11, %2
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bt_bmc_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.bt_bmc, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !30
  %7 = and i32 %6, 65
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %7) #8, !srcloc !9
  %12 = getelementptr inbounds %struct.bt_bmc, ptr %1, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %12, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i32 [ 1, %9 ], [ 0, %2 ]
  ret i32 %14
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }

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
!8 = !{i64 2152369393}
!9 = !{i64 3063392}
!10 = !{i64 3063810}
!11 = !{i64 2152365942}
!12 = !{i64 2152366142}
!13 = !{i64 3063590}
!14 = !{i64 2152353011}
!15 = !{i64 2152353198}
!16 = !{i64 3063195}
!17 = !{!"auto-init"}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2152029686, i64 2152029711}
!21 = !{i64 4525220}
!22 = !{i64 4525417}
!23 = !{i64 2152010696}
!24 = !{i64 2152029108, i64 2152029133}
!25 = !{i64 2147928546}
!26 = !{i64 255457, i64 2147757023, i64 2147757049, i64 2147757096, i64 2147757118, i64 2147757146, i64 2147757166}
!27 = !{i64 2147831408, i64 2147831440, i64 2147831469, i64 2147831503, i64 2147831534, i64 2147831557}
!28 = !{i64 2147928749}
!29 = !{i64 2147833081, i64 2147833107, i64 2147833136, i64 2147833170, i64 2147833201, i64 2147833224}
!30 = !{i64 2152364549}
!31 = !{i64 2152364749}
