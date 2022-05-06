; ModuleID = '/llk/IR/drivers/media/v4l2-core/v4l2-device.c_pt.bc'
source_filename = "../drivers/media/v4l2-core/v4l2-device.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_device_put:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_device_put\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_device_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_device_set_name:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_device_set_name\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_device_set_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_device_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_device_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_device_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_device_register_subdev:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_device_register_subdev\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_device_register_subdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___v4l2_device_register_subdev_nodes:\09\09\09\09\09"
module asm "\09.asciz \09\22__v4l2_device_register_subdev_nodes\22\09\09\09\09\09"
module asm "__kstrtabns___v4l2_device_register_subdev_nodes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_device_unregister_subdev:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_device_unregister_subdev\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_device_unregister_subdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.74 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, i32 }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.71], %struct.media_entity_enum, i32 }
%struct.anon.71 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }

@.str = private unnamed_addr constant [38 x i8] c"drivers/media/v4l2-core/v4l2-device.c\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@__kstrtab_v4l2_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_device_register to i32), ptr @__kstrtab_v4l2_device_register, ptr @__kstrtabns_v4l2_device_register }, section "___ksymtab_gpl+v4l2_device_register", align 4
@__kstrtab_v4l2_device_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_device_put = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_device_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_device_put to i32), ptr @__kstrtab_v4l2_device_put, ptr @__kstrtabns_v4l2_device_put }, section "___ksymtab_gpl+v4l2_device_put", align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@__kstrtab_v4l2_device_set_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_device_set_name = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_device_set_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_device_set_name to i32), ptr @__kstrtab_v4l2_device_set_name, ptr @__kstrtabns_v4l2_device_set_name }, section "___ksymtab_gpl+v4l2_device_set_name", align 4
@__kstrtab_v4l2_device_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_device_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_device_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_device_disconnect to i32), ptr @__kstrtab_v4l2_device_disconnect, ptr @__kstrtabns_v4l2_device_disconnect }, section "___ksymtab_gpl+v4l2_device_disconnect", align 4
@__kstrtab_v4l2_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_device_unregister to i32), ptr @__kstrtab_v4l2_device_unregister, ptr @__kstrtabns_v4l2_device_unregister }, section "___ksymtab_gpl+v4l2_device_unregister", align 4
@__kstrtab_v4l2_device_register_subdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_device_register_subdev = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_device_register_subdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_device_register_subdev to i32), ptr @__kstrtab_v4l2_device_register_subdev, ptr @__kstrtabns_v4l2_device_register_subdev }, section "___ksymtab_gpl+v4l2_device_register_subdev", align 4
@v4l2_subdev_fops = external dso_local constant %struct.v4l2_file_operations, align 4
@__kstrtab___v4l2_device_register_subdev_nodes = external dso_local constant [0 x i8], align 1
@__kstrtabns___v4l2_device_register_subdev_nodes = external dso_local constant [0 x i8], align 1
@__ksymtab___v4l2_device_register_subdev_nodes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__v4l2_device_register_subdev_nodes to i32), ptr @__kstrtab___v4l2_device_register_subdev_nodes, ptr @__kstrtabns___v4l2_device_register_subdev_nodes }, section "___ksymtab_gpl+__v4l2_device_register_subdev_nodes", align 4
@__kstrtab_v4l2_device_unregister_subdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_device_unregister_subdev = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_device_unregister_subdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_device_unregister_subdev to i32), ptr @__kstrtab_v4l2_device_unregister_subdev, ptr @__kstrtabns_v4l2_device_unregister_subdev }, section "___ksymtab_gpl+v4l2_device_unregister_subdev", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab___v4l2_device_register_subdev_nodes, ptr @__ksymtab_v4l2_device_disconnect, ptr @__ksymtab_v4l2_device_put, ptr @__ksymtab_v4l2_device_register, ptr @__ksymtab_v4l2_device_register_subdev, ptr @__ksymtab_v4l2_device_set_name, ptr @__ksymtab_v4l2_device_unregister, ptr @__ksymtab_v4l2_device_unregister_subdev], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_device_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 2
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 2, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 3
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 7
  tail call void @v4l2_prio_init(ptr noundef %8) #5
  %9 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 8
  store volatile i32 1, ptr %9, align 4
  %10 = tail call ptr @get_device(ptr noundef %0) #5
  store ptr %0, ptr %1, align 4
  %11 = icmp eq ptr %0, null
  %12 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 0
  br i1 %11, label %15, label %17

15:                                               ; preds = %4
  br i1 %14, label %16, label %35, !prof !8

16:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 30, i32 noundef 9, ptr noundef null) #5
  br label %35

17:                                               ; preds = %4
  br i1 %14, label %18, label %30

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load ptr, ptr %0, align 4
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi ptr [ %26, %25 ], [ %23, %18 ]
  %29 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %12, i32 noundef 36, ptr noundef nonnull @.str.1, ptr noundef %21, ptr noundef %28)
  br label %30

30:                                               ; preds = %27, %17
  %31 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store ptr %1, ptr %31, align 8
  br label %35

35:                                               ; preds = %34, %30, %16, %15, %2
  %36 = phi i32 [ -22, %2 ], [ 0, %34 ], [ 0, %30 ], [ -22, %16 ], [ 0, %15 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_prio_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_device_put(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.v4l2_device, ptr %0, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #5, !srcloc !10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #5, !srcloc !11
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %14, label %8, !prof !12

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #5
  br label %14

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %10 = getelementptr %struct.v4l2_device, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void %11(ptr noundef %0) #5
  br label %14

14:                                               ; preds = %13, %9, %8, %6
  %15 = phi i32 [ 1, %9 ], [ 1, %13 ], [ 0, %6 ], [ 0, %8 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_device_set_name(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #5, !srcloc !10
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #5, !srcloc !15
  %5 = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !16
  %6 = add i32 %5, -1
  %7 = tail call i32 @strlen(ptr noundef %1)
  %8 = add i32 %7, -1
  %9 = getelementptr i8, ptr %1, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = add i8 %10, -48
  %12 = icmp ult i8 %11, 10
  %13 = getelementptr inbounds %struct.v4l2_device, ptr %0, i32 0, i32 4
  %14 = select i1 %12, ptr @.str.2, ptr @.str.3
  %15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %13, i32 noundef 36, ptr noundef nonnull %14, ptr noundef %1, i32 noundef %6)
  ret i32 %6
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l2_device_disconnect(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  store ptr null, ptr %5, align 8
  %9 = load ptr, ptr %0, align 4
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi ptr [ %9, %8 ], [ %2, %4 ]
  tail call void @put_device(ptr noundef %11) #5
  store ptr null, ptr %0, align 4
  br label %12

12:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l2_device_unregister(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.v4l2_device, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  store ptr null, ptr %11, align 8
  %15 = load ptr, ptr %0, align 4
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %15, %14 ], [ %8, %10 ]
  tail call void @put_device(ptr noundef %17) #5
  store ptr null, ptr %0, align 4
  br label %18

18:                                               ; preds = %16, %7
  %19 = getelementptr inbounds %struct.v4l2_device, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %37, label %22

22:                                               ; preds = %35, %18
  %23 = phi ptr [ %25, %35 ], [ %20, %18 ]
  %24 = getelementptr i8, ptr %23, i32 -80
  %25 = load ptr, ptr %23, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %24)
  %26 = getelementptr i8, ptr %23, i32 16
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  tail call void @v4l2_i2c_subdev_unregister(ptr noundef %24) #5
  br label %35

31:                                               ; preds = %22
  %32 = and i32 %27, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @v4l2_spi_subdev_unregister(ptr noundef %24) #5
  br label %35

35:                                               ; preds = %34, %31, %30
  %36 = icmp eq ptr %25, %19
  br i1 %36, label %37, label %22

37:                                               ; preds = %35, %18
  store i8 0, ptr %4, align 4
  br label %38

38:                                               ; preds = %37, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l2_device_unregister_subdev(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %51, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %51, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %8) #5
  %9 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  %14 = load i16, ptr %8, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !20
  %16 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.v4l2_subdev_internal_ops, ptr %17, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void %21(ptr noundef nonnull %0) #5
  br label %24

24:                                               ; preds = %23, %19, %7
  store ptr null, ptr %4, align 4
  %25 = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @media_device_unregister_entity(ptr noundef nonnull %0) #5
  br label %29

29:                                               ; preds = %28, %24
  %30 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 13
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @video_unregister_device(ptr noundef nonnull %31) #5
  br label %51

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 3
  %36 = load i8, ptr %35, align 4, !range !21
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi ptr [ %40, %38 ], [ null, %34 ]
  %43 = load ptr, ptr %16, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.v4l2_subdev_internal_ops, ptr %43, i32 0, i32 4
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void %47(ptr noundef nonnull %0) #5
  br label %50

50:                                               ; preds = %49, %45, %41
  store ptr null, ptr %30, align 4
  tail call void @module_put(ptr noundef %42) #5
  br label %51

51:                                               ; preds = %50, %33, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_spi_subdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_device_register_subdev(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %80

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %80

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 9
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %80, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 6
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17, %14
  %22 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 3
  store i8 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  br label %33

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.device_driver, ptr %19, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %27, %29
  %31 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 3
  %32 = zext i1 %30 to i8
  store i8 %32, ptr %31, align 4
  br i1 %30, label %37, label %33

33:                                               ; preds = %25, %21
  %34 = phi ptr [ %24, %21 ], [ %27, %25 ]
  %35 = phi ptr [ %22, %21 ], [ %31, %25 ]
  %36 = tail call zeroext i1 @try_module_get(ptr noundef %34) #5
  br i1 %36, label %37, label %80

37:                                               ; preds = %33, %25
  %38 = phi ptr [ %35, %33 ], [ %31, %25 ]
  store ptr %0, ptr %7, align 4
  %39 = getelementptr inbounds %struct.v4l2_device, ptr %0, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @v4l2_ctrl_add_handler(ptr noundef %40, ptr noundef %42, ptr noundef null, i1 noundef zeroext true) #5
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.v4l2_device, ptr %0, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = tail call i32 @media_device_register_entity(ptr noundef nonnull %47, ptr noundef nonnull %1) #5
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %72, label %52

52:                                               ; preds = %49, %45
  %53 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 7
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %54, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = tail call i32 %57(ptr noundef nonnull %1) #5
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59, %56, %52
  %63 = getelementptr inbounds %struct.v4l2_device, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %63) #5
  %64 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 1
  %65 = getelementptr inbounds %struct.v4l2_device, ptr %0, i32 0, i32 2
  %66 = getelementptr inbounds %struct.v4l2_device, ptr %0, i32 0, i32 2, i32 1
  %67 = load ptr, ptr %66, align 4
  store ptr %64, ptr %66, align 4
  store ptr %65, ptr %64, align 4
  %68 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 1, i32 1
  store ptr %67, ptr %68, align 4
  store volatile ptr %64, ptr %67, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  %69 = load i16, ptr %63, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %63, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !20
  br label %80

71:                                               ; preds = %59
  tail call void @media_device_unregister_entity(ptr noundef nonnull %1) #5
  br label %72

72:                                               ; preds = %71, %49, %37
  %73 = phi i32 [ %43, %37 ], [ %50, %49 ], [ %60, %71 ]
  %74 = load i8, ptr %38, align 4, !range !21
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  tail call void @module_put(ptr noundef %78) #5
  br label %79

79:                                               ; preds = %76, %72
  store ptr null, ptr %7, align 4
  br label %80

80:                                               ; preds = %79, %62, %33, %10, %6, %2
  %81 = phi i32 [ %73, %79 ], [ 0, %62 ], [ -22, %10 ], [ -22, %6 ], [ -22, %2 ], [ -19, %33 ]
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_add_handler(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_device_register_entity(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister_entity(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__v4l2_device_register_subdev_nodes(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.v4l2_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %72, label %6

6:                                                ; preds = %57, %2
  %7 = phi ptr [ %58, %57 ], [ %4, %2 ]
  %8 = getelementptr i8, ptr %7, i32 -80
  %9 = getelementptr i8, ptr %7, i32 16
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %57, label %13

13:                                               ; preds = %6
  %14 = getelementptr i8, ptr %7, i32 80
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %57

17:                                               ; preds = %13
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 856) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %60, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.video_device, ptr %19, i32 0, i32 5, i32 8
  store ptr %8, ptr %22, align 8
  %23 = getelementptr inbounds %struct.video_device, ptr %19, i32 0, i32 12
  %24 = getelementptr i8, ptr %7, i32 36
  %25 = tail call i32 @strscpy(ptr noundef %23, ptr noundef %24, i32 noundef 32) #5
  %26 = getelementptr i8, ptr %7, i32 84
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.video_device, ptr %19, i32 0, i32 8
  store ptr %27, ptr %28, align 8
  %29 = getelementptr inbounds %struct.video_device, ptr %19, i32 0, i32 7
  store ptr %0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.video_device, ptr %19, i32 0, i32 3
  store ptr @v4l2_subdev_fops, ptr %30, align 4
  %31 = getelementptr inbounds %struct.video_device, ptr %19, i32 0, i32 23
  store ptr @v4l2_device_release_subdev_node, ptr %31, align 8
  %32 = getelementptr i8, ptr %7, i32 32
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.video_device, ptr %19, i32 0, i32 9
  store ptr %33, ptr %34, align 4
  br i1 %1, label %35, label %37

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.video_device, ptr %19, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 3, ptr noundef %36) #5
  br label %37

37:                                               ; preds = %35, %21
  store ptr %19, ptr %14, align 4
  %38 = getelementptr i8, ptr %7, i32 8
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @__video_register_device(ptr noundef nonnull %19, i32 noundef 3, i32 noundef -1, i32 noundef 1, ptr noundef %39) #5
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store ptr null, ptr %14, align 4
  tail call void @kfree(ptr noundef nonnull %19) #5
  br label %60

43:                                               ; preds = %37
  %44 = getelementptr i8, ptr %7, i32 -8
  store i32 81, ptr %44, align 4
  %45 = getelementptr inbounds %struct.video_device, ptr %19, i32 0, i32 15
  %46 = load i32, ptr %45, align 8
  %47 = getelementptr i8, ptr %7, i32 -4
  store i32 %46, ptr %47, align 4
  %48 = load ptr, ptr %29, align 4
  %49 = getelementptr inbounds %struct.v4l2_device, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.video_device, ptr %19, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8
  %55 = tail call ptr @media_create_intf_link(ptr noundef %8, ptr noundef %54, i32 noundef 3) #5
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52, %43, %13, %6
  %58 = load ptr, ptr %7, align 4
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %72, label %6

60:                                               ; preds = %52, %42, %17
  %61 = phi i32 [ %40, %42 ], [ -12, %17 ], [ -12, %52 ]
  %62 = load ptr, ptr %3, align 4
  %63 = icmp eq ptr %62, %3
  br i1 %63, label %72, label %64

64:                                               ; preds = %69, %60
  %65 = phi ptr [ %70, %69 ], [ %62, %60 ]
  %66 = getelementptr i8, ptr %65, i32 80
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  tail call void @video_unregister_device(ptr noundef nonnull %67) #5
  %70 = load ptr, ptr %65, align 4
  %71 = icmp eq ptr %70, %3
  br i1 %71, label %72, label %64

72:                                               ; preds = %69, %64, %60, %57, %2
  %73 = phi i32 [ %61, %60 ], [ 0, %2 ], [ %61, %69 ], [ %61, %64 ], [ 0, %57 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l2_device_release_subdev_node(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 5, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 3
  %5 = load i8, ptr %4, align 4, !range !21
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.v4l2_subdev_internal_ops, ptr %13, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void %17(ptr noundef %3) #5
  br label %20

20:                                               ; preds = %19, %15, %10
  %21 = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 13
  store ptr null, ptr %21, align 4
  tail call void @module_put(ptr noundef %11) #5
  tail call void @kfree(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_create_intf_link(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2148154428}
!10 = !{i64 551362, i64 2148041333, i64 2148041359, i64 2148041406, i64 2148041428, i64 2148041456, i64 2148041476}
!11 = !{i64 2148056563, i64 2148056595, i64 2148056624, i64 2148056658, i64 2148056689, i64 2148056712}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149003491}
!14 = !{i64 2148150594}
!15 = !{i64 2148053432, i64 2148053464, i64 2148053493, i64 2148053527, i64 2148053558, i64 2148053581}
!16 = !{i64 2148150797}
!17 = !{i64 2148935503}
!18 = !{i64 2148931327}
!19 = !{i64 2148931402, i64 2148931429, i64 2148931476, i64 2148931498, i64 2148931526, i64 2148931546}
!20 = !{i64 2148958506}
!21 = !{i8 0, i8 2}
