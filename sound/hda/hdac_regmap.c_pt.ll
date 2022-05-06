; ModuleID = '/llk/IR/sound/hda/hdac_regmap.c_pt.bc'
source_filename = "../sound/hda/hdac_regmap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_regmap_init:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_regmap_init\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_regmap_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_regmap_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_regmap_exit\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_regmap_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_regmap_add_vendor_verb:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_regmap_add_vendor_verb\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_regmap_add_vendor_verb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_regmap_write_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_regmap_write_raw\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_regmap_write_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_regmap_read_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_regmap_read_raw\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_regmap_read_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_regmap_update_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_regmap_update_raw\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_regmap_update_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_regmap_update_raw_once:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_regmap_update_raw_once\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_regmap_update_raw_once:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_regmap_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_regmap_sync\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_regmap_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_array = type { i32, i32, i32, i32, ptr }

@hda_regmap_cfg = internal constant %struct.regmap_config { ptr @.str, i32 32, i32 0, i32 0, i32 32, ptr @hda_writeable_reg, ptr @hda_readable_reg, ptr @hda_volatile_reg, ptr null, ptr null, ptr null, i8 1, ptr null, ptr null, ptr null, ptr @hda_reg_read, ptr @hda_reg_write, ptr null, i8 0, i32 268435455, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@__kstrtab_snd_hdac_regmap_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_regmap_init = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_regmap_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_regmap_init to i32), ptr @__kstrtab_snd_hdac_regmap_init, ptr @__kstrtabns_snd_hdac_regmap_init }, section "___ksymtab_gpl+snd_hdac_regmap_init", align 4
@__kstrtab_snd_hdac_regmap_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_regmap_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_regmap_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_regmap_exit to i32), ptr @__kstrtab_snd_hdac_regmap_exit, ptr @__kstrtabns_snd_hdac_regmap_exit }, section "___ksymtab_gpl+snd_hdac_regmap_exit", align 4
@__kstrtab_snd_hdac_regmap_add_vendor_verb = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_regmap_add_vendor_verb = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_regmap_add_vendor_verb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_regmap_add_vendor_verb to i32), ptr @__kstrtab_snd_hdac_regmap_add_vendor_verb, ptr @__kstrtabns_snd_hdac_regmap_add_vendor_verb }, section "___ksymtab_gpl+snd_hdac_regmap_add_vendor_verb", align 4
@__kstrtab_snd_hdac_regmap_write_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_regmap_write_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_regmap_write_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_regmap_write_raw to i32), ptr @__kstrtab_snd_hdac_regmap_write_raw, ptr @__kstrtabns_snd_hdac_regmap_write_raw }, section "___ksymtab_gpl+snd_hdac_regmap_write_raw", align 4
@__kstrtab_snd_hdac_regmap_read_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_regmap_read_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_regmap_read_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_regmap_read_raw to i32), ptr @__kstrtab_snd_hdac_regmap_read_raw, ptr @__kstrtabns_snd_hdac_regmap_read_raw }, section "___ksymtab_gpl+snd_hdac_regmap_read_raw", align 4
@__kstrtab_snd_hdac_regmap_update_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_regmap_update_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_regmap_update_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_regmap_update_raw to i32), ptr @__kstrtab_snd_hdac_regmap_update_raw, ptr @__kstrtabns_snd_hdac_regmap_update_raw }, section "___ksymtab_gpl+snd_hdac_regmap_update_raw", align 4
@__kstrtab_snd_hdac_regmap_update_raw_once = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_regmap_update_raw_once = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_regmap_update_raw_once = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_regmap_update_raw_once to i32), ptr @__kstrtab_snd_hdac_regmap_update_raw_once, ptr @__kstrtabns_snd_hdac_regmap_update_raw_once }, section "___ksymtab_gpl+snd_hdac_regmap_update_raw_once", align 4
@__kstrtab_snd_hdac_regmap_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_regmap_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_regmap_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_regmap_sync to i32), ptr @__kstrtab_snd_hdac_regmap_sync, ptr @__kstrtabns_snd_hdac_regmap_sync }, section "___ksymtab_gpl+snd_hdac_regmap_sync", align 4
@.str = private unnamed_addr constant [8 x i8] c"hdaudio\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_snd_hdac_regmap_add_vendor_verb, ptr @__ksymtab_snd_hdac_regmap_exit, ptr @__ksymtab_snd_hdac_regmap_init, ptr @__ksymtab_snd_hdac_regmap_read_raw, ptr @__ksymtab_snd_hdac_regmap_sync, ptr @__ksymtab_snd_hdac_regmap_update_raw, ptr @__ksymtab_snd_hdac_regmap_update_raw_once, ptr @__ksymtab_snd_hdac_regmap_write_raw], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_regmap_init(ptr noundef %0) #0 {
  %2 = tail call ptr @__regmap_init(ptr noundef %0, ptr noundef null, ptr noundef %0, ptr noundef nonnull @hda_regmap_cfg, ptr noundef null, ptr noundef null) #6
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i32
  br label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 23
  store ptr %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 25, i32 2
  store i32 4, ptr %8, align 4
  %9 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 25, i32 3
  store i32 8, ptr %9, align 4
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi i32 [ %5, %4 ], [ 0, %6 ]
  ret i32 %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hdac_regmap_exit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 23
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @regmap_exit(ptr noundef nonnull %3) #6
  store ptr null, ptr %2, align 4
  %6 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 25
  tail call void @snd_array_free(ptr noundef %6) #6
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_array_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_regmap_add_vendor_verb(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 25
  %4 = tail call ptr @snd_array_new(ptr noundef %3) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = or i32 %1, 2048
  store i32 %7, ptr %4, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ 0, %6 ], [ -12, %2 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_array_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_regmap_write_raw(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 24
  tail call void @mutex_lock(ptr noundef %4) #6
  %5 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @hda_reg_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) #6
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @regmap_write(ptr noundef nonnull %6, i32 noundef %1, i32 noundef %2) #6
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %11, %10 ], [ %9, %8 ]
  tail call void @mutex_unlock(ptr noundef %4) #6
  %14 = icmp eq i32 %13, -11
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #6
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  tail call void @mutex_lock(ptr noundef %4) #6
  %19 = load ptr, ptr %5, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call i32 @hda_reg_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) #6
  br label %25

23:                                               ; preds = %18
  %24 = tail call i32 @regmap_write(ptr noundef nonnull %19, i32 noundef %1, i32 noundef %2) #6
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %24, %23 ], [ %22, %21 ]
  tail call void @mutex_unlock(ptr noundef %4) #6
  br label %27

27:                                               ; preds = %25, %15
  %28 = phi i32 [ %26, %25 ], [ %16, %15 ]
  %29 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #6
  br label %30

30:                                               ; preds = %27, %12
  %31 = phi i32 [ %28, %27 ], [ %13, %12 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_up_pm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_down_pm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_regmap_read_raw(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc i32 @__snd_hdac_regmap_read_raw(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext false)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__snd_hdac_regmap_read_raw(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 24
  tail call void @mutex_lock(ptr noundef %5) #6
  br i1 %3, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 23
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6, %4
  %11 = tail call i32 @hda_reg_read(ptr noundef %0, i32 noundef %1, ptr noundef %2) #6
  br label %14

12:                                               ; preds = %6
  %13 = tail call i32 @regmap_read(ptr noundef nonnull %8, i32 noundef %1, ptr noundef %2) #6
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  tail call void @mutex_unlock(ptr noundef %5) #6
  %16 = icmp eq i32 %15, -11
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #6
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  tail call void @mutex_lock(ptr noundef %5) #6
  br i1 %3, label %25, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 23
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %20
  %26 = tail call i32 @hda_reg_read(ptr noundef %0, i32 noundef %1, ptr noundef %2) #6
  br label %29

27:                                               ; preds = %21
  %28 = tail call i32 @regmap_read(ptr noundef nonnull %23, i32 noundef %1, ptr noundef %2) #6
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  tail call void @mutex_unlock(ptr noundef %5) #6
  br label %31

31:                                               ; preds = %29, %17
  %32 = phi i32 [ %30, %29 ], [ %18, %17 ]
  %33 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #6
  br label %34

34:                                               ; preds = %31, %14
  %35 = phi i32 [ %32, %31 ], [ %15, %14 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_regmap_read_raw_uncached(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @__snd_hdac_regmap_read_raw(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext true)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_regmap_update_raw(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @reg_raw_update(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  %6 = icmp eq i32 %5, -11
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #6
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @reg_raw_update(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i32 [ %11, %10 ], [ %8, %7 ]
  %14 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #6
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi i32 [ %13, %12 ], [ %5, %4 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @reg_raw_update(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #6
  store i8 0, ptr %6, align 1, !annotation !8
  %7 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 24
  tail call void @mutex_lock(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 23
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %4
  %12 = call i32 @regmap_update_bits_base(ptr noundef nonnull %9, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %6, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  %15 = load i8, ptr %6, align 1, !range !9
  %16 = zext i8 %15 to i32
  br label %31

17:                                               ; preds = %4
  %18 = call i32 @hda_reg_read(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = and i32 %3, %2
  %22 = load i32, ptr %5, align 4
  %23 = xor i32 %2, -1
  %24 = and i32 %22, %23
  %25 = or i32 %24, %21
  %26 = icmp eq i32 %25, %22
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = call i32 @hda_reg_write(ptr noundef %0, i32 noundef %1, i32 noundef %25)
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 1, i32 %28
  br label %31

31:                                               ; preds = %27, %20, %17, %14, %11
  %32 = phi i32 [ %12, %11 ], [ %16, %14 ], [ %18, %17 ], [ %30, %27 ], [ 0, %20 ]
  call void @mutex_unlock(ptr noundef %7) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_regmap_update_raw_once(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @reg_raw_update_once(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  %6 = icmp eq i32 %5, -11
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = tail call i32 @snd_hdac_power_up_pm(ptr noundef %0) #6
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @reg_raw_update_once(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i32 [ %11, %10 ], [ %8, %7 ]
  %14 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #6
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi i32 [ %13, %12 ], [ %5, %4 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @reg_raw_update_once(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 23
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @reg_raw_update(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  br label %23

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 24
  tail call void @mutex_lock(ptr noundef %12) #6
  %13 = load ptr, ptr %6, align 4
  tail call void @regcache_cache_only(ptr noundef %13, i1 noundef zeroext true) #6
  %14 = load ptr, ptr %6, align 4
  %15 = call i32 @regmap_read(ptr noundef %14, i32 noundef %1, ptr noundef nonnull %5) #6
  %16 = load ptr, ptr %6, align 4
  call void @regcache_cache_only(ptr noundef %16, i1 noundef zeroext false) #6
  %17 = icmp slt i32 %15, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load ptr, ptr %6, align 4
  %20 = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %21

21:                                               ; preds = %18, %11
  %22 = phi i32 [ %20, %18 ], [ %15, %11 ]
  call void @mutex_unlock(ptr noundef %12) #6
  br label %23

23:                                               ; preds = %21, %9
  %24 = phi i32 [ %22, %21 ], [ %10, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hdac_regmap_sync(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 23
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 24
  tail call void @mutex_lock(ptr noundef %6) #6
  %7 = load ptr, ptr %2, align 4
  %8 = tail call i32 @regcache_sync(ptr noundef %7) #6
  tail call void @mutex_unlock(ptr noundef %6) #6
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal zeroext i1 @hda_writeable_reg(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = lshr i32 %1, 8
  %4 = and i32 %3, 4095
  %5 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 25
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 25, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 25, i32 2
  br label %12

12:                                               ; preds = %17, %8
  %13 = phi i32 [ 0, %8 ], [ %18, %17 ]
  %14 = phi ptr [ %10, %8 ], [ %21, %17 ]
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %4, %15
  br i1 %16, label %44, label %17

17:                                               ; preds = %12
  %18 = add nuw i32 %13, 1
  %19 = load i32, ptr %11, align 4
  %20 = mul i32 %19, %18
  %21 = getelementptr i8, ptr %10, i32 %20
  %22 = icmp eq i32 %18, %6
  br i1 %22, label %23, label %12

23:                                               ; preds = %17, %2
  %24 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 26
  %25 = load i8, ptr %24, align 8
  %26 = and i8 %25, 2
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = and i32 %3, 3840
  %30 = add nsw i32 %29, -2560
  %31 = lshr exact i32 %30, 8
  switch i32 %31, label %35 [
    i32 0, label %44
    i32 1, label %44
    i32 2, label %32
    i32 5, label %36
  ]

32:                                               ; preds = %28
  %33 = and i8 %25, 4
  %34 = icmp ne i8 %33, 0
  br label %44

35:                                               ; preds = %28
  br label %44

36:                                               ; preds = %28
  %37 = add nsw i32 %4, -3841
  %38 = icmp ult i32 %37, 26
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = trunc i32 %37 to i26
  %41 = lshr i26 -1017143, %40
  %42 = and i26 %41, 1
  %43 = icmp ne i26 %42, 0
  br label %44

44:                                               ; preds = %39, %36, %35, %32, %28, %28, %23, %12
  %45 = phi i1 [ false, %35 ], [ %34, %32 ], [ true, %23 ], [ true, %28 ], [ true, %28 ], [ %43, %39 ], [ false, %36 ], [ true, %12 ]
  ret i1 %45
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal zeroext i1 @hda_readable_reg(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 26
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %45

7:                                                ; preds = %2
  %8 = lshr i32 %1, 8
  %9 = and i32 %8, 4095
  switch i32 %9, label %10 [
    i32 3840, label %45
    i32 3842, label %45
    i32 3872, label %45
    i32 3868, label %45
    i32 3846, label %45
    i32 3885, label %45
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 25
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 25, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 25, i32 2
  br label %18

18:                                               ; preds = %23, %14
  %19 = phi i32 [ 0, %14 ], [ %24, %23 ]
  %20 = phi ptr [ %16, %14 ], [ %27, %23 ]
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %9, %21
  br i1 %22, label %45, label %23

23:                                               ; preds = %18
  %24 = add nuw i32 %19, 1
  %25 = load i32, ptr %17, align 4
  %26 = mul i32 %25, %24
  %27 = getelementptr i8, ptr %16, i32 %26
  %28 = icmp eq i32 %24, %12
  br i1 %28, label %29, label %18

29:                                               ; preds = %23, %10
  %30 = and i32 %8, 3840
  %31 = add nsw i32 %30, -2560
  %32 = lshr exact i32 %31, 8
  switch i32 %32, label %36 [
    i32 0, label %45
    i32 1, label %45
    i32 2, label %33
    i32 5, label %37
  ]

33:                                               ; preds = %29
  %34 = and i8 %4, 4
  %35 = icmp ne i8 %34, 0
  br label %45

36:                                               ; preds = %29
  br label %45

37:                                               ; preds = %29
  %38 = add nsw i32 %9, -3841
  %39 = icmp ult i32 %38, 26
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = trunc i32 %38 to i26
  %42 = lshr i26 -1017143, %41
  %43 = and i26 %42, 1
  %44 = icmp ne i26 %43, 0
  br label %45

45:                                               ; preds = %40, %37, %36, %33, %29, %29, %18, %7, %7, %7, %7, %7, %7, %2
  %46 = phi i1 [ true, %2 ], [ true, %7 ], [ true, %7 ], [ true, %7 ], [ true, %7 ], [ true, %7 ], [ true, %7 ], [ false, %36 ], [ %35, %33 ], [ true, %29 ], [ true, %29 ], [ %44, %40 ], [ false, %37 ], [ true, %18 ]
  ret i1 %46
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @hda_volatile_reg(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = lshr i32 %1, 8
  %4 = and i32 %3, 4095
  switch i32 %4, label %10 [
    i32 3072, label %5
    i32 3328, label %11
    i32 3843, label %11
    i32 3845, label %11
    i32 3849, label %11
    i32 3886, label %11
    i32 3887, label %11
    i32 3888, label %11
    i32 3889, label %11
    i32 3890, label %11
    i32 3891, label %11
    i32 3892, label %11
    i32 3893, label %11
    i32 3894, label %11
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 26
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 4
  %9 = icmp eq i8 %8, 0
  br label %11

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %5, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %12 = phi i1 [ false, %10 ], [ %9, %5 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hda_reg_read(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = lshr i32 %1, 8
  %7 = and i32 %6, 4095
  %8 = icmp eq i32 %7, 3845
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @snd_hdac_keep_power_up(ptr noundef %0) #6
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %83, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 8
  %15 = shl i32 %14, 28
  %16 = or i32 %15, %1
  %17 = and i32 %1, 471040
  %18 = icmp eq i32 %17, 208896
  br i1 %18, label %26, label %43

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 8
  %22 = shl i32 %21, 28
  %23 = or i32 %22, %1
  %24 = and i32 %1, 471040
  %25 = icmp eq i32 %24, 208896
  br i1 %25, label %26, label %59

26:                                               ; preds = %19, %12
  %27 = phi i32 [ %23, %19 ], [ %16, %12 ]
  %28 = phi i32 [ 0, %19 ], [ %10, %12 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %29 = and i32 %27, -12289
  %30 = or i32 %29, 8192
  %31 = call i32 @snd_hdac_exec_verb(ptr noundef %0, i32 noundef %30, i32 noundef 0, ptr noundef nonnull %4) #6
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %26
  %34 = call i32 @snd_hdac_exec_verb(ptr noundef %0, i32 noundef %29, i32 noundef 0, ptr noundef nonnull %5) #6
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr %4, align 4
  %38 = load i32, ptr %5, align 4
  %39 = shl i32 %38, 8
  %40 = or i32 %39, %37
  store i32 %40, ptr %2, align 4
  br label %41

41:                                               ; preds = %36, %33, %26
  %42 = phi i32 [ 0, %36 ], [ %31, %26 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %77

43:                                               ; preds = %12
  %44 = icmp eq i32 %7, 3072
  br i1 %44, label %45, label %59

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 26
  %47 = load i8, ptr %46, align 8
  %48 = and i8 %47, 4
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %77, label %50

50:                                               ; preds = %45
  %51 = and i32 %16, -1048321
  %52 = or i32 %51, 327680
  %53 = tail call i32 @snd_hdac_exec_verb(ptr noundef %0, i32 noundef %52, i32 noundef 0, ptr noundef null) #6
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %77, label %55

55:                                               ; preds = %50
  %56 = and i32 %16, -1048576
  %57 = or i32 %56, 851968
  %58 = tail call i32 @snd_hdac_exec_verb(ptr noundef %0, i32 noundef %57, i32 noundef 0, ptr noundef %2) #6
  br label %77

59:                                               ; preds = %43, %19
  %60 = phi i32 [ %10, %43 ], [ 0, %19 ]
  %61 = phi i32 [ %16, %43 ], [ %23, %19 ]
  %62 = and i32 %1, 458752
  %63 = icmp eq i32 %62, 196608
  %64 = and i32 %61, -17
  %65 = select i1 %63, i32 %64, i32 %61
  %66 = tail call i32 @snd_hdac_exec_verb(ptr noundef %0, i32 noundef %65, i32 noundef 0, ptr noundef %2) #6
  %67 = icmp sgt i32 %66, -1
  %68 = and i1 %8, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %59
  %70 = load i32, ptr %2, align 4
  %71 = and i32 %70, 256
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  store i32 -1, ptr %2, align 4
  br label %77

74:                                               ; preds = %69
  %75 = lshr i32 %70, 4
  %76 = and i32 %75, 15
  store i32 %76, ptr %2, align 4
  br label %77

77:                                               ; preds = %74, %73, %59, %55, %50, %45, %41
  %78 = phi i32 [ %28, %41 ], [ %60, %73 ], [ %60, %74 ], [ %60, %59 ], [ %10, %45 ], [ %10, %50 ], [ %10, %55 ]
  %79 = phi i32 [ %42, %41 ], [ %66, %73 ], [ %66, %74 ], [ %66, %59 ], [ -22, %45 ], [ %53, %50 ], [ %58, %55 ]
  %80 = icmp eq i32 %78, 1
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call i32 @snd_hdac_power_down_pm(ptr noundef %0) #6
  br label %83

83:                                               ; preds = %81, %77, %9
  %84 = phi i32 [ -11, %9 ], [ %79, %77 ], [ %79, %81 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hda_reg_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 26
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %126

8:                                                ; preds = %3
  %9 = and i32 %1, -524289
  %10 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 8
  %12 = shl i32 %11, 28
  %13 = or i32 %12, %9
  %14 = lshr i32 %1, 8
  %15 = and i32 %14, 2047
  %16 = icmp eq i32 %15, 1797
  br i1 %16, label %28, label %17

17:                                               ; preds = %8
  %18 = tail call i32 @snd_hdac_keep_power_up(ptr noundef %0) #6
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i8, ptr %4, align 8
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, i32 -11, i32 0
  br label %126

25:                                               ; preds = %17
  %26 = and i32 %1, 471040
  %27 = icmp eq i32 %26, 208896
  br i1 %27, label %31, label %58

28:                                               ; preds = %8
  %29 = and i32 %1, 471040
  %30 = icmp eq i32 %29, 208896
  br i1 %30, label %31, label %75

31:                                               ; preds = %28, %25
  %32 = phi i32 [ 0, %28 ], [ %18, %25 ]
  %33 = and i32 %1, 32768
  %34 = icmp eq i32 %33, 0
  %35 = shl i32 %1, 8
  %36 = and i32 %35, 3840
  %37 = or i32 %36, 212992
  %38 = select i1 %34, i32 %37, i32 229376
  %39 = and i32 %13, -1048576
  %40 = or i32 %39, %38
  %41 = and i32 %2, 255
  %42 = lshr i32 %2, 8
  %43 = and i32 %42, 255
  %44 = icmp eq i32 %41, %43
  %45 = or i32 %40, %41
  br i1 %44, label %46, label %49

46:                                               ; preds = %31
  %47 = or i32 %45, 12288
  %48 = tail call i32 @snd_hdac_exec_verb(ptr noundef %0, i32 noundef %47, i32 noundef 0, ptr noundef null) #6
  br label %120

49:                                               ; preds = %31
  %50 = or i32 %45, 8192
  %51 = tail call i32 @snd_hdac_exec_verb(ptr noundef %0, i32 noundef %50, i32 noundef 0, ptr noundef null) #6
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %120, label %53

53:                                               ; preds = %49
  %54 = or i32 %43, %40
  %55 = or i32 %54, 4096
  %56 = tail call i32 @snd_hdac_exec_verb(ptr noundef %0, i32 noundef %55, i32 noundef 0, ptr noundef null) #6
  %57 = tail call i32 @llvm.smin.i32(i32 %56, i32 0) #6
  br label %120

58:                                               ; preds = %25
  %59 = icmp eq i32 %15, 1024
  br i1 %59, label %60, label %75

60:                                               ; preds = %58
  %61 = load i8, ptr %4, align 8
  %62 = and i8 %61, 4
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %120, label %64

64:                                               ; preds = %60
  %65 = and i32 %13, -1048321
  %66 = or i32 %65, 327680
  %67 = tail call i32 @snd_hdac_exec_verb(ptr noundef %0, i32 noundef %66, i32 noundef 0, ptr noundef null) #6
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %120, label %69

69:                                               ; preds = %64
  %70 = and i32 %13, -1048576
  %71 = and i32 %2, 65535
  %72 = or i32 %71, %70
  %73 = or i32 %72, 851968
  %74 = tail call i32 @snd_hdac_exec_verb(ptr noundef %0, i32 noundef %73, i32 noundef 0, ptr noundef null) #6
  br label %120

75:                                               ; preds = %58, %28
  %76 = phi i32 [ %18, %58 ], [ 0, %28 ]
  %77 = and i32 %1, 458752
  %78 = icmp eq i32 %77, 196608
  br i1 %78, label %79, label %97

79:                                               ; preds = %75
  %80 = and i32 %1, 16
  %81 = icmp eq i32 %80, 0
  %82 = and i32 %2, 128
  %83 = icmp eq i32 %82, 0
  %84 = or i1 %81, %83
  %85 = select i1 %84, i32 %2, i32 0
  %86 = and i32 %1, 8192
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i32 784, i32 800
  %89 = and i32 %1, 32768
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %79
  %92 = or i32 %88, 128
  br label %97

93:                                               ; preds = %79
  %94 = and i32 %1, 15
  %95 = or i32 %94, %88
  %96 = or i32 %95, 64
  br label %97

97:                                               ; preds = %93, %91, %75
  %98 = phi i32 [ %85, %91 ], [ %85, %93 ], [ %2, %75 ]
  %99 = phi i32 [ %92, %91 ], [ %96, %93 ], [ %15, %75 ]
  %100 = icmp eq i32 %99, 1820
  %101 = select i1 %100, i32 4, i32 1
  %102 = icmp eq i32 %99, 1805
  %103 = select i1 %102, i32 2, i32 %101
  br label %104

104:                                              ; preds = %104, %97
  %105 = phi i32 [ 0, %97 ], [ %117, %104 ]
  %106 = phi i32 [ %13, %97 ], [ %114, %104 ]
  %107 = and i32 %106, -1048576
  %108 = add nuw nsw i32 %105, %99
  %109 = shl i32 %108, 8
  %110 = shl i32 %105, 3
  %111 = lshr i32 %98, %110
  %112 = and i32 %111, 255
  %113 = or i32 %112, %109
  %114 = or i32 %113, %107
  %115 = tail call i32 @snd_hdac_exec_verb(ptr noundef %0, i32 noundef %114, i32 noundef 0, ptr noundef null) #6
  %116 = icmp slt i32 %115, 0
  %117 = add nuw nsw i32 %105, 1
  %118 = icmp eq i32 %117, %103
  %119 = select i1 %116, i1 true, i1 %118
  br i1 %119, label %120, label %104

120:                                              ; preds = %104, %69, %64, %60, %53, %49, %46
  %121 = phi i32 [ %32, %46 ], [ %32, %49 ], [ %32, %53 ], [ %18, %60 ], [ %18, %64 ], [ %18, %69 ], [ %76, %104 ]
  %122 = phi i32 [ %48, %46 ], [ %51, %49 ], [ %57, %53 ], [ -22, %60 ], [ %67, %64 ], [ %74, %69 ], [ %115, %104 ]
  %123 = icmp eq i32 %121, 1
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %0) #6
  br label %126

126:                                              ; preds = %124, %120, %20, %3
  %127 = phi i32 [ %24, %20 ], [ 0, %3 ], [ %122, %120 ], [ %122, %124 ]
  ret i32 %127
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_exec_verb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_keep_power_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
!9 = !{i8 0, i8 2}
