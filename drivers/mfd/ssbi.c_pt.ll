; ModuleID = '/llk/IR/drivers/mfd/ssbi.c_pt.bc'
source_filename = "../drivers/mfd/ssbi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssbi_read:\09\09\09\09\09"
module asm "\09.asciz \09\22ssbi_read\22\09\09\09\09\09"
module asm "__kstrtabns_ssbi_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssbi_write:\09\09\09\09\09"
module asm "\09.asciz \09\22ssbi_write\22\09\09\09\09\09"
module asm "__kstrtabns_ssbi_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ssbi = type { ptr, ptr, %struct.spinlock, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__kstrtab_ssbi_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssbi_read = external dso_local constant [0 x i8], align 1
@__ksymtab_ssbi_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssbi_read to i32), ptr @__kstrtab_ssbi_read, ptr @__kstrtabns_ssbi_read }, section "___ksymtab_gpl+ssbi_read", align 4
@__kstrtab_ssbi_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssbi_write = external dso_local constant [0 x i8], align 1
@__ksymtab_ssbi_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssbi_write to i32), ptr @__kstrtab_ssbi_write, ptr @__kstrtabns_ssbi_write }, section "___ksymtab_gpl+ssbi_write", align 4
@__initcall__kmod_ssbi__166_323_ssbi_driver_init6 = internal global ptr @ssbi_driver_init, section ".initcall6.init", align 4
@ssbi_driver = internal global %struct.platform_driver { ptr @ssbi_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ssbi_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ssbi_driver_exit = internal global ptr @ssbi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file167 = internal constant [27 x i8] c"ssbi.file=drivers/mfd/ssbi\00", section ".modinfo", align 1
@__UNIQUE_ID_license168 = internal constant [20 x i8] c"ssbi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version169 = internal constant [17 x i8] c"ssbi.version=1.0\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ssbi\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292 }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_alias170 = internal constant [25 x i8] c"ssbi.alias=platform:ssbi\00", section ".modinfo", align 1
@__UNIQUE_ID_author171 = internal constant [42 x i8] c"ssbi.author=Dima Zavin <dima@android.com>\00", section ".modinfo", align 1
@ssbi_match_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ssbi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"qcom,controller-type\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Missing qcom,controller-type property\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"SSBI controller type: '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ssbi2\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"pmic-arbiter\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Unknown qcom,controller-type\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias170, ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_file167, ptr @__UNIQUE_ID_license168, ptr @__UNIQUE_ID_version169, ptr @__exitcall_ssbi_driver_exit, ptr @__initcall__kmod_ssbi__166_323_ssbi_driver_init6, ptr @__ksymtab_ssbi_read, ptr @__ksymtab_ssbi_write, ptr @__modver_attr, ptr @ssbi_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ssbi_read(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ssbi, ptr %6, i32 0, i32 2
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #5
  %9 = getelementptr inbounds %struct.ssbi, ptr %6, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %6, i16 noundef zeroext %1, ptr noundef %2, i32 noundef %3) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #5
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ssbi_write(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ssbi, ptr %6, i32 0, i32 2
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #5
  %9 = getelementptr inbounds %struct.ssbi, ptr %6, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %6, i16 noundef zeroext %1, ptr noundef %2, i32 noundef %3) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #5
  ret i32 %11
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ssbi_driver_init() #2 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ssbi_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ssbi_driver_exit() #2 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ssbi_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ssbi_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 24, i32 noundef 3520) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #5
  %9 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %8) #5
  %10 = getelementptr inbounds %struct.ssbi, ptr %5, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = ptrtoint ptr %9 to i32
  br label %38

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %15, align 8
  %16 = tail call ptr @of_get_property(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef null) #5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #6
  br label %38

19:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef nonnull %16) #6
  %20 = tail call i32 @strcmp(ptr noundef nonnull %16, ptr noundef nonnull dereferenceable(5) @.str.1)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @strcmp(ptr noundef nonnull %16, ptr noundef nonnull dereferenceable(6) @.str.6)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @strcmp(ptr noundef nonnull %16, ptr noundef nonnull dereferenceable(13) @.str.7)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #6
  br label %38

29:                                               ; preds = %25, %22, %19
  %30 = phi i32 [ 0, %19 ], [ 1, %22 ], [ 2, %25 ]
  %31 = phi ptr [ @ssbi_read_bytes, %19 ], [ @ssbi_read_bytes, %22 ], [ @ssbi_pa_read_bytes, %25 ]
  %32 = phi ptr [ @ssbi_write_bytes, %19 ], [ @ssbi_write_bytes, %22 ], [ @ssbi_pa_write_bytes, %25 ]
  %33 = getelementptr inbounds %struct.ssbi, ptr %5, i32 0, i32 3
  store i32 %30, ptr %33, align 4
  %34 = getelementptr inbounds %struct.ssbi, ptr %5, i32 0, i32 4
  store ptr %31, ptr %34, align 4
  %35 = getelementptr inbounds %struct.ssbi, ptr %5, i32 0, i32 5
  store ptr %32, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ssbi, ptr %5, i32 0, i32 2
  store i32 0, ptr %36, align 4
  %37 = tail call i32 @devm_of_platform_populate(ptr noundef %2) #5
  br label %38

38:                                               ; preds = %29, %28, %18, %12, %1
  %39 = phi i32 [ %13, %12 ], [ -22, %18 ], [ %37, %29 ], [ -22, %28 ], [ -12, %1 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ssbi_pa_read_bytes(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr noundef writeonly %2, i32 noundef %3) #0 {
  %5 = and i16 %1, 32767
  %6 = zext i16 %5 to i32
  %7 = shl nuw nsw i32 %6, 8
  %8 = or i32 %7, 16777216
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %38, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ssbi, ptr %0, i32 0, i32 1
  br label %12

12:                                               ; preds = %34, %10
  %13 = phi i32 [ %3, %10 ], [ %36, %34 ]
  %14 = phi ptr [ %2, %10 ], [ %35, %34 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %15 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %8) #5, !srcloc !9
  br label %16

16:                                               ; preds = %30, %12
  %17 = phi i32 [ 99, %12 ], [ %32, %30 ]
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr i8, ptr %18, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %21 = and i32 %20, 67108864
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %16
  %24 = and i32 %20, 134217728
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = icmp eq ptr %14, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %26
  %29 = trunc i32 %20 to i8
  store i8 %29, ptr %14, align 1
  br label %34

30:                                               ; preds = %23
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #5
  %32 = add nsw i32 %17, -1
  %33 = icmp eq i32 %17, 0
  br i1 %33, label %38, label %16

34:                                               ; preds = %28, %26
  %35 = getelementptr i8, ptr %14, i32 1
  %36 = add i32 %13, -1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %12

38:                                               ; preds = %34, %30, %16, %4
  %39 = phi i32 [ 0, %4 ], [ -1, %16 ], [ -110, %30 ], [ 0, %34 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ssbi_pa_write_bytes(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %36, label %6

6:                                                ; preds = %4
  %7 = and i16 %1, 32767
  %8 = zext i16 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = getelementptr inbounds %struct.ssbi, ptr %0, i32 0, i32 1
  br label %11

11:                                               ; preds = %32, %6
  %12 = phi i32 [ %3, %6 ], [ %34, %32 ]
  %13 = phi ptr [ %2, %6 ], [ %33, %32 ]
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = or i32 %9, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %17 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #5, !srcloc !9
  br label %18

18:                                               ; preds = %28, %11
  %19 = phi i32 [ 99, %11 ], [ %30, %28 ]
  %20 = load ptr, ptr %10, align 4
  %21 = getelementptr i8, ptr %20, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %23 = and i32 %22, 67108864
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %18
  %26 = and i32 %22, 134217728
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #5
  %30 = add nsw i32 %19, -1
  %31 = icmp eq i32 %19, 0
  br i1 %31, label %36, label %18

32:                                               ; preds = %25
  %33 = getelementptr i8, ptr %13, i32 1
  %34 = add i32 %12, -1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %11

36:                                               ; preds = %32, %28, %18, %4
  %37 = phi i32 [ 0, %4 ], [ -110, %28 ], [ -1, %18 ], [ 0, %32 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ssbi_read_bytes(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #0 {
  %5 = zext i16 %1 to i32
  %6 = shl nuw i32 %5, 16
  %7 = and i32 %6, 16711680
  %8 = or i32 %7, 16777216
  %9 = getelementptr inbounds %struct.ssbi, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %23

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ssbi, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 28
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %17 = and i32 %16, 15
  %18 = lshr i32 %5, 4
  %19 = and i32 %18, 2032
  %20 = or i32 %17, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %21 = load ptr, ptr %13, align 4
  %22 = getelementptr i8, ptr %21, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #5, !srcloc !9
  br label %23

23:                                               ; preds = %12, %4
  %24 = icmp eq i32 %3, 0
  br i1 %24, label %63, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ssbi, ptr %0, i32 0, i32 1
  br label %27

27:                                               ; preds = %55, %25
  %28 = phi ptr [ %2, %25 ], [ %60, %55 ]
  %29 = phi i32 [ %3, %25 ], [ %61, %55 ]
  br label %30

30:                                               ; preds = %37, %27
  %31 = phi i32 [ 99, %27 ], [ %39, %37 ]
  %32 = load ptr, ptr %26, align 4
  %33 = getelementptr i8, ptr %32, i32 20
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #5
  %39 = add nsw i32 %31, -1
  %40 = icmp eq i32 %31, 0
  br i1 %40, label %63, label %30

41:                                               ; preds = %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %42 = load ptr, ptr %26, align 4
  %43 = getelementptr i8, ptr %42, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %8) #5, !srcloc !9
  br label %44

44:                                               ; preds = %51, %41
  %45 = phi i32 [ 99, %41 ], [ %53, %51 ]
  %46 = load ptr, ptr %26, align 4
  %47 = getelementptr i8, ptr %46, i32 20
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %49 = and i32 %48, 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748) #5
  %53 = add nsw i32 %45, -1
  %54 = icmp eq i32 %45, 0
  br i1 %54, label %63, label %44

55:                                               ; preds = %44
  %56 = load ptr, ptr %26, align 4
  %57 = getelementptr i8, ptr %56, i32 16
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %59 = trunc i32 %58 to i8
  %60 = getelementptr i8, ptr %28, i32 1
  store i8 %59, ptr %28, align 1
  %61 = add i32 %29, -1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %27

63:                                               ; preds = %55, %51, %37, %23
  %64 = phi i32 [ 0, %23 ], [ -110, %51 ], [ -110, %37 ], [ 0, %55 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ssbi_write_bytes(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.ssbi, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ssbi, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 28
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %13 = and i32 %12, 15
  %14 = lshr i16 %1, 4
  %15 = and i16 %14, 2032
  %16 = zext i16 %15 to i32
  %17 = or i32 %13, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr i8, ptr %18, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #5, !srcloc !9
  br label %20

20:                                               ; preds = %8, %4
  %21 = icmp eq i32 %3, 0
  br i1 %21, label %62, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.ssbi, ptr %0, i32 0, i32 1
  %24 = and i16 %1, 255
  %25 = zext i16 %24 to i32
  %26 = shl nuw nsw i32 %25, 16
  br label %27

27:                                               ; preds = %58, %22
  %28 = phi ptr [ %2, %22 ], [ %59, %58 ]
  %29 = phi i32 [ %3, %22 ], [ %60, %58 ]
  br label %30

30:                                               ; preds = %37, %27
  %31 = phi i32 [ 99, %27 ], [ %39, %37 ]
  %32 = load ptr, ptr %23, align 4
  %33 = getelementptr i8, ptr %32, i32 20
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #5
  %39 = add nsw i32 %31, -1
  %40 = icmp eq i32 %31, 0
  br i1 %40, label %62, label %30

41:                                               ; preds = %30
  %42 = load i8, ptr %28, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %26, %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %45 = load ptr, ptr %23, align 4
  %46 = getelementptr i8, ptr %45, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #5, !srcloc !9
  br label %47

47:                                               ; preds = %54, %41
  %48 = phi i32 [ 99, %41 ], [ %56, %54 ]
  %49 = load ptr, ptr %23, align 4
  %50 = getelementptr i8, ptr %49, i32 20
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %47
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748) #5
  %56 = add nsw i32 %48, -1
  %57 = icmp eq i32 %48, 0
  br i1 %57, label %62, label %47

58:                                               ; preds = %47
  %59 = getelementptr i8, ptr %28, i32 1
  %60 = add i32 %29, -1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %27

62:                                               ; preds = %58, %54, %37, %20
  %63 = phi i32 [ 0, %20 ], [ -110, %54 ], [ -110, %37 ], [ 0, %58 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 2151458135}
!9 = !{i64 2389030}
!10 = !{i64 2389448}
!11 = !{i64 2151457782}
