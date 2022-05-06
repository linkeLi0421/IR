; ModuleID = '/llk/IR/sound/core/vmaster.c_pt.bc'
source_filename = "../sound/core/vmaster.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__snd_ctl_add_follower:\09\09\09\09\09"
module asm "\09.asciz \09\22_snd_ctl_add_follower\22\09\09\09\09\09"
module asm "__kstrtabns__snd_ctl_add_follower:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_make_virtual_master:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_make_virtual_master\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_make_virtual_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_add_vmaster_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_add_vmaster_hook\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_add_vmaster_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_sync_vmaster:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_sync_vmaster\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_sync_vmaster:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ctl_apply_vmaster_followers:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ctl_apply_vmaster_followers\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ctl_apply_vmaster_followers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.7, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.list_head = type { ptr, ptr }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.7 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.link_follower = type { %struct.list_head, ptr, %struct.link_ctl_info, [2 x i32], i32, ptr, %struct.snd_kcontrol }
%struct.link_ctl_info = type { i32, i32, i32, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.2, [128 x i8] }
%union.anon.2 = type { %union.anon.4 }
%union.anon.4 = type { [64 x i64] }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.15, i32 }
%union.anon.15 = type { ptr }
%struct.link_master = type { %struct.list_head, %struct.link_ctl_info, i32, [4 x i32], ptr, ptr }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon, [64 x i8] }
%union.anon = type { %struct.anon.1, [40 x i8] }
%struct.anon.1 = type { i32, i32, [64 x i8], i64, i32 }

@__kstrtab__snd_ctl_add_follower = external dso_local constant [0 x i8], align 1
@__kstrtabns__snd_ctl_add_follower = external dso_local constant [0 x i8], align 1
@__ksymtab__snd_ctl_add_follower = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_snd_ctl_add_follower to i32), ptr @__kstrtab__snd_ctl_add_follower, ptr @__kstrtabns__snd_ctl_add_follower }, section "___ksymtab+_snd_ctl_add_follower", align 4
@__kstrtab_snd_ctl_make_virtual_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_make_virtual_master = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_make_virtual_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_make_virtual_master to i32), ptr @__kstrtab_snd_ctl_make_virtual_master, ptr @__kstrtabns_snd_ctl_make_virtual_master }, section "___ksymtab+snd_ctl_make_virtual_master", align 4
@__kstrtab_snd_ctl_add_vmaster_hook = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_add_vmaster_hook = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_add_vmaster_hook = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_add_vmaster_hook to i32), ptr @__kstrtab_snd_ctl_add_vmaster_hook, ptr @__kstrtabns_snd_ctl_add_vmaster_hook }, section "___ksymtab_gpl+snd_ctl_add_vmaster_hook", align 4
@__kstrtab_snd_ctl_sync_vmaster = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_sync_vmaster = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_sync_vmaster = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_sync_vmaster to i32), ptr @__kstrtab_snd_ctl_sync_vmaster, ptr @__kstrtabns_snd_ctl_sync_vmaster }, section "___ksymtab_gpl+snd_ctl_sync_vmaster", align 4
@__kstrtab_snd_ctl_apply_vmaster_followers = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ctl_apply_vmaster_followers = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ctl_apply_vmaster_followers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ctl_apply_vmaster_followers to i32), ptr @__kstrtab_snd_ctl_apply_vmaster_followers, ptr @__kstrtabns_snd_ctl_apply_vmaster_followers }, section "___ksymtab_gpl+snd_ctl_apply_vmaster_followers", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [43 x i8] c"\013ALSA: vmaster: invalid follower element\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab__snd_ctl_add_follower, ptr @__ksymtab_snd_ctl_add_vmaster_hook, ptr @__ksymtab_snd_ctl_apply_vmaster_followers, ptr @__ksymtab_snd_ctl_make_virtual_master, ptr @__ksymtab_snd_ctl_sync_vmaster], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_snd_ctl_add_follower(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 8) #10
  %9 = extractvalue { i32, i1 } %8, 1
  %10 = extractvalue { i32, i1 } %8, 0
  %11 = tail call i32 @llvm.uadd.sat.i32(i32 %10, i32 148) #10
  %12 = select i1 %9, i32 -1, i32 %11
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %39, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.link_follower, ptr %13, i32 0, i32 5
  store ptr %1, ptr %16, align 8
  %17 = getelementptr inbounds %struct.link_follower, ptr %13, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(104) %17, ptr noundef align 4 dereferenceable(104) %1, i32 104, i1 false)
  %18 = getelementptr inbounds %struct.link_follower, ptr %13, i32 1
  %19 = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 10
  %20 = load i32, ptr %6, align 4
  %21 = shl i32 %20, 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %18, ptr align 4 %19, i32 %21, i1 false)
  %22 = getelementptr inbounds %struct.link_follower, ptr %13, i32 0, i32 1
  store ptr %5, ptr %22, align 8
  %23 = getelementptr inbounds %struct.link_follower, ptr %13, i32 0, i32 4
  store i32 %2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 3
  store ptr @follower_info, ptr %24, align 4
  %25 = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 4
  store ptr @follower_get, ptr %25, align 4
  %26 = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 5
  store ptr @follower_put, ptr %26, align 4
  %27 = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 1, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 268435456
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 6
  store ptr @follower_tlv_cmd, ptr %32, align 4
  br label %33

33:                                               ; preds = %31, %15
  %34 = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 8
  store ptr %13, ptr %34, align 4
  %35 = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 9
  store ptr @follower_free, ptr %35, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  store ptr %13, ptr %36, align 4
  store ptr %5, ptr %13, align 64
  %38 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  store volatile ptr %13, ptr %37, align 4
  br label %39

39:                                               ; preds = %33, %3
  %40 = phi i32 [ 0, %33 ], [ -12, %3 ]
  ret i32 %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @follower_info(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.link_follower, ptr %4, i32 0, i32 6
  %6 = getelementptr inbounds %struct.link_follower, ptr %4, i32 0, i32 6, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %5, ptr noundef %1) #10
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @follower_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @follower_init(ptr noundef %4) #10
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.link_follower, ptr %4, i32 0, i32 2, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i32 [ 0, %11 ], [ %18, %13 ]
  %15 = getelementptr %struct.link_follower, ptr %4, i32 0, i32 3, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr [128 x i32], ptr %12, i32 0, i32 %14
  store i32 %16, ptr %17, align 4
  %18 = add nuw nsw i32 %14, 1
  %19 = load i32, ptr %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %13, label %21

21:                                               ; preds = %13, %7, %2
  %22 = phi i32 [ %5, %2 ], [ 0, %7 ], [ 0, %13 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @follower_put(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @follower_init(ptr noundef %4)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %35, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.link_follower, ptr %4, i32 0, i32 2, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  br label %13

13:                                               ; preds = %24, %11
  %14 = phi i32 [ %9, %11 ], [ %25, %24 ]
  %15 = phi i32 [ 0, %11 ], [ %26, %24 ]
  %16 = phi i32 [ 0, %11 ], [ %27, %24 ]
  %17 = getelementptr %struct.link_follower, ptr %4, i32 0, i32 3, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr [128 x i32], ptr %12, i32 0, i32 %16
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %24, label %22

22:                                               ; preds = %13
  store i32 %20, ptr %17, align 4
  %23 = load i32, ptr %8, align 4
  br label %24

24:                                               ; preds = %22, %13
  %25 = phi i32 [ %23, %22 ], [ %14, %13 ]
  %26 = phi i32 [ 1, %22 ], [ %15, %13 ]
  %27 = add nuw nsw i32 %16, 1
  %28 = icmp slt i32 %27, %25
  br i1 %28, label %13, label %29

29:                                               ; preds = %24
  %30 = icmp eq i32 %26, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %29
  %32 = tail call fastcc i32 @follower_put_val(ptr noundef %4, ptr noundef %1)
  %33 = icmp slt i32 %32, 0
  %34 = select i1 %33, i32 %32, i32 1
  br label %35

35:                                               ; preds = %31, %29, %7, %2
  %36 = phi i32 [ %5, %2 ], [ 0, %29 ], [ %34, %31 ], [ 0, %7 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @follower_tlv_cmd(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.link_follower, ptr %6, i32 0, i32 6
  %8 = getelementptr inbounds %struct.link_follower, ptr %6, i32 0, i32 6, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %7, i32 noundef %1, i32 noundef %2, ptr noundef %3) #10
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @follower_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.link_follower, ptr %3, i32 0, i32 6, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.link_follower, ptr %3, i32 0, i32 6
  tail call void %5(ptr noundef %8) #10
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct.link_follower, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  br label %18

18:                                               ; preds = %13, %9
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @snd_ctl_make_virtual_master(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.snd_kcontrol_new, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #10
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(44) %4, i8 0, i64 44, i1 false)
  store i32 2, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 3
  store ptr %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 7
  store ptr @master_info, ptr %6, align 4
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 52) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %2
  store volatile ptr %8, ptr %8, align 8
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %8, ptr %11, align 4
  %12 = call ptr @snd_ctl_new1(ptr noundef nonnull %3, ptr noundef nonnull %8) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  call void @kfree(ptr noundef nonnull %8) #10
  br label %29

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.snd_kcontrol, ptr %12, i32 0, i32 3
  store ptr @master_info, ptr %16, align 4
  %17 = getelementptr inbounds %struct.snd_kcontrol, ptr %12, i32 0, i32 4
  store ptr @master_get, ptr %17, align 4
  %18 = getelementptr inbounds %struct.snd_kcontrol, ptr %12, i32 0, i32 5
  store ptr @master_put, ptr %18, align 4
  %19 = getelementptr inbounds %struct.snd_kcontrol, ptr %12, i32 0, i32 9
  store ptr @master_free, ptr %19, align 4
  %20 = icmp eq ptr %1, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %15
  %22 = load i32, ptr %1, align 4
  switch i32 %22, label %29 [
    i32 5, label %23
    i32 4, label %23
    i32 1, label %23
  ]

23:                                               ; preds = %21, %21, %21
  %24 = getelementptr inbounds %struct.snd_kcontrol, ptr %12, i32 1, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, 16
  store i32 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.link_master, ptr %8, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %27, ptr noundef nonnull align 4 dereferenceable(16) %1, i32 16, i1 false)
  %28 = getelementptr inbounds %struct.snd_kcontrol, ptr %12, i32 0, i32 6
  store ptr %27, ptr %28, align 4
  br label %29

29:                                               ; preds = %23, %21, %15, %14, %2
  %30 = phi ptr [ null, %14 ], [ null, %2 ], [ %12, %23 ], [ %12, %21 ], [ %12, %15 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #10
  ret ptr %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @master_info(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 1, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 4
  %11 = icmp eq ptr %10, %4
  br i1 %11, label %37, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @follower_init(ptr noundef %10) #10
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.link_follower, ptr %10, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %5, ptr noundef align 4 dereferenceable(16) %16, i32 16, i1 false) #10
  store i32 1, ptr %6, align 4
  %17 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 1, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 2
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  tail call void %21(ptr noundef %25, i32 noundef %18) #10
  br label %26

26:                                               ; preds = %23, %15, %2
  %27 = load i32, ptr %5, align 4
  %28 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 %27, ptr %28, align 8
  %29 = load i32, ptr %6, align 4
  %30 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 1, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 1, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  br label %37

37:                                               ; preds = %26, %12, %9
  %38 = phi i32 [ 0, %26 ], [ %13, %12 ], [ -2, %9 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @master_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 1, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 4
  %11 = icmp eq ptr %10, %4
  br i1 %11, label %30, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @follower_init(ptr noundef %10) #10
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.link_follower, ptr %10, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %5, ptr noundef align 4 dereferenceable(16) %16, i32 16, i1 false) #10
  store i32 1, ptr %6, align 4
  %17 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 1, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 2
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  tail call void %21(ptr noundef %25, i32 noundef %18) #10
  br label %26

26:                                               ; preds = %23, %15, %2
  %27 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %28, ptr %29, align 8
  br label %30

30:                                               ; preds = %26, %12, %9
  %31 = phi i32 [ 0, %26 ], [ %13, %12 ], [ -2, %9 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @master_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 1, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 4
  %11 = icmp eq ptr %10, %4
  br i1 %11, label %44, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @follower_init(ptr noundef %10) #10
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %44, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.link_follower, ptr %10, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %5, ptr noundef align 4 dereferenceable(16) %16, i32 16, i1 false) #10
  store i32 1, ptr %6, align 4
  %17 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 1, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 2
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  tail call void %21(ptr noundef %25, i32 noundef %18) #10
  br label %26

26:                                               ; preds = %23, %15, %2
  %27 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, %28
  br i1 %31, label %44, label %32

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @sync_followers(ptr noundef %4, i32 noundef %28, i32 noundef %30)
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  %39 = select i1 %38, i1 true, i1 %8
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = load i32, ptr %27, align 4
  tail call void %37(ptr noundef %42, i32 noundef %43) #10
  br label %44

44:                                               ; preds = %40, %35, %32, %26, %12, %9
  %45 = phi i32 [ 0, %26 ], [ %33, %32 ], [ 1, %35 ], [ 1, %40 ], [ %13, %12 ], [ -2, %9 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @master_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %19, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %8, %6 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.link_follower, ptr %7, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %struct.link_follower, ptr %7, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(104) %10, ptr noundef align 4 dereferenceable(104) %12, i32 104, i1 false)
  %13 = getelementptr inbounds %struct.snd_kcontrol, ptr %10, i32 0, i32 10
  %14 = getelementptr inbounds %struct.link_follower, ptr %7, i32 1
  %15 = getelementptr inbounds %struct.snd_kcontrol, ptr %10, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = shl i32 %16, 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %14, i32 %17, i1 false)
  store i64 %11, ptr %10, align 4
  tail call void @kfree(ptr noundef %7) #10
  %18 = icmp eq ptr %8, %3
  br i1 %18, label %19, label %6

19:                                               ; preds = %6, %1
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_ctl_add_vmaster_hook(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.link_master, ptr %5, i32 0, i32 4
  store ptr %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.link_master, ptr %5, i32 0, i32 5
  store ptr %2, ptr %7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_ctl_sync_vmaster(ptr noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %45, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  br i1 %1, label %34, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.link_master, ptr %6, i32 0, i32 1
  %9 = getelementptr inbounds %struct.link_master, ptr %6, i32 0, i32 1, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 4
  %14 = icmp eq ptr %13, %6
  br i1 %14, label %45, label %15

15:                                               ; preds = %12
  %16 = tail call fastcc i32 @follower_init(ptr noundef %13) #10
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %45, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.link_follower, ptr %13, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %8, ptr noundef align 4 dereferenceable(16) %19, i32 16, i1 false) #10
  store i32 1, ptr %9, align 4
  %20 = getelementptr inbounds %struct.link_master, ptr %6, i32 0, i32 1, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.link_master, ptr %6, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.link_master, ptr %6, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.link_master, ptr %6, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  tail call void %24(ptr noundef %28, i32 noundef %21) #10
  br label %29

29:                                               ; preds = %26, %18, %7
  %30 = getelementptr inbounds %struct.link_master, ptr %6, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = tail call fastcc i32 @sync_followers(ptr noundef %6, i32 noundef %31, i32 noundef %31)
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %34, label %45

34:                                               ; preds = %29, %4
  %35 = phi i1 [ false, %4 ], [ %11, %29 ]
  %36 = getelementptr inbounds %struct.link_master, ptr %6, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  %39 = select i1 %38, i1 true, i1 %35
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.link_master, ptr %6, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.link_master, ptr %6, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  tail call void %37(ptr noundef %42, i32 noundef %44) #10
  br label %45

45:                                               ; preds = %40, %34, %29, %15, %12, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sync_followers(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 712) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %34, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.link_master, ptr %0, i32 0, i32 2
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %5, i32 0, i32 2
  br label %13

13:                                               ; preds = %30, %10
  %14 = phi ptr [ %8, %10 ], [ %32, %30 ]
  store i32 %1, ptr %11, align 4
  %15 = getelementptr inbounds %struct.link_follower, ptr %14, i32 0, i32 6, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef align 4 dereferenceable(64) %15, i32 64, i1 false)
  %16 = tail call fastcc i32 @follower_init(ptr noundef %14) #10
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.link_follower, ptr %14, i32 0, i32 2, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %22, %18
  %23 = phi i32 [ %27, %22 ], [ 0, %18 ]
  %24 = getelementptr %struct.link_follower, ptr %14, i32 0, i32 3, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr [128 x i32], ptr %12, i32 0, i32 %23
  store i32 %25, ptr %26, align 4
  %27 = add nuw nsw i32 %23, 1
  %28 = load i32, ptr %19, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %22, label %30

30:                                               ; preds = %22, %18, %13
  store i32 %2, ptr %11, align 4
  %31 = tail call fastcc i32 @follower_put_val(ptr noundef %14, ptr noundef nonnull %5)
  %32 = load ptr, ptr %14, align 4
  %33 = icmp eq ptr %32, %0
  br i1 %33, label %34, label %13

34:                                               ; preds = %30, %7
  tail call void @kfree(ptr noundef nonnull %5) #10
  br label %35

35:                                               ; preds = %34, %3
  %36 = phi i32 [ 0, %34 ], [ -12, %3 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_ctl_apply_vmaster_followers(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.link_master, ptr %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.link_master, ptr %5, i32 0, i32 1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %3
  %11 = load ptr, ptr %5, align 4
  %12 = icmp eq ptr %11, %5
  br i1 %12, label %38, label %13

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @follower_init(ptr noundef %11) #10
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.link_follower, ptr %11, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %6, ptr noundef align 4 dereferenceable(16) %17, i32 16, i1 false) #10
  store i32 1, ptr %7, align 4
  %18 = getelementptr inbounds %struct.link_master, ptr %5, i32 0, i32 1, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.link_master, ptr %5, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.link_master, ptr %5, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.link_master, ptr %5, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  tail call void %22(ptr noundef %26, i32 noundef %19) #10
  br label %27

27:                                               ; preds = %24, %16, %3
  br label %28

28:                                               ; preds = %32, %27
  %29 = phi ptr [ %30, %32 ], [ %5, %27 ]
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %5
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.link_follower, ptr %30, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.link_follower, ptr %30, i32 0, i32 6
  %36 = tail call i32 %1(ptr noundef %34, ptr noundef %35, ptr noundef %2) #10
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %28

38:                                               ; preds = %32, %28, %13, %10
  %39 = phi i32 [ -2, %10 ], [ %14, %13 ], [ 0, %28 ], [ %36, %32 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @follower_init(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.link_follower, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.link_follower, ptr %0, i32 0, i32 2, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %37, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.link_follower, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %90, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 712) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %90, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.link_follower, ptr %0, i32 0, i32 6
  %17 = getelementptr inbounds %struct.link_follower, ptr %0, i32 0, i32 6, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef align 4 dereferenceable(64) %17, i32 64, i1 false) #10
  %18 = getelementptr inbounds %struct.link_follower, ptr %0, i32 0, i32 6, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %16, ptr noundef nonnull %13) #10
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %15
  %23 = load i32, ptr %3, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %13, i32 0, i32 2
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i32 [ 0, %25 ], [ %32, %27 ]
  %29 = getelementptr [128 x i32], ptr %26, i32 0, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr %struct.link_follower, ptr %0, i32 0, i32 3, i32 %28
  store i32 %30, ptr %31, align 4
  %32 = add nuw nsw i32 %28, 1
  %33 = load i32, ptr %3, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %27, label %35

35:                                               ; preds = %27, %22, %15
  tail call void @kfree(ptr noundef nonnull %13) #10
  %36 = tail call i32 @llvm.smin.i32(i32 %20, i32 0) #10
  br label %90

37:                                               ; preds = %1
  %38 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %39 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3264, i32 noundef 272) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %90, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.link_follower, ptr %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.link_follower, ptr %0, i32 0, i32 6, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %39, ptr noundef align 4 dereferenceable(64) %43, i32 64, i1 false)
  %44 = getelementptr inbounds %struct.link_follower, ptr %0, i32 0, i32 6, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 %45(ptr noundef %42, ptr noundef nonnull %39) #10
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  tail call void @kfree(ptr noundef nonnull %39) #10
  br label %90

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %39, i32 0, i32 1
  %51 = load i32, ptr %50, align 8
  store i32 %51, ptr %2, align 4
  %52 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %39, i32 0, i32 3
  %53 = load i32, ptr %52, align 8
  store i32 %53, ptr %3, align 4
  %54 = icmp slt i32 %53, 3
  %55 = add i32 %51, -1
  %56 = icmp ult i32 %55, 2
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %60, label %58

58:                                               ; preds = %49
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  tail call void @kfree(ptr noundef nonnull %39) #10
  br label %90

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %39, i32 0, i32 5
  %62 = load i32, ptr %61, align 8
  %63 = getelementptr inbounds %struct.link_follower, ptr %0, i32 0, i32 2, i32 2
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %39, i32 0, i32 5, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.link_follower, ptr %0, i32 0, i32 2, i32 3
  store i32 %65, ptr %66, align 4
  tail call void @kfree(ptr noundef nonnull %39) #10
  %67 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %68 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %67, i32 noundef 3520, i32 noundef 712) #12
  %69 = icmp eq ptr %68, null
  br i1 %69, label %90, label %70

70:                                               ; preds = %60
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %68, ptr noundef align 4 dereferenceable(64) %43, i32 64, i1 false) #10
  %71 = getelementptr inbounds %struct.link_follower, ptr %0, i32 0, i32 6, i32 4
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 %72(ptr noundef %42, ptr noundef nonnull %68) #10
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %70
  %76 = load i32, ptr %3, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %68, i32 0, i32 2
  br label %80

80:                                               ; preds = %80, %78
  %81 = phi i32 [ 0, %78 ], [ %85, %80 ]
  %82 = getelementptr [128 x i32], ptr %79, i32 0, i32 %81
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr %struct.link_follower, ptr %0, i32 0, i32 3, i32 %81
  store i32 %83, ptr %84, align 4
  %85 = add nuw nsw i32 %81, 1
  %86 = load i32, ptr %3, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %80, label %88

88:                                               ; preds = %80, %75, %70
  tail call void @kfree(ptr noundef nonnull %68) #10
  %89 = tail call i32 @llvm.smin.i32(i32 %73, i32 0) #10
  br label %90

90:                                               ; preds = %88, %60, %58, %48, %37, %35, %11, %6
  %91 = phi i32 [ %46, %48 ], [ -22, %58 ], [ 0, %6 ], [ -12, %37 ], [ %36, %35 ], [ -12, %11 ], [ %89, %88 ], [ -12, %60 ]
  ret i32 %91
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @follower_put_val(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.link_follower, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 1, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 4
  %11 = icmp eq ptr %10, %4
  br i1 %11, label %82, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @follower_init(ptr noundef %10) #10
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %82, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.link_follower, ptr %10, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %5, ptr noundef align 4 dereferenceable(16) %16, i32 16, i1 false) #10
  store i32 1, ptr %6, align 4
  %17 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 1, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 2
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.link_master, ptr %4, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  tail call void %21(ptr noundef %25, i32 noundef %18) #10
  br label %26

26:                                               ; preds = %23, %15, %2
  %27 = getelementptr inbounds %struct.link_follower, ptr %0, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  switch i32 %28, label %77 [
    i32 1, label %37
    i32 2, label %29
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.link_follower, ptr %0, i32 0, i32 2, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %77

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %35 = getelementptr inbounds %struct.link_follower, ptr %0, i32 0, i32 2, i32 2
  %36 = getelementptr inbounds %struct.link_follower, ptr %0, i32 0, i32 2, i32 3
  br label %56

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.link_follower, ptr %0, i32 0, i32 2, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %77

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  br label %43

43:                                               ; preds = %43, %41
  %44 = phi i32 [ 0, %41 ], [ %53, %43 ]
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr inbounds %struct.link_master, ptr %45, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = getelementptr [128 x i32], ptr %42, i32 0, i32 %44
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, %49
  store i32 %52, ptr %50, align 4
  %53 = add nuw nsw i32 %44, 1
  %54 = load i32, ptr %38, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %43, label %77

56:                                               ; preds = %72, %33
  %57 = phi i32 [ 0, %33 ], [ %74, %72 ]
  %58 = getelementptr [128 x i32], ptr %34, i32 0, i32 %57
  %59 = load i32, ptr %58, align 4
  %60 = load ptr, ptr %3, align 4
  %61 = getelementptr inbounds %struct.link_master, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.link_master, ptr %60, i32 0, i32 1, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = sub i32 %62, %64
  %66 = add i32 %65, %59
  %67 = load i32, ptr %35, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %72, label %69

69:                                               ; preds = %56
  %70 = load i32, ptr %36, align 4
  %71 = tail call i32 @llvm.smin.i32(i32 %66, i32 %70)
  br label %72

72:                                               ; preds = %69, %56
  %73 = phi i32 [ %67, %56 ], [ %71, %69 ]
  store i32 %73, ptr %58, align 4
  %74 = add nuw nsw i32 %57, 1
  %75 = load i32, ptr %30, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %56, label %77

77:                                               ; preds = %72, %43, %37, %29, %26
  %78 = getelementptr inbounds %struct.link_follower, ptr %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.link_follower, ptr %0, i32 0, i32 6, i32 5
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 %80(ptr noundef %78, ptr noundef %1) #10
  br label %82

82:                                               ; preds = %77, %12, %9
  %83 = phi i32 [ %81, %77 ], [ %13, %12 ], [ -2, %9 ]
  ret i32 %83
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

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
