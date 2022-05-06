; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvif/notify.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvif/notify.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.2 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_ntfy_put_v0 }
%struct.nvif_ioctl_v0 = type { i8, i8, [4 x i8], i8, i8, i64, i64, [0 x i8] }
%struct.nvif_ioctl_ntfy_put_v0 = type { i8, i8, [6 x i8] }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.anon.3 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_ntfy_get_v0 }
%struct.nvif_ioctl_ntfy_get_v0 = type { i8, i8, [6 x i8] }
%struct.nvif_notify_rep_v0 = type { i8, [6 x i8], i8, i64, [0 x i8] }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.anon.0 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_ntfy_del_v0 }
%struct.nvif_ioctl_ntfy_del_v0 = type { i8, i8, [6 x i8] }
%struct.anon.1 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_ntfy_new_v0, %struct.nvif_notify_req_v0 }
%struct.nvif_ioctl_ntfy_new_v0 = type { i8, i8, i8, [5 x i8], [0 x i8] }
%struct.nvif_notify_req_v0 = type { i8, i8, [5 x i8], i8, i64, [0 x i8] }

@.str = private unnamed_addr constant [38 x i8] c"drivers/gpu/drm/nouveau/nvif/notify.c\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"nvifNotify\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_notify_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.anon.2, align 8
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5, !prof !8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nvif_notify, ptr %0, i32 0, i32 3
  %7 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %6) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #6
  %11 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %2, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false) #6
  store i8 12, ptr %11, align 1
  %12 = getelementptr inbounds %struct.anon.2, ptr %2, i32 0, i32 1, i32 1
  %13 = getelementptr inbounds %struct.nvif_notify, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = trunc i32 %14 to i8
  store i8 %15, ptr %12, align 1
  %16 = getelementptr inbounds %struct.nvif_notify, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #6, !srcloc !10
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #6, !srcloc !11
  %18 = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %9
  %21 = call i32 @nvif_object_ioctl(ptr noundef %10, ptr noundef nonnull %2, i32 noundef 32, ptr noundef null) #6
  br label %22

22:                                               ; preds = %20, %9
  %23 = phi i32 [ %21, %20 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #6
  %24 = load volatile i32, ptr %6, align 4
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.nvif_notify, ptr %0, i32 0, i32 9
  %29 = call zeroext i1 @flush_work(ptr noundef %28) #6
  br label %30

30:                                               ; preds = %27, %22, %5, %1
  %31 = phi i32 [ %23, %27 ], [ %23, %22 ], [ 0, %5 ], [ 0, %1 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_notify_get(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.anon.3, align 8
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5, !prof !8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nvif_notify, ptr %0, i32 0, i32 3
  %7 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %6) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #6
  %11 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %2, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false) #6
  store i8 11, ptr %11, align 1
  %12 = getelementptr inbounds %struct.anon.3, ptr %2, i32 0, i32 1, i32 1
  %13 = getelementptr inbounds %struct.nvif_notify, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = trunc i32 %14 to i8
  store i8 %15, ptr %12, align 1
  %16 = getelementptr inbounds %struct.nvif_notify, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #6, !srcloc !10
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #6, !srcloc !14
  %18 = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %9
  %21 = call i32 @nvif_object_ioctl(ptr noundef %10, ptr noundef nonnull %2, i32 noundef 32, ptr noundef null) #6
  br label %22

22:                                               ; preds = %20, %9
  %23 = phi i32 [ %21, %20 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #6
  br label %24

24:                                               ; preds = %22, %5, %1
  %25 = phi i32 [ %23, %22 ], [ 0, %5 ], [ 0, %1 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_notify(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.anon.3, align 8
  %6 = icmp eq i32 %1, 16
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  %8 = load i8, ptr %0, align 8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.nvif_notify_rep_v0, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14, !prof !16

14:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 121, i32 noundef 9, ptr noundef null) #6
  br label %73

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.nvif_notify_rep_v0, ptr %0, i32 0, i32 3
  %17 = load i64, ptr %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = inttoptr i32 %18 to ptr
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %21, label %22, !prof !8

21:                                               ; preds = %15, %7, %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 126, i32 noundef 9, ptr noundef null) #6
  br label %73

22:                                               ; preds = %15
  %23 = load ptr, ptr %19, align 4
  %24 = getelementptr inbounds %struct.nvif_object, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nvif_notify, ptr %19, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %3
  br i1 %28, label %30, label %29, !prof !16

29:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 128, i32 noundef 9, ptr noundef null) #6
  br label %73

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.nvif_notify, ptr %19, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #6, !srcloc !10
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #6, !srcloc !17
  %33 = getelementptr inbounds %struct.nvif_notify, ptr %19, i32 0, i32 3
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  %37 = getelementptr inbounds %struct.nvif_notify, ptr %19, i32 0, i32 7
  br i1 %36, label %38, label %68

38:                                               ; preds = %30
  store ptr %2, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvif_client, ptr %25, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nvif_driver, ptr %40, i32 0, i32 8
  %42 = load i8, ptr %41, align 4, !range !18
  %43 = icmp eq i8 %42, 0
  %44 = getelementptr inbounds %struct.nvif_notify, ptr %19, i32 0, i32 6
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 %45(ptr noundef nonnull %19) #6
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %51, label %48

48:                                               ; preds = %38
  %49 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %33) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %48, %38
  br i1 %43, label %52, label %54

52:                                               ; preds = %51
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #6, !srcloc !10
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #6, !srcloc !19
  br label %67

54:                                               ; preds = %51
  %55 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #6
  %56 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false) #6
  store i8 11, ptr %56, align 1
  %57 = getelementptr inbounds %struct.anon.3, ptr %5, i32 0, i32 1, i32 1
  %58 = getelementptr inbounds %struct.nvif_notify, ptr %19, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = trunc i32 %59 to i8
  store i8 %60, ptr %57, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #6, !srcloc !10
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #6, !srcloc !14
  %62 = extractvalue { i32, i32 } %61, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = call i32 @nvif_object_ioctl(ptr noundef %55, ptr noundef nonnull %5, i32 noundef 32, ptr noundef null) #6
  br label %66

66:                                               ; preds = %64, %54
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #6
  br label %67

67:                                               ; preds = %66, %52, %48
  store ptr null, ptr %37, align 4
  br label %73

68:                                               ; preds = %30
  %69 = load ptr, ptr %37, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %69, ptr align 1 %2, i32 %3, i1 false)
  %70 = getelementptr inbounds %struct.nvif_notify, ptr %19, i32 0, i32 9
  %71 = load ptr, ptr @system_wq, align 4
  %72 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %71, ptr noundef %70) #6
  br label %73

73:                                               ; preds = %68, %67, %29, %21, %14
  %74 = phi i32 [ 0, %14 ], [ 0, %68 ], [ 0, %21 ], [ 0, %29 ], [ %46, %67 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_notify_dtor(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.anon.2, align 8
  %3 = alloca %struct.anon.0, align 8
  %4 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #6
  %5 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %3, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  store i8 10, ptr %5, align 1
  %6 = getelementptr inbounds %struct.anon.0, ptr %3, i32 0, i32 1, i32 1
  %7 = getelementptr inbounds %struct.nvif_notify, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = trunc i32 %8 to i8
  store i8 %9, ptr %6, align 1
  %10 = icmp eq ptr %4, null
  br i1 %10, label %41, label %11, !prof !8

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.nvif_notify, ptr %0, i32 0, i32 3
  %13 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %12) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #6
  %17 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %2, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false) #6
  store i8 12, ptr %17, align 1
  %18 = getelementptr inbounds %struct.anon.2, ptr %2, i32 0, i32 1, i32 1
  %19 = load i32, ptr %7, align 4
  %20 = trunc i32 %19 to i8
  store i8 %20, ptr %18, align 1
  %21 = getelementptr inbounds %struct.nvif_notify, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #6, !srcloc !10
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #6, !srcloc !11
  %23 = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = call i32 @nvif_object_ioctl(ptr noundef %16, ptr noundef nonnull %2, i32 noundef 32, ptr noundef null) #6
  br label %27

27:                                               ; preds = %25, %15
  %28 = phi i32 [ %26, %25 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #6
  %29 = load volatile i32, ptr %12, align 4
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.nvif_notify, ptr %0, i32 0, i32 9
  %34 = call zeroext i1 @flush_work(ptr noundef %33) #6
  br label %35

35:                                               ; preds = %32, %27
  %36 = icmp sgt i32 %28, -1
  br i1 %36, label %37, label %41

37:                                               ; preds = %35, %11
  %38 = call i32 @nvif_object_ioctl(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 32, ptr noundef null) #6
  store ptr null, ptr %0, align 4
  %39 = getelementptr inbounds %struct.nvif_notify, ptr %0, i32 0, i32 7
  %40 = load ptr, ptr %39, align 4
  call void @kfree(ptr noundef %40) #6
  br label %41

41:                                               ; preds = %37, %35, %1
  %42 = phi i32 [ %38, %37 ], [ %28, %35 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #6
  ret i32 %42
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_notify_ctor(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i8 noundef zeroext %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  store ptr %0, ptr %8, align 4
  %10 = icmp eq ptr %1, null
  %11 = select i1 %10, ptr @.str.1, ptr %1
  %12 = getelementptr inbounds %struct.nvif_notify, ptr %8, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nvif_notify, ptr %8, i32 0, i32 3
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nvif_notify, ptr %8, i32 0, i32 4
  store volatile i32 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nvif_notify, ptr %8, i32 0, i32 6
  store ptr %2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nvif_notify, ptr %8, i32 0, i32 7
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.nvif_notify, ptr %8, i32 0, i32 8
  store i32 %7, ptr %17, align 4
  br i1 %3, label %18, label %26

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.nvif_notify, ptr %8, i32 0, i32 9
  store i32 -32, ptr %19, align 4
  %20 = getelementptr inbounds %struct.nvif_notify, ptr %8, i32 0, i32 9, i32 1
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.nvif_notify, ptr %8, i32 0, i32 9, i32 1, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nvif_notify, ptr %8, i32 0, i32 9, i32 2
  store ptr @nvif_notify_work, ptr %22, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %13) #6
  %23 = load i32, ptr %17, align 4
  %24 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %23, i32 noundef 3264) #7
  store ptr %24, ptr %16, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %49, label %26

26:                                               ; preds = %18, %9
  %27 = add i32 %6, 48
  %28 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %27, i32 noundef 3264) #7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %49, label %30

30:                                               ; preds = %26
  store i8 0, ptr %28, align 64
  %31 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %28, i32 0, i32 1
  store i8 9, ptr %31, align 1
  %32 = getelementptr inbounds %struct.anon.1, ptr %28, i32 0, i32 1
  store i8 0, ptr %32, align 8
  %33 = getelementptr inbounds %struct.anon.1, ptr %28, i32 0, i32 1, i32 1
  store i8 %4, ptr %33, align 1
  %34 = getelementptr inbounds %struct.anon.1, ptr %28, i32 0, i32 2
  store i8 0, ptr %34, align 32
  %35 = load i32, ptr %17, align 4
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.anon.1, ptr %28, i32 0, i32 2, i32 1
  store i8 %36, ptr %37, align 1
  %38 = getelementptr inbounds %struct.anon.1, ptr %28, i32 0, i32 2, i32 3
  store i8 0, ptr %38, align 1
  %39 = ptrtoint ptr %8 to i32
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.anon.1, ptr %28, i32 0, i32 2, i32 4
  store i64 %40, ptr %41, align 8
  %42 = getelementptr inbounds %struct.anon.1, ptr %28, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 16 %42, ptr align 1 %5, i32 %6, i1 false)
  %43 = tail call i32 @nvif_object_ioctl(ptr noundef %0, ptr noundef nonnull %28, i32 noundef %27, ptr noundef null) #6
  %44 = getelementptr inbounds %struct.anon.1, ptr %28, i32 0, i32 1, i32 2
  %45 = load i8, ptr %44, align 2
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds %struct.nvif_notify, ptr %8, i32 0, i32 2
  store i32 %46, ptr %47, align 4
  tail call void @kfree(ptr noundef nonnull %28) #6
  %48 = icmp eq i32 %43, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %30, %26, %18
  %50 = phi i32 [ %43, %30 ], [ -12, %26 ], [ -12, %18 ]
  %51 = tail call i32 @nvif_notify_dtor(ptr noundef %8)
  br label %52

52:                                               ; preds = %49, %30
  %53 = phi i32 [ %50, %49 ], [ 0, %30 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvif_notify_work(ptr noundef %0) #0 {
  %2 = alloca %struct.anon.3, align 8
  %3 = getelementptr i8, ptr %0, i32 -36
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %3) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -24
  %10 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %9) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %8, %1
  %13 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #6
  %14 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %2, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false) #6
  store i8 11, ptr %14, align 1
  %15 = getelementptr inbounds %struct.anon.3, ptr %2, i32 0, i32 1, i32 1
  %16 = getelementptr i8, ptr %0, i32 -28
  %17 = load i32, ptr %16, align 4
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr %15, align 1
  %19 = getelementptr i8, ptr %0, i32 -20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #6, !srcloc !10
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #6, !srcloc !14
  %21 = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = call i32 @nvif_object_ioctl(ptr noundef %13, ptr noundef nonnull %2, i32 noundef 32, ptr noundef null) #6
  br label %25

25:                                               ; preds = %23, %12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #6
  br label %26

26:                                               ; preds = %25, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
!9 = !{i64 2148366691}
!10 = !{i64 767459, i64 2148257430, i64 2148257456, i64 2148257503, i64 2148257525, i64 2148257553, i64 2148257573}
!11 = !{i64 2148269529, i64 2148269561, i64 2148269590, i64 2148269624, i64 2148269655, i64 2148269678}
!12 = !{i64 2148366894}
!13 = !{i64 2148369524}
!14 = !{i64 2148271886, i64 2148271918, i64 2148271947, i64 2148271981, i64 2148272012, i64 2148272035}
!15 = !{i64 2148369727}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2148268845, i64 2148268871, i64 2148268900, i64 2148268934, i64 2148268965, i64 2148268988}
!18 = !{i8 0, i8 2}
!19 = !{i64 2148271202, i64 2148271228, i64 2148271257, i64 2148271291, i64 2148271322, i64 2148271345}
