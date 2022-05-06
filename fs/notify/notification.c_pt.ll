; ModuleID = '/llk/IR/fs/notify/notification.c_pt.bc'
source_filename = "../fs/notify/notification.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsnotify_get_cookie:\09\09\09\09\09"
module asm "\09.asciz \09\22fsnotify_get_cookie\22\09\09\09\09\09"
module asm "__kstrtabns_fsnotify_get_cookie:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fsnotify_group = type { ptr, %struct.refcount_struct, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i8, %struct.mutex, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %union.anon.70 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%union.anon.70 = type { %struct.inotify_group_private_data }
%struct.inotify_group_private_data = type { %struct.spinlock, %struct.idr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.fsnotify_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@fsnotify_sync_cookie = internal global %struct.atomic_t zeroinitializer, align 4
@__kstrtab_fsnotify_get_cookie = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsnotify_get_cookie = external dso_local constant [0 x i8], align 1
@__ksymtab_fsnotify_get_cookie = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsnotify_get_cookie to i32), ptr @__kstrtab_fsnotify_get_cookie, ptr @__kstrtabns_fsnotify_get_cookie }, section "___ksymtab_gpl+fsnotify_get_cookie", align 4
@.str = private unnamed_addr constant [25 x i8] c"fs/notify/notification.c\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_fsnotify_get_cookie], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsnotify_get_cookie() #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @fsnotify_sync_cookie) #3, !srcloc !9
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fsnotify_sync_cookie, ptr nonnull @fsnotify_sync_cookie, i32 1, ptr nonnull elementtype(i32) @fsnotify_sync_cookie) #3, !srcloc !10
  %2 = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !11
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsnotify_destroy_event(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = load volatile ptr, ptr %1, align 4
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %12) #3
  %13 = load volatile ptr, ptr %1, align 4
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %16, label %15, !prof !12

15:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef null) #3
  br label %16

16:                                               ; preds = %15, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !13
  %17 = load i16, ptr %12, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  br label %19

19:                                               ; preds = %16, %8
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.fsnotify_ops, ptr %20, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %0, ptr noundef nonnull %1) #3
  br label %23

23:                                               ; preds = %19, %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsnotify_insert_event(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %6) #3
  %7 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 8
  %8 = load i8, ptr %7, align 4, !range !17
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !13
  %11 = load i16, ptr %6, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  br label %56

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17, %13
  %24 = load volatile ptr, ptr %15, align 4
  %25 = icmp eq ptr %24, %15
  br i1 %25, label %40, label %26

26:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !13
  %27 = load i16, ptr %6, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  br label %56

29:                                               ; preds = %17
  %30 = load volatile ptr, ptr %5, align 4
  %31 = icmp ne ptr %30, %5
  %32 = icmp ne ptr %2, null
  %33 = and i1 %32, %31
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = tail call i32 %2(ptr noundef %0, ptr noundef %1) #3
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !13
  %38 = load i16, ptr %6, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  br label %56

40:                                               ; preds = %34, %29, %23
  %41 = phi ptr [ %1, %34 ], [ %1, %29 ], [ %15, %23 ]
  %42 = phi i32 [ 0, %34 ], [ 0, %29 ], [ 2, %23 ]
  %43 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 4
  %46 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 3, i32 1
  %47 = load ptr, ptr %46, align 4
  store ptr %41, ptr %46, align 4
  store ptr %5, ptr %41, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %47, ptr %48, align 4
  store volatile ptr %41, ptr %47, align 4
  %49 = icmp eq ptr %3, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %40
  tail call void %3(ptr noundef %0, ptr noundef %41) #3
  br label %51

51:                                               ; preds = %50, %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !13
  %52 = load i16, ptr %6, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  %54 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %54, i32 noundef 3, i32 noundef 1, ptr noundef null) #3
  %55 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 12
  tail call void @kill_fasync(ptr noundef %55, i32 noundef 29, i32 noundef 1) #3
  br label %56

56:                                               ; preds = %51, %37, %26, %10
  %57 = phi i32 [ 2, %10 ], [ %42, %51 ], [ 2, %26 ], [ %35, %37 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsnotify_remove_queued_event(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %5 = load volatile i32, ptr %4, align 4
  store volatile i32 %5, ptr %3, align 4
  %6 = lshr i32 %5, 16
  %7 = and i32 %5, 65535
  %8 = icmp eq i32 %7, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %8, label %9, label %10, !prof !18

9:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/notification.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 135, 0\0A.popsection", ""() #3, !srcloc !19
  unreachable

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %1, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store volatile ptr %1, ptr %1, align 4
  store ptr %1, ptr %11, align 4
  %15 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -1
  store i32 %17, ptr %15, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fsnotify_peek_first_event(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %5 = load volatile i32, ptr %4, align 4
  store volatile i32 %5, ptr %3, align 4
  %6 = lshr i32 %5, 16
  %7 = and i32 %5, 65535
  %8 = icmp eq i32 %7, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %8, label %9, label %10, !prof !18

9:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/notification.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 150, 0\0A.popsection", ""() #3, !srcloc !20
  unreachable

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  %11 = load volatile i32, ptr %4, align 4
  store volatile i32 %11, ptr %2, align 4
  %12 = lshr i32 %11, 16
  %13 = and i32 %11, 65535
  %14 = icmp eq i32 %13, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br i1 %14, label %15, label %16, !prof !18

15:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/fsnotify_backend.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 588, 0\0A.popsection", ""() #3, !srcloc !21
  unreachable

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 3
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  %20 = select i1 %19, ptr null, ptr %18
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fsnotify_remove_first_event(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %6 = load volatile i32, ptr %5, align 4
  store volatile i32 %6, ptr %4, align 4
  %7 = lshr i32 %6, 16
  %8 = and i32 %6, 65535
  %9 = icmp eq i32 %8, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br i1 %9, label %10, label %11, !prof !18

10:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/notification.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 150, 0\0A.popsection", ""() #3, !srcloc !20
  unreachable

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %12 = load volatile i32, ptr %5, align 4
  store volatile i32 %12, ptr %3, align 4
  %13 = lshr i32 %12, 16
  %14 = and i32 %12, 65535
  %15 = icmp eq i32 %14, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %15, label %16, label %17, !prof !18

16:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/fsnotify_backend.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 588, 0\0A.popsection", ""() #3, !srcloc !21
  unreachable

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 3
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  %21 = icmp eq ptr %19, null
  %22 = or i1 %20, %21
  br i1 %22, label %37, label %23

23:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  %24 = load volatile i32, ptr %5, align 4
  store volatile i32 %24, ptr %2, align 4
  %25 = lshr i32 %24, 16
  %26 = and i32 %24, 65535
  %27 = icmp eq i32 %26, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br i1 %27, label %28, label %29, !prof !18

28:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/notification.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 135, 0\0A.popsection", ""() #3, !srcloc !19
  unreachable

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %19, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %31, ptr %33, align 4
  store volatile ptr %32, ptr %31, align 4
  store volatile ptr %19, ptr %19, align 4
  store ptr %19, ptr %30, align 4
  %34 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -1
  store i32 %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %29, %17
  %38 = phi ptr [ %19, %29 ], [ null, %17 ]
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsnotify_flush_notify(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %6) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  %7 = load volatile i32, ptr %6, align 4
  store volatile i32 %7, ptr %5, align 4
  %8 = lshr i32 %7, 16
  %9 = and i32 %7, 65535
  %10 = icmp eq i32 %9, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br i1 %10, label %15, label %11, !prof !18

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 3
  %13 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 5
  %14 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 13
  br label %16

15:                                               ; preds = %71, %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/fsnotify_backend.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 588, 0\0A.popsection", ""() #3, !srcloc !21
  unreachable

16:                                               ; preds = %71, %11
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, %12
  br i1 %18, label %76, label %19

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %20 = load volatile i32, ptr %6, align 4
  store volatile i32 %20, ptr %4, align 4
  %21 = lshr i32 %20, 16
  %22 = and i32 %20, 65535
  %23 = icmp eq i32 %22, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br i1 %23, label %24, label %25, !prof !18

24:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/notification.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 150, 0\0A.popsection", ""() #3, !srcloc !20
  unreachable

25:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %26 = load volatile i32, ptr %6, align 4
  store volatile i32 %26, ptr %3, align 4
  %27 = lshr i32 %26, 16
  %28 = and i32 %26, 65535
  %29 = icmp eq i32 %28, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %29, label %30, label %31, !prof !18

30:                                               ; preds = %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/fsnotify_backend.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 588, 0\0A.popsection", ""() #3, !srcloc !21
  unreachable

31:                                               ; preds = %25
  %32 = load volatile ptr, ptr %12, align 4
  %33 = icmp eq ptr %32, %12
  %34 = icmp eq ptr %32, null
  %35 = or i1 %33, %34
  br i1 %35, label %49, label %36

36:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  %37 = load volatile i32, ptr %6, align 4
  store volatile i32 %37, ptr %2, align 4
  %38 = lshr i32 %37, 16
  %39 = and i32 %37, 65535
  %40 = icmp eq i32 %39, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br i1 %40, label %41, label %42, !prof !18

41:                                               ; preds = %36
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/notification.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 135, 0\0A.popsection", ""() #3, !srcloc !19
  unreachable

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %32, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %44, ptr %46, align 4
  store volatile ptr %45, ptr %44, align 4
  store volatile ptr %32, ptr %32, align 4
  store ptr %32, ptr %43, align 4
  %47 = load i32, ptr %13, align 4
  %48 = add i32 %47, -1
  store i32 %48, ptr %13, align 4
  br label %49

49:                                               ; preds = %42, %31
  %50 = phi ptr [ %32, %42 ], [ null, %31 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !13
  %51 = load i16, ptr %6, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  %53 = icmp eq ptr %50, null
  br i1 %53, label %71, label %54

54:                                               ; preds = %49
  %55 = load ptr, ptr %14, align 4
  %56 = icmp eq ptr %55, %50
  br i1 %56, label %71, label %57

57:                                               ; preds = %54
  %58 = load volatile ptr, ptr %50, align 4
  %59 = icmp eq ptr %58, %50
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  tail call void @_raw_spin_lock(ptr noundef %6) #3
  %61 = load volatile ptr, ptr %50, align 4
  %62 = icmp eq ptr %61, %50
  br i1 %62, label %64, label %63, !prof !12

63:                                               ; preds = %60
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef null) #3
  br label %64

64:                                               ; preds = %63, %60
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !13
  %65 = load i16, ptr %6, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  br label %67

67:                                               ; preds = %64, %57
  %68 = load ptr, ptr %0, align 4
  %69 = getelementptr inbounds %struct.fsnotify_ops, ptr %68, i32 0, i32 4
  %70 = load ptr, ptr %69, align 4
  tail call void %70(ptr noundef %0, ptr noundef nonnull %50) #3
  br label %71

71:                                               ; preds = %67, %54, %49
  tail call void @_raw_spin_lock(ptr noundef %6) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  %72 = load volatile i32, ptr %6, align 4
  store volatile i32 %72, ptr %5, align 4
  %73 = lshr i32 %72, 16
  %74 = and i32 %72, 65535
  %75 = icmp eq i32 %74, %73
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br i1 %75, label %15, label %16, !prof !18

76:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !13
  %77 = load i16, ptr %6, align 4
  %78 = add i16 %77, 1
  store i16 %78, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }

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
!8 = !{i64 2148430518}
!9 = !{i64 831286, i64 2148321257, i64 2148321283, i64 2148321330, i64 2148321352, i64 2148321380, i64 2148321400}
!10 = !{i64 2148333356, i64 2148333388, i64 2148333417, i64 2148333451, i64 2148333482, i64 2148333505}
!11 = !{i64 2148430721}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148999890}
!14 = !{i64 2148995714}
!15 = !{i64 2148995789, i64 2148995816, i64 2148995863, i64 2148995885, i64 2148995913, i64 2148995933}
!16 = !{i64 2149022893}
!17 = !{i8 0, i8 2}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2152521603, i64 2152522092, i64 2152521640, i64 2152521696, i64 2152521730, i64 2152521754, i64 2152521795, i64 2152521816, i64 2152521844, i64 2152521878}
!20 = !{i64 2152522971, i64 2152523460, i64 2152523008, i64 2152523064, i64 2152523098, i64 2152523122, i64 2152523163, i64 2152523184, i64 2152523212, i64 2152523246}
!21 = !{i64 2151732719, i64 2151733216, i64 2151732756, i64 2151732812, i64 2151732846, i64 2151732870, i64 2151732911, i64 2151732932, i64 2151732960, i64 2151732994}
