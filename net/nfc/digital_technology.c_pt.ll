; ModuleID = '/llk/IR/net/nfc/digital_technology.c_pt.bc'
source_filename = "../net/nfc/digital_technology.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sk_buff = type { %union.anon.64, %union.anon.67, %union.anon.68, [48 x i8], %union.anon.69, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.71, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr, %union.anon.66 }
%union.anon.66 = type { ptr }
%union.anon.67 = type { ptr }
%union.anon.68 = type { i64 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { i32, ptr }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.73, i32, i32, i32, i16, i16, %union.anon.75, %union.anon.76, %union.anon.77, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.73 = type { i32 }
%union.anon.75 = type { i32 }
%union.anon.76 = type { i32 }
%union.anon.77 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nfc_digital_dev = type { ptr, ptr, i32, i32, i32, i32, ptr, [6 x %struct.digital_poll_tech], i8, i8, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.delayed_work, i8, i8, i8, i8, i16, i8, i8, ptr, ptr, i32, i32, ptr, i16, ptr, ptr }
%struct.digital_poll_tech = type { i8, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.digital_sensb_req = type { i8, i8, i8 }
%struct.digital_sensb_res = type { i8, [4 x i8], [4 x i8], [3 x i8] }
%struct.digital_attrib_req = type { i8, [4 x i8], i8, i8, i8, i8 }
%struct.digital_sensf_req = type { i8, i8, i8, i8, i8 }
%struct.digital_sensf_res = type { i8, [8 x i8], [2 x i8], [3 x i8], i8, i8, i8, [2 x i8] }
%struct.digital_iso15693_inv_req = type <{ i8, i8, i8, i64 }>
%struct.digital_iso15693_inv_res = type <{ i8, i8, i64 }>
%struct.nfc_digital_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.digital_sdd_res = type { [4 x i8], i8 }
%struct.digital_sel_req = type { i8, i8, [4 x i8], i8 }

@.str = private unnamed_addr constant [58 x i8] c"\013digital: %s: ISO_DEP R-block and S-block not supported\0A\00", align 1
@__func__.digital_in_iso_dep_pull_sod = private unnamed_addr constant [28 x i8] c"digital_in_iso_dep_pull_sod\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"\013digital: %s: DID field in ISO_DEP PCB not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"\013digital: %s: %d: NFC Digital Protocol error: %s\0A\00", align 1
@__func__.digital_in_recv_mifare_res = private unnamed_addr constant [27 x i8] c"digital_in_recv_mifare_res\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"9.4.1.2\00", align 1
@__func__.digital_tg_recv_sensf_req = private unnamed_addr constant [26 x i8] c"digital_tg_recv_sensf_req\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"6.4.1.8\00", align 1
@__func__.digital_in_recv_sens_res = private unnamed_addr constant [25 x i8] c"digital_in_recv_sens_res\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"4.6.3.3\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.digital_in_recv_sdd_res = private unnamed_addr constant [24 x i8] c"digital_in_recv_sdd_res\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"4.7.2.8\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"4.7.2.6\00", align 1
@__func__.digital_in_recv_sel_res = private unnamed_addr constant [24 x i8] c"digital_in_recv_sel_res\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"4.4.1.3\00", align 1
@digital_ats_fsc = internal unnamed_addr constant [8 x i8] c"\10\18 (0@`\80", align 1
@__func__.digital_in_recv_sensb_res = private unnamed_addr constant [26 x i8] c"digital_in_recv_sensb_res\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"5.6.2.1\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"5.6.2\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"5.6.2.12\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"5.6.2.16\00", align 1
@__func__.digital_in_recv_attrib_res = private unnamed_addr constant [27 x i8] c"digital_in_recv_attrib_res\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"12.6.2\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"12.6.2.1\00", align 1
@__func__.digital_in_recv_sensf_res = private unnamed_addr constant [26 x i8] c"digital_in_recv_sensf_res\00", align 1
@__func__.digital_in_recv_iso15693_inv_res = private unnamed_addr constant [33 x i8] c"digital_in_recv_iso15693_inv_res\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"ISO15693 - 10.3.1\00", align 1
@__func__.digital_tg_recv_sel_req = private unnamed_addr constant [24 x i8] c"digital_tg_recv_sel_req\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @digital_in_iso_dep_pull_sod(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = load i8, ptr %8, align 1
  %10 = icmp ult i8 %9, 64
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.digital_in_iso_dep_pull_sod) #7
  br label %20

13:                                               ; preds = %6
  %14 = and i8 %9, 8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.digital_in_iso_dep_pull_sod) #7
  br label %20

18:                                               ; preds = %13
  %19 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 1) #8
  br label %20

20:                                               ; preds = %18, %16, %11, %2
  %21 = phi i32 [ -5, %11 ], [ -5, %16 ], [ 0, %18 ], [ -5, %2 ]
  ret i32 %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @digital_in_iso_dep_push_sod(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = add i32 %4, 3
  %6 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 28
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = icmp ugt i32 %5, %8
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @skb_push(ptr noundef %1, i32 noundef 1) #8
  %12 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 18
  %13 = load i8, ptr %12, align 2
  %14 = or i8 %13, 2
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  store i8 %14, ptr %16, align 1
  %17 = load i8, ptr %12, align 2
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, ptr %12, align 2
  br label %20

20:                                               ; preds = %10, %2
  %21 = phi i32 [ 0, %10 ], [ -5, %2 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @digital_in_send_sens_req(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call i32 @digital_in_configure_hw(ptr noundef %0, i32 noundef 0, i32 noundef 0) #8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = tail call i32 @digital_in_configure_hw(ptr noundef %0, i32 noundef 1, i32 noundef 0) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = tail call ptr @digital_skb_alloc(ptr noundef %0, i32 noundef 1) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @skb_put(ptr noundef nonnull %9, i32 noundef 1) #8
  store i8 38, ptr %12, align 1
  %13 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %9, ptr noundef null, i16 noundef zeroext 30, ptr noundef nonnull @digital_in_recv_sens_res, ptr noundef null) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @kfree_skb_reason(ptr noundef nonnull %9, i32 noundef 0) #8
  br label %16

16:                                               ; preds = %15, %11, %8, %5, %2
  %17 = phi i32 [ %3, %2 ], [ %6, %5 ], [ -12, %8 ], [ %13, %15 ], [ 0, %11 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_in_configure_hw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @digital_skb_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_in_recv_sens_res(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %39, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %39, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 76) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %39, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  %16 = load i16, ptr %15, align 2
  %17 = getelementptr inbounds %struct.nfc_target, ptr %11, i32 0, i32 2
  store i16 %16, ptr %17, align 8
  %18 = zext i16 %16 to i32
  %19 = and i32 %18, 31
  %20 = icmp eq i32 %19, 0
  %21 = and i32 %18, 3072
  %22 = icmp eq i32 %21, 3072
  %23 = and i32 %18, 3103
  %24 = icmp ne i32 %23, 3072
  %25 = or i1 %20, %22
  %26 = and i1 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %13
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.digital_in_recv_sens_res, i32 noundef 502, ptr noundef nonnull @.str.5) #7
  br label %39

29:                                               ; preds = %13
  %30 = and i16 %16, 3072
  %31 = icmp eq i16 %30, 3072
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = tail call i32 @digital_target_found(ptr noundef %0, ptr noundef nonnull %11, i8 noundef zeroext 1) #8
  br label %36

34:                                               ; preds = %29
  %35 = tail call fastcc i32 @digital_in_send_sdd_req(ptr noundef %0, ptr noundef nonnull %11)
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  tail call void @consume_skb(ptr noundef %2) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %42

39:                                               ; preds = %27, %9, %5, %3
  %40 = phi ptr [ null, %3 ], [ %2, %27 ], [ %2, %5 ], [ %2, %9 ]
  %41 = phi ptr [ null, %3 ], [ %11, %27 ], [ null, %5 ], [ null, %9 ]
  tail call void @consume_skb(ptr noundef %40) #8
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi ptr [ %11, %36 ], [ %41, %39 ]
  tail call void @kfree(ptr noundef %43) #8
  tail call void @digital_poll_next_tech(ptr noundef %0) #8
  br label %44

44:                                               ; preds = %42, %36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @digital_in_recv_mifare_res(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 8
  switch i32 %3, label %15 [
    i32 18, label %4
    i32 1, label %9
  ]

4:                                                ; preds = %1
  %5 = tail call i32 @digital_skb_check_crc(ptr noundef %0, ptr noundef nonnull @crc_ccitt, i16 noundef zeroext 25443, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.digital_in_recv_mifare_res, i32 noundef 558, ptr noundef nonnull @.str.3) #7
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 10
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i8 0, ptr %11, align 1
  br label %15

15:                                               ; preds = %14, %9, %7, %4, %1
  %16 = phi i32 [ -5, %7 ], [ 0, %14 ], [ 0, %4 ], [ -5, %1 ], [ -5, %9 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @digital_in_send_sensb_req(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call i32 @digital_in_configure_hw(ptr noundef %0, i32 noundef 0, i32 noundef 4) #8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = tail call i32 @digital_in_configure_hw(ptr noundef %0, i32 noundef 1, i32 noundef 14) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = tail call ptr @digital_skb_alloc(ptr noundef %0, i32 noundef 3) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @skb_put(ptr noundef nonnull %9, i32 noundef 3) #8
  store i8 5, ptr %12, align 1
  %13 = getelementptr inbounds %struct.digital_sensb_req, ptr %12, i32 0, i32 1
  store i8 0, ptr %13, align 1
  %14 = getelementptr inbounds %struct.digital_sensb_req, ptr %12, i32 0, i32 2
  store i8 0, ptr %14, align 1
  %15 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %9, ptr noundef null, i16 noundef zeroext 30, ptr noundef nonnull @digital_in_recv_sensb_res, ptr noundef null) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @kfree_skb_reason(ptr noundef nonnull %9, i32 noundef 0) #8
  br label %18

18:                                               ; preds = %17, %11, %8, %5, %2
  %19 = phi i32 [ %3, %2 ], [ %6, %5 ], [ -12, %8 ], [ %15, %17 ], [ 0, %11 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_in_recv_sensb_res(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %63, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 12
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.digital_in_recv_sensb_res, i32 noundef 660, ptr noundef nonnull @.str.9) #7
  br label %63

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 80
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.digital_in_recv_sensb_res, i32 noundef 668, ptr noundef nonnull @.str.10) #7
  br label %63

18:                                               ; preds = %11
  %19 = getelementptr %struct.digital_sensb_res, ptr %13, i32 0, i32 3, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.digital_in_recv_sensb_res, i32 noundef 674, ptr noundef nonnull @.str.11) #7
  br label %63

26:                                               ; preds = %18
  %27 = and i32 %21, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.digital_in_recv_sensb_res, i32 noundef 680, ptr noundef nonnull @.str.12) #7
  br label %63

31:                                               ; preds = %26
  %32 = icmp slt i8 %20, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %31
  %34 = lshr i8 %20, 4
  %35 = zext i8 %34 to i32
  %36 = getelementptr [8 x i8], ptr @digital_ats_fsc, i32 0, i32 %35
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i16
  br label %39

39:                                               ; preds = %33, %31
  %40 = phi i16 [ %38, %33 ], [ 256, %31 ]
  %41 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 28
  store i16 %40, ptr %41, align 4
  %42 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %43 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3520, i32 noundef 76) #9
  %44 = icmp eq ptr %43, null
  br i1 %44, label %63, label %45

45:                                               ; preds = %39
  %46 = tail call ptr @digital_skb_alloc(ptr noundef %0, i32 noundef 9) #8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %63, label %48

48:                                               ; preds = %45
  %49 = tail call ptr @skb_put(ptr noundef nonnull %46, i32 noundef 9) #8
  store i8 29, ptr %49, align 1
  %50 = getelementptr inbounds %struct.digital_attrib_req, ptr %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.digital_sensb_res, ptr %13, i32 0, i32 1
  %52 = load i32, ptr %51, align 1
  store i32 %52, ptr %50, align 1
  %53 = getelementptr inbounds %struct.digital_attrib_req, ptr %49, i32 0, i32 2
  store i8 0, ptr %53, align 1
  %54 = getelementptr inbounds %struct.digital_attrib_req, ptr %49, i32 0, i32 3
  store i8 8, ptr %54, align 1
  %55 = load i8, ptr %19, align 1
  %56 = and i8 %55, 7
  %57 = getelementptr inbounds %struct.digital_attrib_req, ptr %49, i32 0, i32 4
  store i8 %56, ptr %57, align 1
  %58 = getelementptr inbounds %struct.digital_attrib_req, ptr %49, i32 0, i32 5
  store i8 0, ptr %58, align 1
  %59 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %46, ptr noundef null, i16 noundef zeroext 30, ptr noundef nonnull @digital_in_recv_attrib_res, ptr noundef nonnull %43) #8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  tail call void @consume_skb(ptr noundef %2) #8
  br label %66

62:                                               ; preds = %48
  tail call void @kfree_skb_reason(ptr noundef nonnull %46, i32 noundef 0) #8
  br label %63

63:                                               ; preds = %62, %45, %39, %29, %24, %16, %9, %3
  %64 = phi ptr [ %2, %9 ], [ %2, %16 ], [ %2, %29 ], [ %2, %24 ], [ %2, %39 ], [ %2, %45 ], [ %2, %62 ], [ null, %3 ]
  %65 = phi ptr [ null, %9 ], [ null, %16 ], [ null, %29 ], [ null, %24 ], [ null, %39 ], [ %43, %45 ], [ %43, %62 ], [ null, %3 ]
  tail call void @consume_skb(ptr noundef %64) #8
  tail call void @kfree(ptr noundef %65) #8
  tail call void @digital_poll_next_tech(ptr noundef %0) #8
  br label %66

66:                                               ; preds = %63, %61
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @digital_in_send_sensf_req(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = zext i8 %1 to i32
  %4 = tail call i32 @digital_in_configure_hw(ptr noundef %0, i32 noundef 0, i32 noundef %3) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %2
  %7 = tail call i32 @digital_in_configure_hw(ptr noundef %0, i32 noundef 1, i32 noundef 8) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %6
  %10 = tail call ptr @digital_skb_alloc(ptr noundef %0, i32 noundef 5) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @skb_put(ptr noundef nonnull %10, i32 noundef 5) #8
  %14 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  store i8 0, ptr %15, align 1
  %16 = getelementptr inbounds %struct.digital_sensf_req, ptr %15, i32 0, i32 1
  store i8 -1, ptr %16, align 1
  %17 = getelementptr inbounds %struct.digital_sensf_req, ptr %15, i32 0, i32 2
  store i8 -1, ptr %17, align 1
  %18 = getelementptr inbounds %struct.digital_sensf_req, ptr %15, i32 0, i32 3
  store i8 0, ptr %18, align 1
  %19 = getelementptr inbounds %struct.digital_sensf_req, ptr %15, i32 0, i32 4
  store i8 0, ptr %19, align 1
  %20 = tail call ptr @skb_push(ptr noundef nonnull %10, i32 noundef 1) #8
  store i8 6, ptr %20, align 1
  %21 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  tail call void @digital_skb_add_crc(ptr noundef nonnull %10, ptr noundef nonnull @crc_itu_t, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  br label %26

26:                                               ; preds = %25, %12
  %27 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %10, ptr noundef null, i16 noundef zeroext 30, ptr noundef nonnull @digital_in_recv_sensf_res, ptr noundef null) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @kfree_skb_reason(ptr noundef nonnull %10, i32 noundef 0) #8
  br label %30

30:                                               ; preds = %29, %26, %9, %6, %2
  %31 = phi i32 [ %4, %2 ], [ %7, %6 ], [ -12, %9 ], [ %27, %29 ], [ 0, %26 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_in_recv_sensf_res(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca %struct.nfc_target, align 4
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(76) %4, i8 0, i32 76, i1 false), !annotation !8
  %5 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %38, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = icmp ult i32 %8, 17
  br i1 %9, label %37, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = tail call i32 @digital_skb_check_crc(ptr noundef %2, ptr noundef nonnull @crc_itu_t, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.digital_in_recv_sensf_res, i32 noundef 764, ptr noundef nonnull @.str.4) #7
  br label %37

20:                                               ; preds = %15, %10
  %21 = tail call ptr @skb_pull(ptr noundef %2, i32 noundef 1) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(76) %4, i8 0, i32 76, i1 false)
  %22 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nfc_target, ptr %4, i32 0, i32 11
  %25 = load i32, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %24, ptr align 1 %23, i32 %25, i1 false)
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.nfc_target, ptr %4, i32 0, i32 10
  store i8 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.nfc_target, ptr %4, i32 0, i32 7
  %29 = getelementptr inbounds %struct.digital_sensf_res, ptr %23, i32 0, i32 1
  %30 = load i64, ptr %29, align 1
  store i64 %30, ptr %28, align 1
  %31 = getelementptr inbounds %struct.nfc_target, ptr %4, i32 0, i32 6
  store i8 8, ptr %31, align 2
  %32 = and i64 %30, 65535
  %33 = icmp eq i64 %32, 65025
  %34 = select i1 %33, i8 5, i8 3
  %35 = call i32 @digital_target_found(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext %34) #8
  %36 = icmp eq i32 %35, 0
  call void @consume_skb(ptr noundef %2) #8
  br i1 %36, label %40, label %39

37:                                               ; preds = %18, %6
  tail call void @consume_skb(ptr noundef %2) #8
  br label %39

38:                                               ; preds = %3
  call void @consume_skb(ptr noundef null) #8
  br label %39

39:                                               ; preds = %38, %37, %20
  call void @digital_poll_next_tech(ptr noundef %0) #8
  br label %40

40:                                               ; preds = %39, %20
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @digital_in_send_iso15693_inv_req(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call i32 @digital_in_configure_hw(ptr noundef %0, i32 noundef 0, i32 noundef 3) #8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = tail call i32 @digital_in_configure_hw(ptr noundef %0, i32 noundef 1, i32 noundef 12) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = tail call ptr @digital_skb_alloc(ptr noundef %0, i32 noundef 11) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @skb_put(ptr noundef nonnull %9, i32 noundef 3) #8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  store i8 38, ptr %14, align 1
  %15 = getelementptr inbounds %struct.digital_iso15693_inv_req, ptr %14, i32 0, i32 1
  store i8 1, ptr %15, align 1
  %16 = getelementptr inbounds %struct.digital_iso15693_inv_req, ptr %14, i32 0, i32 2
  store i8 0, ptr %16, align 1
  %17 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %9, ptr noundef null, i16 noundef zeroext 30, ptr noundef nonnull @digital_in_recv_iso15693_inv_res, ptr noundef null) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  tail call void @kfree_skb_reason(ptr noundef nonnull %9, i32 noundef 0) #8
  br label %20

20:                                               ; preds = %19, %11, %8, %5, %2
  %21 = phi i32 [ %3, %2 ], [ %6, %5 ], [ -12, %8 ], [ %17, %19 ], [ 0, %11 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_in_recv_iso15693_inv_res(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %31, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 10
  br i1 %8, label %9, label %31

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.digital_in_recv_iso15693_inv_res, i32 noundef 861, ptr noundef nonnull @.str.15) #7
  br label %31

17:                                               ; preds = %9
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 76) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.nfc_target, ptr %19, i32 0, i32 14
  store i8 1, ptr %22, align 1
  %23 = getelementptr inbounds %struct.digital_iso15693_inv_res, ptr %11, i32 0, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = getelementptr inbounds %struct.nfc_target, ptr %19, i32 0, i32 15
  store i8 %24, ptr %25, align 2
  %26 = getelementptr inbounds %struct.nfc_target, ptr %19, i32 0, i32 16
  %27 = getelementptr inbounds %struct.digital_iso15693_inv_res, ptr %11, i32 0, i32 2
  %28 = load i64, ptr %27, align 1
  store i64 %28, ptr %26, align 1
  %29 = tail call i32 @digital_target_found(ptr noundef %0, ptr noundef nonnull %19, i8 noundef zeroext 7) #8
  tail call void @kfree(ptr noundef nonnull %19) #8
  %30 = icmp eq i32 %29, 0
  tail call void @consume_skb(ptr noundef %2) #8
  br i1 %30, label %34, label %33

31:                                               ; preds = %17, %15, %5, %3
  %32 = phi ptr [ %2, %15 ], [ %2, %5 ], [ %2, %17 ], [ null, %3 ]
  tail call void @consume_skb(ptr noundef %32) #8
  br label %33

33:                                               ; preds = %31, %21
  tail call void @digital_poll_next_tech(ptr noundef %0) #8
  br label %34

34:                                               ; preds = %33, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @digital_tg_recv_sens_req(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %25, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  switch i8 %12, label %25 [
    i8 82, label %13
    i8 38, label %13
  ]

13:                                               ; preds = %9, %9
  %14 = tail call ptr @digital_skb_alloc(ptr noundef %0, i32 noundef 2) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @skb_put(ptr noundef nonnull %14, i32 noundef 2) #8
  store i8 1, ptr %17, align 1
  %18 = getelementptr i8, ptr %17, i32 1
  store i8 0, ptr %18, align 1
  %19 = tail call i32 @digital_tg_configure_hw(ptr noundef %0, i32 noundef 1, i32 noundef 1) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 1, ptr noundef nonnull %14, ptr noundef null, i16 noundef zeroext 300, ptr noundef nonnull @digital_tg_recv_sdd_req, ptr noundef null) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %16
  tail call void @kfree_skb_reason(ptr noundef nonnull %14, i32 noundef 0) #8
  br label %25

25:                                               ; preds = %24, %13, %9, %5, %3
  %26 = phi ptr [ %2, %9 ], [ %2, %5 ], [ %2, %13 ], [ %2, %24 ], [ null, %3 ]
  tail call void @digital_poll_next_tech(ptr noundef %0) #8
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi ptr [ %26, %25 ], [ %2, %21 ]
  tail call void @consume_skb(ptr noundef %28) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @digital_poll_next_tech(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @digital_tg_recv_sensf_req(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %63, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = tail call i32 @digital_skb_check_crc(ptr noundef %2, ptr noundef nonnull @crc_itu_t, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.digital_tg_recv_sensf_req, i32 noundef 1188, ptr noundef nonnull @.str.4) #7
  br label %63

15:                                               ; preds = %10, %5
  %16 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 6
  br i1 %18, label %19, label %63

19:                                               ; preds = %15
  %20 = tail call ptr @skb_pull(ptr noundef %2, i32 noundef 1) #8
  %21 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %22 = load ptr, ptr %21, align 4
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.digital_sensf_req, ptr %22, i32 0, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, i32 17, i32 19
  %30 = tail call ptr @digital_skb_alloc(ptr noundef %0, i32 noundef %29) #8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %63, label %32

32:                                               ; preds = %25
  %33 = tail call ptr @skb_put(ptr noundef nonnull %30, i32 noundef %29) #8
  %34 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 17
  %35 = load ptr, ptr %34, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(17) %35, i8 0, i32 %29, i1 false) #8
  store i8 1, ptr %35, align 1
  %36 = getelementptr inbounds %struct.digital_sensf_res, ptr %35, i32 0, i32 1
  store i8 1, ptr %36, align 1
  %37 = getelementptr %struct.digital_sensf_res, ptr %35, i32 0, i32 1, i32 1
  store i8 -2, ptr %37, align 1
  %38 = getelementptr %struct.digital_sensf_res, ptr %35, i32 0, i32 1, i32 2
  tail call void @get_random_bytes(ptr noundef %38, i32 noundef 6) #8
  %39 = load i8, ptr %26, align 1
  switch i8 %39, label %51 [
    i8 1, label %40
    i8 2, label %46
  ]

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.digital_sensf_req, ptr %22, i32 0, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr inbounds %struct.digital_sensf_res, ptr %35, i32 0, i32 7
  store i8 %42, ptr %43, align 1
  %44 = getelementptr inbounds %struct.digital_sensf_req, ptr %22, i32 0, i32 2
  %45 = load i8, ptr %44, align 1
  br label %48

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.digital_sensf_res, ptr %35, i32 0, i32 7
  store i8 0, ptr %47, align 1
  br label %48

48:                                               ; preds = %46, %40
  %49 = phi i8 [ -113, %46 ], [ %45, %40 ]
  %50 = getelementptr %struct.digital_sensf_res, ptr %35, i32 0, i32 7, i32 1
  store i8 %49, ptr %50, align 1
  br label %51

51:                                               ; preds = %48, %32
  %52 = trunc i32 %29 to i8
  %53 = add nuw nsw i8 %52, 1
  %54 = tail call ptr @skb_push(ptr noundef nonnull %30, i32 noundef 1) #8
  store i8 %53, ptr %54, align 1
  %55 = load i32, ptr %6, align 4
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  tail call void @digital_skb_add_crc(ptr noundef nonnull %30, ptr noundef nonnull @crc_itu_t, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  br label %59

59:                                               ; preds = %58, %51
  %60 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 1, ptr noundef nonnull %30, ptr noundef null, i16 noundef zeroext 300, ptr noundef nonnull @digital_tg_recv_atr_or_sensf_req, ptr noundef null) #8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  tail call void @kfree_skb_reason(ptr noundef nonnull %30, i32 noundef 0) #8
  br label %63

63:                                               ; preds = %62, %25, %19, %15, %13, %3
  %64 = phi ptr [ %2, %13 ], [ %2, %15 ], [ %2, %19 ], [ %2, %25 ], [ %2, %62 ], [ null, %3 ]
  tail call void @digital_poll_next_tech(ptr noundef %0) #8
  br label %65

65:                                               ; preds = %63, %59
  %66 = phi ptr [ %64, %63 ], [ %2, %59 ]
  tail call void @consume_skb(ptr noundef %66) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @digital_tg_listen_nfca(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call i32 @digital_tg_configure_hw(ptr noundef %0, i32 noundef 0, i32 noundef 0) #8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = tail call i32 @digital_tg_configure_hw(ptr noundef %0, i32 noundef 1, i32 noundef 7) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 2, ptr noundef null, ptr noundef null, i16 noundef zeroext 300, ptr noundef nonnull @digital_tg_recv_sens_req, ptr noundef null) #8
  br label %10

10:                                               ; preds = %8, %5, %2
  %11 = phi i32 [ %9, %8 ], [ %6, %5 ], [ %3, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @digital_tg_listen_nfcf(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = zext i8 %1 to i32
  %4 = tail call i32 @digital_tg_configure_hw(ptr noundef %0, i32 noundef 0, i32 noundef %3) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = tail call i32 @digital_tg_configure_hw(ptr noundef %0, i32 noundef 1, i32 noundef 10) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 2, ptr noundef null, ptr noundef null, i16 noundef zeroext 300, ptr noundef nonnull @digital_tg_recv_sensf_req, ptr noundef null) #8
  br label %11

11:                                               ; preds = %9, %6, %2
  %12 = phi i32 [ %10, %9 ], [ %7, %6 ], [ %4, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @digital_tg_recv_md_req(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %30, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nfc_digital_ops, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 %10(ptr noundef %0, ptr noundef nonnull %4) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %6
  %14 = load i8, ptr %4, align 1
  switch i8 %14, label %30 [
    i8 0, label %15
    i8 1, label %22
    i8 2, label %22
  ]

15:                                               ; preds = %13
  %16 = call i32 @digital_tg_configure_hw(ptr noundef %0, i32 noundef 0, i32 noundef 0) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = call i32 @digital_tg_configure_hw(ptr noundef %0, i32 noundef 1, i32 noundef 7) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  call void @digital_tg_recv_sens_req(ptr noundef %0, ptr undef, ptr noundef %2)
  br label %32

22:                                               ; preds = %13, %13
  %23 = zext i8 %14 to i32
  %24 = call i32 @digital_tg_configure_hw(ptr noundef %0, i32 noundef 0, i32 noundef %23) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = call i32 @digital_tg_configure_hw(ptr noundef %0, i32 noundef 1, i32 noundef 10) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  call void @digital_tg_recv_sensf_req(ptr noundef %0, ptr undef, ptr noundef %2)
  br label %32

30:                                               ; preds = %26, %22, %18, %15, %13, %6, %3
  %31 = phi ptr [ %2, %6 ], [ %2, %13 ], [ %2, %26 ], [ %2, %18 ], [ null, %3 ], [ %2, %15 ], [ %2, %22 ]
  call void @digital_poll_next_tech(ptr noundef %0) #8
  call void @consume_skb(ptr noundef %31) #8
  br label %32

32:                                               ; preds = %30, %29, %21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_send_cmd(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_target_found(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @digital_in_send_sdd_req(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @digital_in_configure_hw(ptr noundef %0, i32 noundef 1, i32 noundef 1) #8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = tail call ptr @digital_skb_alloc(ptr noundef %0, i32 noundef 2) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.nfc_target, ptr %1, i32 0, i32 4
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 3
  %12 = select i1 %11, i8 -107, i8 -105
  %13 = icmp eq i8 %10, 0
  %14 = select i1 %13, i8 -109, i8 %12
  %15 = tail call ptr @skb_put(ptr noundef nonnull %6, i32 noundef 1) #8
  store i8 %14, ptr %15, align 1
  %16 = tail call ptr @skb_put(ptr noundef nonnull %6, i32 noundef 1) #8
  store i8 32, ptr %16, align 1
  %17 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %6, ptr noundef null, i16 noundef zeroext 30, ptr noundef nonnull @digital_in_recv_sdd_res, ptr noundef %1) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %8
  tail call void @kfree_skb_reason(ptr noundef nonnull %6, i32 noundef 0) #8
  br label %20

20:                                               ; preds = %19, %8, %5, %2
  %21 = phi i32 [ %3, %2 ], [ -12, %5 ], [ %17, %19 ], [ 0, %8 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_in_recv_sdd_res(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %71, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = icmp ult i32 %7, 5
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.digital_in_recv_sdd_res, i32 noundef 403, ptr noundef nonnull @.str.6) #7
  br label %71

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr [4 x i8], ptr %13, i32 0, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = xor i8 %14, %16
  %18 = getelementptr [4 x i8], ptr %13, i32 0, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = xor i8 %17, %19
  %21 = getelementptr [4 x i8], ptr %13, i32 0, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = xor i8 %20, %22
  %24 = getelementptr inbounds %struct.digital_sdd_res, ptr %13, i32 0, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %23, %25
  br i1 %26, label %29, label %27

27:                                               ; preds = %11
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.digital_in_recv_sdd_res, i32 noundef 414, ptr noundef nonnull @.str.7) #7
  br label %71

29:                                               ; preds = %11
  %30 = icmp eq i8 %14, -120
  %31 = zext i1 %30 to i32
  %32 = select i1 %30, i32 3, i32 4
  %33 = getelementptr inbounds %struct.nfc_target, ptr %1, i32 0, i32 5
  %34 = getelementptr inbounds %struct.nfc_target, ptr %1, i32 0, i32 4
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = getelementptr i8, ptr %33, i32 %36
  %38 = getelementptr i8, ptr %13, i32 %31
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %37, ptr noundef align 1 dereferenceable(3) %38, i32 %32, i1 false)
  %39 = load i8, ptr %34, align 1
  %40 = trunc i32 %32 to i8
  %41 = add i8 %39, %40
  store i8 %41, ptr %34, align 1
  %42 = tail call ptr @digital_skb_alloc(ptr noundef %0, i32 noundef 7) #8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %71, label %44

44:                                               ; preds = %29
  %45 = tail call ptr @skb_put(ptr noundef nonnull %42, i32 noundef 7) #8
  %46 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 17
  %47 = load ptr, ptr %46, align 4
  %48 = load i8, ptr %34, align 1
  %49 = icmp ult i8 %48, 5
  %50 = icmp ult i8 %48, 10
  %51 = select i1 %50, i8 -107, i8 -105
  %52 = select i1 %49, i8 -109, i8 %51
  store i8 %52, ptr %47, align 1
  %53 = getelementptr inbounds %struct.digital_sel_req, ptr %47, i32 0, i32 1
  store i8 112, ptr %53, align 1
  %54 = getelementptr inbounds %struct.digital_sel_req, ptr %47, i32 0, i32 2
  %55 = load i32, ptr %13, align 1
  store i32 %55, ptr %54, align 1
  %56 = load i8, ptr %24, align 1
  %57 = getelementptr inbounds %struct.digital_sel_req, ptr %47, i32 0, i32 3
  store i8 %56, ptr %57, align 1
  %58 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %44
  %63 = tail call i32 @digital_in_configure_hw(ptr noundef %0, i32 noundef 1, i32 noundef 2) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %70

65:                                               ; preds = %44
  tail call void @digital_skb_add_crc(ptr noundef nonnull %42, ptr noundef nonnull @crc_ccitt, i16 noundef zeroext 25443, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  br label %66

66:                                               ; preds = %65, %62
  %67 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %42, ptr noundef null, i16 noundef zeroext 30, ptr noundef nonnull @digital_in_recv_sel_res, ptr noundef %1) #8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  tail call void @consume_skb(ptr noundef %2) #8
  br label %73

70:                                               ; preds = %66, %62
  tail call void @kfree_skb_reason(ptr noundef nonnull %42, i32 noundef 0) #8
  br label %71

71:                                               ; preds = %70, %29, %27, %9, %3
  %72 = phi ptr [ %2, %9 ], [ %2, %27 ], [ %2, %29 ], [ %2, %70 ], [ null, %3 ]
  tail call void @consume_skb(ptr noundef %72) #8
  tail call void @kfree(ptr noundef %1) #8
  tail call void @digital_poll_next_tech(ptr noundef %0) #8
  br label %73

73:                                               ; preds = %71, %69
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_in_recv_sel_res(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %52, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = tail call i32 @digital_skb_check_crc(ptr noundef %2, ptr noundef nonnull @crc_ccitt, i16 noundef zeroext 25443, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.digital_in_recv_sel_res, i32 noundef 289, ptr noundef nonnull @.str.8) #7
  br label %52

15:                                               ; preds = %10, %5
  %16 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %52

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = tail call fastcc i32 @digital_in_send_sdd_req(ptr noundef %0, ptr noundef %1)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %51, label %52

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.nfc_target, ptr %1, i32 0, i32 3
  store i8 %22, ptr %30, align 2
  %31 = and i32 %23, 96
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %29
  %34 = and i32 %23, 64
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = and i32 %23, 32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %36
  %40 = tail call ptr @digital_skb_alloc(ptr noundef %0, i32 noundef 2) #8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %39
  %43 = tail call ptr @skb_put(ptr noundef nonnull %40, i32 noundef 1) #8
  store i8 -32, ptr %43, align 1
  %44 = tail call ptr @skb_put(ptr noundef nonnull %40, i32 noundef 1) #8
  store i8 -128, ptr %44, align 1
  %45 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %40, ptr noundef null, i16 noundef zeroext 30, ptr noundef nonnull @digital_in_recv_ats, ptr noundef %1) #8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  tail call void @kfree_skb_reason(ptr noundef nonnull %40, i32 noundef 0) #8
  br label %52

48:                                               ; preds = %33, %29
  %49 = phi i8 [ 2, %29 ], [ 5, %33 ]
  %50 = tail call i32 @digital_target_found(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %49) #8
  br label %52

51:                                               ; preds = %42, %26
  tail call void @consume_skb(ptr noundef %2) #8
  br label %57

52:                                               ; preds = %48, %47, %39, %36, %26, %15, %13, %3
  %53 = phi i32 [ %27, %26 ], [ %50, %48 ], [ -5, %13 ], [ -5, %15 ], [ -5, %36 ], [ -5, %47 ], [ -5, %39 ], [ -5, %3 ]
  %54 = phi ptr [ %2, %26 ], [ %2, %48 ], [ %2, %13 ], [ %2, %15 ], [ %2, %36 ], [ %2, %47 ], [ %2, %39 ], [ null, %3 ]
  tail call void @kfree(ptr noundef %1) #8
  tail call void @consume_skb(ptr noundef %54) #8
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void @digital_poll_next_tech(ptr noundef %0) #8
  br label %57

57:                                               ; preds = %56, %52, %51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @digital_skb_add_crc(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_ccitt(i16 noundef zeroext, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_in_recv_ats(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %27, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %27, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 15
  %15 = icmp ugt i8 %14, 7
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = zext i8 %14 to i32
  %18 = getelementptr [8 x i8], ptr @digital_ats_fsc, i32 0, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i16
  br label %21

21:                                               ; preds = %16, %9
  %22 = phi i16 [ %20, %16 ], [ 256, %9 ]
  %23 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 28
  store i16 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 18
  store i8 0, ptr %24, align 2
  %25 = tail call i32 @digital_target_found(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 4) #8
  %26 = icmp eq i32 %25, 0
  tail call void @consume_skb(ptr noundef %2) #8
  tail call void @kfree(ptr noundef %1) #8
  br i1 %26, label %30, label %29

27:                                               ; preds = %5, %3
  %28 = phi ptr [ %2, %5 ], [ null, %3 ]
  tail call void @consume_skb(ptr noundef %28) #8
  tail call void @kfree(ptr noundef %1) #8
  br label %29

29:                                               ; preds = %27, %21
  tail call void @digital_poll_next_tech(ptr noundef %0) #8
  br label %30

30:                                               ; preds = %29, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_skb_check_crc(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_in_recv_attrib_res(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %22, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.digital_in_recv_attrib_res, i32 noundef 589, ptr noundef nonnull @.str.13) #7
  br label %22

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 1
  %15 = and i8 %14, 15
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.digital_in_recv_attrib_res, i32 noundef 597, ptr noundef nonnull @.str.14) #7
  br label %22

19:                                               ; preds = %11
  %20 = tail call i32 @digital_target_found(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 6) #8
  %21 = icmp eq i32 %20, 0
  tail call void @consume_skb(ptr noundef %2) #8
  tail call void @kfree(ptr noundef %1) #8
  br i1 %21, label %25, label %24

22:                                               ; preds = %17, %9, %3
  %23 = phi ptr [ %2, %17 ], [ %2, %9 ], [ null, %3 ]
  tail call void @consume_skb(ptr noundef %23) #8
  tail call void @kfree(ptr noundef %1) #8
  br label %24

24:                                               ; preds = %22, %19
  tail call void @digital_poll_next_tech(ptr noundef %0) #8
  br label %25

25:                                               ; preds = %24, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_itu_t(i16 noundef zeroext, ptr noundef, i32 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_tg_configure_hw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_tg_recv_sdd_req(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %42, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %42, label %11

11:                                               ; preds = %5
  %12 = load i8, ptr %7, align 1
  %13 = icmp eq i8 %12, -109
  br i1 %13, label %14, label %42

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %7, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 32
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = tail call ptr @digital_skb_alloc(ptr noundef %0, i32 noundef 5) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %42, label %21

21:                                               ; preds = %18
  %22 = tail call ptr @skb_put(ptr noundef nonnull %19, i32 noundef 5) #8
  %23 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 17
  %24 = load ptr, ptr %23, align 4
  store i8 8, ptr %24, align 1
  %25 = getelementptr i8, ptr %24, i32 1
  tail call void @get_random_bytes(ptr noundef %25, i32 noundef 3) #8
  %26 = getelementptr inbounds %struct.digital_sdd_res, ptr %24, i32 0, i32 1
  %27 = load i8, ptr %24, align 1
  %28 = load i8, ptr %25, align 1
  %29 = xor i8 %28, %27
  %30 = getelementptr [4 x i8], ptr %24, i32 0, i32 2
  %31 = load i8, ptr %30, align 1
  %32 = xor i8 %29, %31
  %33 = getelementptr [4 x i8], ptr %24, i32 0, i32 3
  %34 = load i8, ptr %33, align 1
  %35 = xor i8 %32, %34
  store i8 %35, ptr %26, align 1
  %36 = tail call i32 @digital_tg_configure_hw(ptr noundef %0, i32 noundef 1, i32 noundef 2) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %21
  %39 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 1, ptr noundef nonnull %19, ptr noundef null, i16 noundef zeroext 300, ptr noundef nonnull @digital_tg_recv_sel_req, ptr noundef null) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38, %21
  tail call void @kfree_skb_reason(ptr noundef nonnull %19, i32 noundef 0) #8
  br label %42

42:                                               ; preds = %41, %18, %14, %11, %5, %3
  %43 = phi ptr [ %2, %14 ], [ %2, %11 ], [ %2, %5 ], [ %2, %18 ], [ %2, %41 ], [ null, %3 ]
  tail call void @digital_poll_next_tech(ptr noundef %0) #8
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi ptr [ %43, %42 ], [ %2, %38 ]
  tail call void @consume_skb(ptr noundef %45) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_tg_recv_sel_req(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %31, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = tail call i32 @digital_skb_check_crc(ptr noundef %2, ptr noundef nonnull @crc_ccitt, i16 noundef zeroext 25443, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.digital_tg_recv_sel_req, i32 noundef 970, ptr noundef nonnull @.str.8) #7
  br label %31

15:                                               ; preds = %10, %5
  %16 = tail call ptr @digital_skb_alloc(ptr noundef %0, i32 noundef 1) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %15
  %19 = tail call ptr @skb_put(ptr noundef nonnull %16, i32 noundef 1) #8
  store i8 64, ptr %19, align 1
  %20 = load i32, ptr %6, align 4
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call void @digital_skb_add_crc(ptr noundef nonnull %16, ptr noundef nonnull @crc_ccitt, i16 noundef zeroext 25443, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  br label %24

24:                                               ; preds = %23, %18
  %25 = tail call i32 @digital_tg_configure_hw(ptr noundef %0, i32 noundef 1, i32 noundef 3) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 1, ptr noundef nonnull %16, ptr noundef null, i16 noundef zeroext 300, ptr noundef nonnull @digital_tg_recv_atr_req, ptr noundef null) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27, %24
  tail call void @kfree_skb_reason(ptr noundef nonnull %16, i32 noundef 0) #8
  br label %31

31:                                               ; preds = %30, %15, %13, %3
  %32 = phi ptr [ %2, %13 ], [ %2, %15 ], [ %2, %30 ], [ null, %3 ]
  tail call void @digital_poll_next_tech(ptr noundef %0) #8
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi ptr [ %32, %31 ], [ %2, %27 ]
  tail call void @consume_skb(ptr noundef %34) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @digital_tg_recv_atr_req(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_tg_recv_atr_or_sensf_req(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  tail call void @digital_tg_recv_sensf_req(ptr noundef %0, ptr undef, ptr noundef %2)
  br label %17

16:                                               ; preds = %9, %5, %3
  tail call void @digital_tg_recv_atr_req(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8
  br label %17

17:                                               ; preds = %16, %15
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }

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
