; ModuleID = '/llk/IR/net/nfc/digital_dep.c_pt.bc'
source_filename = "../net/nfc/digital_dep.c"
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
%struct.digital_atr_req = type { i8, i8, [10 x i8], i8, i8, i8, i8, [0 x i8] }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
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
%struct.digital_atr_res = type { i8, i8, [10 x i8], i8, i8, i8, i8, i8, [0 x i8] }
%struct.digital_dep_req_res = type { i8, i8, i8 }
%struct.digital_data_exch = type { ptr, ptr }
%struct.digital_psl_req = type { i8, i8, i8, i8, i8 }
%struct.digital_psl_res = type { i8, i8, i8 }

@.str = private unnamed_addr constant [51 x i8] c"\013digital: %s: %d: NFC Digital Protocol error: %s\0A\00", align 1
@__func__.digital_in_send_atr_req = private unnamed_addr constant [24 x i8] c"digital_in_send_atr_req\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"14.6.1.1\00", align 1
@__func__.digital_tg_recv_atr_req = private unnamed_addr constant [24 x i8] c"digital_tg_recv_atr_req\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"14.4.1.6\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"14.4.1.2\00", align 1
@digital_payload_bits_map = internal unnamed_addr constant [4 x i8] c"@\80\C0\FE", align 1
@__func__.digital_in_recv_atr_res = private unnamed_addr constant [24 x i8] c"digital_in_recv_atr_res\00", align 1
@digital_rwt_map = internal unnamed_addr constant [15 x i16] [i16 100, i16 101, i16 101, i16 102, i16 105, i16 110, i16 119, i16 139, i16 177, i16 255, i16 409, i16 719, i16 1337, i16 2575, i16 5049], align 2
@__func__.digital_in_recv_psl_res = private unnamed_addr constant [24 x i8] c"digital_in_recv_psl_res\00", align 1
@__func__.digital_in_recv_dep_res = private unnamed_addr constant [24 x i8] c"digital_in_recv_dep_res\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"14.8.2.1\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"14.12.3.3\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"14.12.4.5\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"14.12.4.3\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"14.12.4.4\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"14.8.4.1\00", align 1
@__func__.digital_tg_recv_dep_req = private unnamed_addr constant [24 x i8] c"digital_tg_recv_dep_req\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"14.12.3.4\00", align 1
@__func__.digital_tg_recv_psl_req = private unnamed_addr constant [24 x i8] c"digital_tg_recv_psl_req\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"\013digital: %s: Unsupported dsi value %d\0A\00", align 1
@switch.table.digital_tg_send_psl_res_complete = private unnamed_addr constant [3 x ptr] [ptr @digital_skb_add_crc_a, ptr @digital_skb_add_crc_f, ptr @digital_skb_add_crc_f], align 4
@switch.table.digital_tg_send_psl_res_complete.12 = private unnamed_addr constant [3 x ptr] [ptr @digital_skb_check_crc_a, ptr @digital_skb_check_crc_f, ptr @digital_skb_check_crc_f], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @digital_in_send_atr_req(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = add i32 %4, 16
  %7 = icmp ugt i32 %6, 64
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.digital_in_send_atr_req, i32 noundef 484, ptr noundef nonnull @.str.1) #9
  br label %53

10:                                               ; preds = %5
  %11 = tail call ptr @digital_skb_alloc(ptr noundef %0, i32 noundef %6) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %53, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @skb_put(ptr noundef nonnull %11, i32 noundef 16) #10
  %15 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds i8, ptr %16, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(16) %17, i8 0, i32 14, i1 false)
  store i8 -44, ptr %16, align 1
  %18 = getelementptr inbounds %struct.digital_atr_req, ptr %16, i32 0, i32 1
  store i8 0, ptr %18, align 1
  %19 = getelementptr inbounds %struct.nfc_target, ptr %1, i32 0, i32 6
  %20 = load i8, ptr %19, align 2
  %21 = icmp eq i8 %20, 0
  %22 = getelementptr inbounds %struct.digital_atr_req, ptr %16, i32 0, i32 2
  br i1 %21, label %26, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.nfc_target, ptr %1, i32 0, i32 7
  %25 = load i64, ptr %24, align 1
  store i64 %25, ptr %22, align 1
  br label %27

26:                                               ; preds = %13
  tail call void @get_random_bytes(ptr noundef %22, i32 noundef 10) #10
  br label %27

27:                                               ; preds = %26, %23
  %28 = getelementptr inbounds %struct.digital_atr_req, ptr %16, i32 0, i32 3
  store i8 0, ptr %28, align 1
  %29 = getelementptr inbounds %struct.digital_atr_req, ptr %16, i32 0, i32 4
  store i8 0, ptr %29, align 1
  %30 = getelementptr inbounds %struct.digital_atr_req, ptr %16, i32 0, i32 5
  store i8 0, ptr %30, align 1
  %31 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 21
  store i8 -2, ptr %31, align 2
  %32 = getelementptr inbounds %struct.digital_atr_req, ptr %16, i32 0, i32 6
  store i8 48, ptr %32, align 1
  %33 = icmp eq i32 %4, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  store i8 50, ptr %32, align 1
  %35 = tail call ptr @skb_put(ptr noundef nonnull %11, i32 noundef %4) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %35, ptr align 1 %3, i32 %4, i1 false) #10
  br label %36

36:                                               ; preds = %34, %27
  %37 = tail call ptr @skb_push(ptr noundef nonnull %11, i32 noundef 1) #10
  %38 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 5
  %39 = load i32, ptr %38, align 8
  %40 = trunc i32 %39 to i8
  %41 = load ptr, ptr %15, align 4
  store i8 %40, ptr %41, align 1
  %42 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 17
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = tail call ptr @skb_push(ptr noundef nonnull %11, i32 noundef 1) #10
  store i8 -16, ptr %46, align 1
  br label %47

47:                                               ; preds = %45, %36
  %48 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 30
  %49 = load ptr, ptr %48, align 4
  tail call void %49(ptr noundef nonnull %11) #10
  %50 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %11, ptr noundef null, i16 noundef zeroext 1337, ptr noundef nonnull @digital_in_recv_atr_res, ptr noundef %1) #10
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  tail call void @kfree_skb_reason(ptr noundef nonnull %11, i32 noundef 0) #10
  br label %53

53:                                               ; preds = %52, %47, %10, %8
  %54 = phi i32 [ -22, %8 ], [ -12, %10 ], [ %50, %52 ], [ 0, %47 ]
  ret i32 %54
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @digital_skb_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_in_recv_atr_res(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %79, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 29
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %2) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.digital_in_recv_atr_res, i32 noundef 416, ptr noundef nonnull @.str.2) #9
  br label %79

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 17
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = tail call ptr @skb_pull(ptr noundef %2, i32 noundef 1) #10
  %22 = load i32, ptr %13, align 8
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i32 [ %22, %20 ], [ %14, %16 ]
  %25 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %26 = load ptr, ptr %25, align 4
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %24, %28
  br i1 %29, label %32, label %30

30:                                               ; preds = %23, %12
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.digital_in_recv_atr_res, i32 noundef 422, ptr noundef nonnull @.str.3) #9
  br label %79

32:                                               ; preds = %23
  %33 = tail call ptr @skb_pull(ptr noundef %2, i32 noundef 1) #10
  %34 = load i32, ptr %13, align 8
  %35 = icmp ult i32 %34, 17
  br i1 %35, label %79, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %25, align 4
  %38 = getelementptr inbounds %struct.digital_atr_res, ptr %37, i32 0, i32 6
  %39 = load i8, ptr %38, align 1
  %40 = and i8 %39, 15
  %41 = icmp eq i8 %40, 15
  %42 = select i1 %41, i8 14, i8 %40
  %43 = zext i8 %42 to i32
  %44 = getelementptr [15 x i16], ptr @digital_rwt_map, i32 0, i32 %43
  %45 = load i16, ptr %44, align 2
  %46 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 20
  store i16 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.digital_atr_res, ptr %37, i32 0, i32 7
  %48 = load i8, ptr %47, align 1
  %49 = lshr i8 %48, 4
  %50 = and i8 %49, 3
  %51 = zext i8 %50 to i32
  %52 = getelementptr [4 x i8], ptr @digital_payload_bits_map, i32 0, i32 %51
  %53 = load i8, ptr %52, align 1
  %54 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 22
  store i8 %53, ptr %54, align 1
  %55 = trunc i32 %34 to i8
  %56 = add i8 %55, -17
  %57 = load ptr, ptr %0, align 4
  %58 = getelementptr inbounds %struct.digital_atr_res, ptr %37, i32 0, i32 8
  %59 = tail call i32 @nfc_set_remote_general_bytes(ptr noundef %57, ptr noundef %58, i8 noundef zeroext %56) #10
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %36
  %62 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %61
  %67 = load i8, ptr %17, align 1
  %68 = icmp eq i8 %67, 2
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = tail call fastcc i32 @digital_in_send_psl_req(ptr noundef %0, ptr noundef %1)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  tail call void @consume_skb(ptr noundef %2) #10
  br label %83

73:                                               ; preds = %69, %66, %61
  %74 = load ptr, ptr %0, align 4
  %75 = load i32, ptr %1, align 4
  %76 = tail call i32 @nfc_dep_link_is_up(ptr noundef %74, i32 noundef %75, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %77 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 18
  store i8 0, ptr %77, align 2
  %78 = icmp eq i32 %76, 0
  tail call void @consume_skb(ptr noundef %2) #10
  br i1 %78, label %83, label %81

79:                                               ; preds = %36, %32, %30, %10, %3
  %80 = phi ptr [ %2, %10 ], [ %2, %30 ], [ %2, %36 ], [ %2, %32 ], [ null, %3 ]
  tail call void @consume_skb(ptr noundef %80) #10
  br label %81

81:                                               ; preds = %79, %73
  %82 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 16
  store i8 0, ptr %82, align 4
  br label %83

83:                                               ; preds = %81, %73, %72
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @digital_in_send_dep_req(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @skb_push(ptr noundef %2, i32 noundef 3) #10
  %6 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  store i8 -44, ptr %7, align 1
  %8 = getelementptr inbounds %struct.digital_dep_req_res, ptr %7, i32 0, i32 1
  store i8 6, ptr %8, align 1
  %9 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 18
  %10 = load i8, ptr %9, align 2
  %11 = getelementptr inbounds %struct.digital_dep_req_res, ptr %7, i32 0, i32 2
  store i8 %10, ptr %11, align 1
  %12 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 25
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 26
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 23
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 22
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ugt i32 %17, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %4
  %23 = load i8, ptr %11, align 1
  %24 = or i8 %23, 16
  store i8 %24, ptr %11, align 1
  %25 = load i8, ptr %18, align 1
  %26 = zext i8 %25 to i32
  %27 = tail call ptr @digital_skb_alloc(ptr noundef %0, i32 noundef %26) #10
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load ptr, ptr %14, align 4
  tail call void @kfree_skb_reason(ptr noundef %30, i32 noundef 0) #10
  store ptr null, ptr %14, align 4
  br label %44

31:                                               ; preds = %22
  %32 = load ptr, ptr %6, align 4
  %33 = load i8, ptr %18, align 1
  %34 = zext i8 %33 to i32
  %35 = tail call ptr @skb_put(ptr noundef nonnull %27, i32 noundef %34) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %35, ptr align 1 %32, i32 %34, i1 false) #10
  %36 = load i8, ptr %18, align 1
  %37 = zext i8 %36 to i32
  %38 = tail call ptr @skb_pull(ptr noundef %2, i32 noundef %37) #10
  store ptr %2, ptr %14, align 4
  %39 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 24
  store ptr %3, ptr %39, align 4
  br label %41

40:                                               ; preds = %4
  store ptr null, ptr %14, align 4
  br label %41

41:                                               ; preds = %40, %31
  %42 = phi ptr [ %27, %31 ], [ %2, %40 ]
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %29
  %45 = phi ptr [ inttoptr (i32 -12 to ptr), %29 ], [ %42, %41 ]
  %46 = ptrtoint ptr %45 to i32
  br label %79

47:                                               ; preds = %41
  %48 = tail call ptr @skb_push(ptr noundef %42, i32 noundef 1) #10
  %49 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 5
  %50 = load i32, ptr %49, align 8
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 17
  %53 = load ptr, ptr %52, align 4
  store i8 %51, ptr %53, align 1
  %54 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 17
  %55 = load i8, ptr %54, align 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = tail call ptr @skb_push(ptr noundef %42, i32 noundef 1) #10
  store i8 -16, ptr %58, align 1
  br label %59

59:                                               ; preds = %57, %47
  %60 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 30
  %61 = load ptr, ptr %60, align 4
  tail call void %61(ptr noundef %42) #10
  %62 = load ptr, ptr %52, align 4
  %63 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 16
  %64 = load ptr, ptr %63, align 8
  %65 = ptrtoint ptr %62 to i32
  %66 = ptrtoint ptr %64 to i32
  %67 = sub i32 %65, %66
  %68 = tail call ptr @__pskb_copy_fclone(ptr noundef %42, i32 noundef %67, i32 noundef 3264, i1 noundef zeroext false) #10
  %69 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 27
  store ptr %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 20
  %71 = load i16, ptr %70, align 4
  %72 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 0, ptr noundef %42, ptr noundef null, i16 noundef zeroext %71, ptr noundef nonnull @digital_in_recv_dep_res, ptr noundef %3) #10
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %59
  %75 = icmp eq ptr %42, %2
  br i1 %75, label %77, label %76

76:                                               ; preds = %74
  tail call void @kfree_skb_reason(ptr noundef %42, i32 noundef 0) #10
  br label %77

77:                                               ; preds = %76, %74
  tail call void @kfree_skb_reason(ptr noundef %15, i32 noundef 0) #10
  store ptr null, ptr %14, align 4
  %78 = load ptr, ptr %69, align 4
  tail call void @kfree_skb_reason(ptr noundef %78, i32 noundef 0) #10
  store ptr null, ptr %69, align 4
  br label %79

79:                                               ; preds = %77, %59, %44
  %80 = phi i32 [ %46, %44 ], [ %72, %77 ], [ 0, %59 ]
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_in_recv_dep_res(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %57

5:                                                ; preds = %3
  %6 = ptrtoint ptr %2 to i32
  switch i32 %6, label %201 [
    i32 -5, label %14
    i32 -110, label %7
  ]

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 26
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %7
  %12 = add i32 %9, 1
  store i32 %12, ptr %8, align 4
  %13 = icmp slt i32 %9, 2
  br i1 %13, label %19, label %23

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 26
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4
  %18 = icmp slt i32 %16, 2
  br i1 %18, label %19, label %201

19:                                               ; preds = %14, %11
  %20 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 25
  store i32 0, ptr %20, align 4
  %21 = tail call fastcc i32 @digital_in_send_nack(ptr noundef %0, ptr noundef %1)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %217, label %207

23:                                               ; preds = %11
  %24 = icmp eq ptr %2, inttoptr (i32 -110 to ptr)
  br i1 %24, label %25, label %201

25:                                               ; preds = %23, %7
  %26 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 25
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 4
  %29 = icmp slt i32 %27, 2
  br i1 %29, label %30, label %201

30:                                               ; preds = %25
  store i32 0, ptr %8, align 4
  %31 = tail call ptr @digital_skb_alloc(ptr noundef %0, i32 noundef 1) #10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %207, label %33

33:                                               ; preds = %30
  %34 = tail call ptr @skb_push(ptr noundef nonnull %31, i32 noundef 3) #10
  %35 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 17
  %36 = load ptr, ptr %35, align 4
  store i8 -44, ptr %36, align 1
  %37 = getelementptr inbounds %struct.digital_dep_req_res, ptr %36, i32 0, i32 1
  store i8 6, ptr %37, align 1
  %38 = getelementptr inbounds %struct.digital_dep_req_res, ptr %36, i32 0, i32 2
  store i8 -128, ptr %38, align 1
  %39 = tail call ptr @skb_push(ptr noundef nonnull %31, i32 noundef 1) #10
  %40 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 5
  %41 = load i32, ptr %40, align 8
  %42 = trunc i32 %41 to i8
  %43 = load ptr, ptr %35, align 4
  store i8 %42, ptr %43, align 1
  %44 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 17
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = tail call ptr @skb_push(ptr noundef nonnull %31, i32 noundef 1) #10
  store i8 -16, ptr %48, align 1
  br label %49

49:                                               ; preds = %47, %33
  %50 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 30
  %51 = load ptr, ptr %50, align 4
  tail call void %51(ptr noundef nonnull %31) #10
  %52 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 20
  %53 = load i16, ptr %52, align 4
  %54 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %31, ptr noundef null, i16 noundef zeroext %53, ptr noundef nonnull @digital_in_recv_dep_res, ptr noundef %1) #10
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %217, label %56

56:                                               ; preds = %49
  tail call void @kfree_skb_reason(ptr noundef nonnull %31, i32 noundef 0) #10
  br label %207

57:                                               ; preds = %3
  %58 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %59 = load i32, ptr %58, align 8
  %60 = icmp ult i32 %59, 2
  br i1 %60, label %75, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 17
  %63 = load i8, ptr %62, align 1
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = tail call ptr @skb_pull(ptr noundef %2, i32 noundef 1) #10
  %67 = load i32, ptr %58, align 8
  br label %68

68:                                               ; preds = %65, %61
  %69 = phi i32 [ %67, %65 ], [ %59, %61 ]
  %70 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %71 = load ptr, ptr %70, align 4
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %69, %73
  br i1 %74, label %77, label %75

75:                                               ; preds = %68, %57
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.digital_in_recv_dep_res, i32 noundef 725, ptr noundef nonnull @.str.3) #9
  br label %201

77:                                               ; preds = %68
  %78 = tail call ptr @skb_pull(ptr noundef %2, i32 noundef 1) #10
  %79 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 29
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 %80(ptr noundef %2) #10
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %98, label %83

83:                                               ; preds = %77
  %84 = load i32, ptr %58, align 8
  %85 = icmp ugt i32 %84, 3
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 26
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %88, 1
  store i32 %89, ptr %87, align 4
  %90 = icmp slt i32 %88, 2
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 25
  store i32 0, ptr %92, align 4
  %93 = tail call fastcc i32 @digital_in_send_nack(ptr noundef %0, ptr noundef %1)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %207

95:                                               ; preds = %91
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #10
  br label %217

96:                                               ; preds = %86, %83
  %97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.digital_in_recv_dep_res, i32 noundef 744, ptr noundef nonnull @.str.2) #9
  br label %207

98:                                               ; preds = %77
  %99 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 25
  store i32 0, ptr %99, align 4
  %100 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 26
  store i32 0, ptr %100, align 4
  %101 = load i32, ptr %58, align 8
  %102 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 21
  %103 = load i8, ptr %102, align 2
  %104 = zext i8 %103 to i32
  %105 = icmp ugt i32 %101, %104
  br i1 %105, label %201, label %106

106:                                              ; preds = %98
  %107 = load ptr, ptr %70, align 4
  %108 = icmp ult i32 %101, 3
  br i1 %108, label %207, label %109

109:                                              ; preds = %106
  %110 = load i8, ptr %107, align 1
  %111 = icmp eq i8 %110, -43
  br i1 %111, label %112, label %207

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.digital_dep_req_res, ptr %107, i32 0, i32 1
  %114 = load i8, ptr %113, align 1
  %115 = icmp eq i8 %114, 7
  br i1 %115, label %116, label %207

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.digital_dep_req_res, ptr %107, i32 0, i32 2
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = and i32 %119, 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %116
  %123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.digital_in_recv_dep_res, i32 noundef 768, ptr noundef nonnull @.str.4) #9
  br label %207

124:                                              ; preds = %116
  %125 = and i32 %119, 8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %201

127:                                              ; preds = %124
  %128 = tail call ptr @skb_pull(ptr noundef %2, i32 noundef 3) #10
  %129 = and i8 %118, -32
  switch i8 %129, label %201 [
    i8 0, label %130
    i8 64, label %147
    i8 -128, label %176
  ]

130:                                              ; preds = %127
  %131 = and i32 %119, 3
  %132 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 18
  %133 = load i8, ptr %132, align 2
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %131, %134
  br i1 %135, label %138, label %136

136:                                              ; preds = %130
  %137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.digital_in_recv_dep_res, i32 noundef 788, ptr noundef nonnull @.str.5) #9
  br label %207

138:                                              ; preds = %130
  %139 = add i8 %133, 1
  %140 = and i8 %139, 3
  store i8 %140, ptr %132, align 2
  %141 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 27
  %142 = load ptr, ptr %141, align 4
  tail call void @kfree_skb_reason(ptr noundef %142, i32 noundef 0) #10
  store ptr null, ptr %141, align 4
  %143 = tail call fastcc ptr @digital_recv_dep_data_gather(ptr noundef %0, i8 noundef zeroext %118, ptr noundef %2, ptr noundef nonnull @digital_in_send_ack, ptr noundef %1)
  %144 = icmp ugt ptr %143, inttoptr (i32 -4096 to ptr)
  br i1 %144, label %207, label %145

145:                                              ; preds = %138
  %146 = icmp eq ptr %143, null
  br i1 %146, label %217, label %201

147:                                              ; preds = %127
  %148 = and i32 %119, 16
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %147
  %151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.digital_in_recv_dep_res, i32 noundef 820, ptr noundef nonnull @.str.6) #9
  br label %201

152:                                              ; preds = %147
  %153 = and i32 %119, 3
  %154 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 18
  %155 = load i8, ptr %154, align 2
  %156 = zext i8 %155 to i32
  %157 = icmp eq i32 %153, %156
  br i1 %157, label %160, label %158

158:                                              ; preds = %152
  %159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.digital_in_recv_dep_res, i32 noundef 826, ptr noundef nonnull @.str.5) #9
  br label %201

160:                                              ; preds = %152
  %161 = add i8 %155, 1
  %162 = and i8 %161, 3
  store i8 %162, ptr %154, align 2
  %163 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 23
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.digital_in_recv_dep_res, i32 noundef 835, ptr noundef nonnull @.str.7) #9
  br label %201

168:                                              ; preds = %160
  %169 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 27
  %170 = load ptr, ptr %169, align 4
  tail call void @kfree_skb_reason(ptr noundef %170, i32 noundef 0) #10
  store ptr null, ptr %169, align 4
  %171 = load ptr, ptr %163, align 4
  %172 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 24
  %173 = load ptr, ptr %172, align 4
  %174 = tail call i32 @digital_in_send_dep_req(ptr noundef %0, ptr undef, ptr noundef %171, ptr noundef %173)
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %216, label %207

176:                                              ; preds = %127
  %177 = and i32 %119, 16
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = tail call fastcc i32 @digital_in_send_saved_skb(ptr noundef %0, ptr noundef %1)
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %216, label %207

182:                                              ; preds = %176
  %183 = load i32, ptr %99, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load i32, ptr %100, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %185, %182
  %189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.digital_in_recv_dep_res, i32 noundef 864, ptr noundef nonnull @.str.8) #9
  br label %207

190:                                              ; preds = %185
  %191 = load ptr, ptr %70, align 4
  %192 = load i8, ptr %191, align 1
  %193 = and i8 %192, 63
  %194 = add nsw i8 %193, -60
  %195 = icmp ult i8 %194, -59
  br i1 %195, label %196, label %198

196:                                              ; preds = %190
  %197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.digital_in_recv_dep_res, i32 noundef 871, ptr noundef nonnull @.str.9) #9
  br label %207

198:                                              ; preds = %190
  %199 = tail call fastcc i32 @digital_in_send_rtox(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %193)
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %216, label %207

201:                                              ; preds = %166, %158, %150, %145, %127, %124, %98, %75, %25, %23, %14, %5
  %202 = phi i32 [ -110, %25 ], [ -110, %23 ], [ -5, %75 ], [ 0, %127 ], [ -5, %150 ], [ -5, %158 ], [ -5, %166 ], [ %6, %5 ], [ -90, %98 ], [ -5, %124 ], [ 0, %145 ], [ -5, %14 ]
  %203 = phi ptr [ null, %25 ], [ null, %23 ], [ %2, %75 ], [ %2, %127 ], [ %2, %150 ], [ %2, %158 ], [ %2, %166 ], [ null, %5 ], [ %2, %98 ], [ %2, %124 ], [ %143, %145 ], [ null, %14 ]
  %204 = load ptr, ptr %1, align 4
  %205 = getelementptr inbounds %struct.digital_data_exch, ptr %1, i32 0, i32 1
  %206 = load ptr, ptr %205, align 4
  tail call void %204(ptr noundef %206, ptr noundef %203, i32 noundef %202) #10
  br label %207

207:                                              ; preds = %201, %198, %196, %188, %179, %168, %138, %136, %122, %112, %109, %106, %96, %91, %56, %30, %19
  %208 = phi i32 [ %21, %19 ], [ %202, %201 ], [ %93, %91 ], [ -5, %96 ], [ -5, %122 ], [ -5, %188 ], [ -5, %196 ], [ %199, %198 ], [ %180, %179 ], [ %174, %168 ], [ -5, %136 ], [ -5, %112 ], [ -5, %109 ], [ -5, %106 ], [ -5, %56 ], [ -5, %30 ], [ -5, %138 ]
  %209 = phi ptr [ null, %19 ], [ %203, %201 ], [ %2, %91 ], [ %2, %96 ], [ %2, %122 ], [ %2, %188 ], [ %2, %196 ], [ %2, %198 ], [ %2, %179 ], [ %2, %168 ], [ %2, %136 ], [ %2, %112 ], [ %2, %109 ], [ %2, %106 ], [ null, %56 ], [ null, %30 ], [ null, %138 ]
  tail call void @kfree(ptr noundef %1) #10
  %210 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 23
  %211 = load ptr, ptr %210, align 4
  tail call void @kfree_skb_reason(ptr noundef %211, i32 noundef 0) #10
  store ptr null, ptr %210, align 4
  %212 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 27
  %213 = load ptr, ptr %212, align 4
  tail call void @kfree_skb_reason(ptr noundef %213, i32 noundef 0) #10
  store ptr null, ptr %212, align 4
  %214 = icmp eq i32 %208, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %207
  tail call void @kfree_skb_reason(ptr noundef %209, i32 noundef 0) #10
  br label %217

216:                                              ; preds = %198, %179, %168
  tail call void @consume_skb(ptr noundef %2) #10
  br label %217

217:                                              ; preds = %216, %215, %207, %145, %95, %49, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @digital_tg_send_dep_res(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @skb_push(ptr noundef %1, i32 noundef 3) #10
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  store i8 -43, ptr %5, align 1
  %6 = getelementptr inbounds %struct.digital_dep_req_res, ptr %5, i32 0, i32 1
  store i8 7, ptr %6, align 1
  %7 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 18
  %8 = load i8, ptr %7, align 2
  %9 = getelementptr inbounds %struct.digital_dep_req_res, ptr %5, i32 0, i32 2
  store i8 %8, ptr %9, align 1
  %10 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 19
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = or i8 %8, 4
  store i8 %14, ptr %9, align 1
  %15 = tail call ptr @skb_put(ptr noundef %1, i32 noundef 1) #10
  %16 = load i8, ptr %10, align 1
  store i8 %16, ptr %15, align 1
  br label %17

17:                                               ; preds = %13, %2
  %18 = load i8, ptr %7, align 2
  %19 = add i8 %18, 1
  %20 = and i8 %19, 3
  store i8 %20, ptr %7, align 2
  %21 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 23
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 22
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ugt i32 %24, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %17
  %30 = load i8, ptr %9, align 1
  %31 = or i8 %30, 16
  store i8 %31, ptr %9, align 1
  %32 = load i8, ptr %25, align 1
  %33 = zext i8 %32 to i32
  %34 = tail call ptr @digital_skb_alloc(ptr noundef %0, i32 noundef %33) #10
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load ptr, ptr %21, align 4
  tail call void @kfree_skb_reason(ptr noundef %37, i32 noundef 0) #10
  store ptr null, ptr %21, align 4
  br label %51

38:                                               ; preds = %29
  %39 = load ptr, ptr %4, align 4
  %40 = load i8, ptr %25, align 1
  %41 = zext i8 %40 to i32
  %42 = tail call ptr @skb_put(ptr noundef nonnull %34, i32 noundef %41) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %42, ptr align 1 %39, i32 %41, i1 false) #10
  %43 = load i8, ptr %25, align 1
  %44 = zext i8 %43 to i32
  %45 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef %44) #10
  store ptr %1, ptr %21, align 4
  %46 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 24
  br label %47

47:                                               ; preds = %38, %17
  %48 = phi ptr [ %46, %38 ], [ %21, %17 ]
  %49 = phi ptr [ %34, %38 ], [ %1, %17 ]
  store ptr null, ptr %48, align 4
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %54

51:                                               ; preds = %47, %36
  %52 = phi ptr [ inttoptr (i32 -12 to ptr), %36 ], [ %49, %47 ]
  %53 = ptrtoint ptr %52 to i32
  br label %84

54:                                               ; preds = %47
  %55 = tail call ptr @skb_push(ptr noundef %49, i32 noundef 1) #10
  %56 = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 5
  %57 = load i32, ptr %56, align 8
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 17
  %60 = load ptr, ptr %59, align 4
  store i8 %58, ptr %60, align 1
  %61 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 17
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = tail call ptr @skb_push(ptr noundef %49, i32 noundef 1) #10
  store i8 -16, ptr %65, align 1
  br label %66

66:                                               ; preds = %64, %54
  %67 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 30
  %68 = load ptr, ptr %67, align 4
  tail call void %68(ptr noundef %49) #10
  %69 = load ptr, ptr %59, align 4
  %70 = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 16
  %71 = load ptr, ptr %70, align 8
  %72 = ptrtoint ptr %69 to i32
  %73 = ptrtoint ptr %71 to i32
  %74 = sub i32 %72, %73
  %75 = tail call ptr @__pskb_copy_fclone(ptr noundef %49, i32 noundef %74, i32 noundef 3264, i1 noundef zeroext false) #10
  %76 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 27
  store ptr %75, ptr %76, align 4
  %77 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 1, ptr noundef %49, ptr noundef null, i16 noundef zeroext 1500, ptr noundef nonnull @digital_tg_recv_dep_req, ptr noundef null) #10
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %66
  %80 = icmp eq ptr %49, %1
  br i1 %80, label %82, label %81

81:                                               ; preds = %79
  tail call void @kfree_skb_reason(ptr noundef %49, i32 noundef 0) #10
  br label %82

82:                                               ; preds = %81, %79
  tail call void @kfree_skb_reason(ptr noundef %22, i32 noundef 0) #10
  store ptr null, ptr %21, align 4
  %83 = load ptr, ptr %76, align 4
  tail call void @kfree_skb_reason(ptr noundef %83, i32 noundef 0) #10
  store ptr null, ptr %76, align 4
  br label %84

84:                                               ; preds = %82, %66, %51
  %85 = phi i32 [ %53, %51 ], [ %77, %82 ], [ 0, %66 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_tg_recv_dep_req(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %167, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 29
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %2) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.digital_tg_recv_dep_req, i32 noundef 1093, ptr noundef nonnull @.str.2) #9
  br label %167

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 17
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = tail call ptr @skb_pull(ptr noundef %2, i32 noundef 1) #10
  %22 = load i32, ptr %13, align 8
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i32 [ %22, %20 ], [ %14, %16 ]
  %25 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %26 = load ptr, ptr %25, align 4
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %24, %28
  br i1 %29, label %32, label %30

30:                                               ; preds = %23, %12
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.digital_tg_recv_dep_req, i32 noundef 1099, ptr noundef nonnull @.str.3) #9
  br label %167

32:                                               ; preds = %23
  %33 = tail call ptr @skb_pull(ptr noundef %2, i32 noundef 1) #10
  %34 = load i32, ptr %13, align 8
  %35 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 21
  %36 = load i8, ptr %35, align 2
  %37 = zext i8 %36 to i32
  %38 = icmp ugt i32 %34, %37
  br i1 %38, label %167, label %39

39:                                               ; preds = %32
  %40 = load ptr, ptr %25, align 4
  %41 = icmp ult i32 %34, 3
  br i1 %41, label %167, label %42

42:                                               ; preds = %39
  %43 = load i8, ptr %40, align 1
  %44 = icmp eq i8 %43, -44
  br i1 %44, label %45, label %167

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.digital_dep_req_res, ptr %40, i32 0, i32 1
  %47 = load i8, ptr %46, align 1
  %48 = icmp eq i8 %47, 6
  br i1 %48, label %49, label %167

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.digital_dep_req_res, ptr %40, i32 0, i32 2
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 4
  %54 = icmp eq i32 %53, 0
  %55 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 19
  %56 = load i8, ptr %55, align 1
  %57 = icmp eq i8 %56, 0
  br i1 %54, label %63, label %58

58:                                               ; preds = %49
  br i1 %57, label %167, label %59

59:                                               ; preds = %58
  %60 = getelementptr i8, ptr %40, i32 3
  %61 = load i8, ptr %60, align 1
  %62 = icmp eq i8 %56, %61
  br i1 %62, label %64, label %167

63:                                               ; preds = %49
  br i1 %57, label %64, label %167

64:                                               ; preds = %63, %59
  %65 = phi i32 [ 3, %63 ], [ 4, %59 ]
  %66 = and i32 %52, 8
  %67 = icmp ne i32 %66, 0
  %68 = icmp ugt i32 %65, %34
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %167, label %70

70:                                               ; preds = %64
  %71 = tail call ptr @skb_pull(ptr noundef %2, i32 noundef %65) #10
  %72 = and i8 %51, -32
  switch i8 %72, label %160 [
    i8 0, label %73
    i8 64, label %106
    i8 -128, label %150
  ]

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 25
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 18
  %79 = load i8, ptr %78, align 2
  %80 = and i32 %52, 3
  br label %92

81:                                               ; preds = %73
  store i32 0, ptr %74, align 4
  %82 = and i32 %52, 3
  %83 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 18
  %84 = load i8, ptr %83, align 2
  %85 = add i8 %84, 3
  %86 = and i8 %85, 3
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %82, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = tail call fastcc i32 @digital_tg_send_saved_skb(ptr noundef %0)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %177, label %167

92:                                               ; preds = %81, %77
  %93 = phi i32 [ %80, %77 ], [ %82, %81 ]
  %94 = phi i8 [ %79, %77 ], [ %84, %81 ]
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %99, label %97

97:                                               ; preds = %92
  %98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.digital_tg_recv_dep_req, i32 noundef 1176, ptr noundef nonnull @.str.10) #9
  br label %167

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 27
  %101 = load ptr, ptr %100, align 4
  tail call void @kfree_skb_reason(ptr noundef %101, i32 noundef 0) #10
  store ptr null, ptr %100, align 4
  %102 = tail call fastcc ptr @digital_recv_dep_data_gather(ptr noundef %0, i8 noundef zeroext %51, ptr noundef %2, ptr noundef nonnull @digital_tg_send_ack, ptr noundef null)
  %103 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %103, label %167, label %104

104:                                              ; preds = %99
  %105 = icmp eq ptr %102, null
  br i1 %105, label %178, label %160

106:                                              ; preds = %70
  %107 = and i32 %52, 16
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %120, label %109

109:                                              ; preds = %106
  %110 = add nuw nsw i32 %52, 1
  %111 = and i32 %110, 3
  %112 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 18
  %113 = load i8, ptr %112, align 2
  %114 = zext i8 %113 to i32
  %115 = icmp eq i32 %111, %114
  br i1 %115, label %116, label %167

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 25
  store i32 0, ptr %117, align 4
  %118 = tail call fastcc i32 @digital_tg_send_saved_skb(ptr noundef %0)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %177, label %167

120:                                              ; preds = %106
  %121 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 25
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %134, label %124

124:                                              ; preds = %120
  store i32 0, ptr %121, align 4
  %125 = add nuw nsw i32 %52, 1
  %126 = and i32 %125, 3
  %127 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 18
  %128 = load i8, ptr %127, align 2
  %129 = zext i8 %128 to i32
  %130 = icmp eq i32 %126, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = tail call fastcc i32 @digital_tg_send_saved_skb(ptr noundef %0)
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %177, label %167

134:                                              ; preds = %124, %120
  %135 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 23
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %167, label %138

138:                                              ; preds = %134
  %139 = and i32 %52, 3
  %140 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 18
  %141 = load i8, ptr %140, align 2
  %142 = zext i8 %141 to i32
  %143 = icmp eq i32 %139, %142
  br i1 %143, label %144, label %167

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 27
  %146 = load ptr, ptr %145, align 4
  tail call void @kfree_skb_reason(ptr noundef %146, i32 noundef 0) #10
  store ptr null, ptr %145, align 4
  %147 = load ptr, ptr %135, align 4
  %148 = tail call i32 @digital_tg_send_dep_res(ptr noundef %0, ptr noundef %147)
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %177, label %167

150:                                              ; preds = %70
  %151 = and i32 %52, 16
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %150
  %154 = tail call fastcc i32 @digital_tg_send_atn(ptr noundef %0)
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %167

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 25
  %158 = load i32, ptr %157, align 4
  %159 = add i32 %158, 1
  store i32 %159, ptr %157, align 4
  br label %177

160:                                              ; preds = %104, %70
  %161 = phi ptr [ %2, %70 ], [ %102, %104 ]
  %162 = load ptr, ptr %0, align 4
  %163 = tail call i32 @nfc_tm_data_received(ptr noundef %162, ptr noundef %161) #10
  %164 = icmp eq i32 %163, 0
  %165 = select i1 %164, i32 0, i32 -90
  %166 = select i1 %164, ptr %161, ptr null
  br label %167

167:                                              ; preds = %160, %153, %150, %144, %138, %134, %131, %116, %109, %99, %97, %89, %64, %63, %59, %58, %45, %42, %39, %32, %30, %10, %3
  %168 = phi i32 [ -90, %10 ], [ -90, %30 ], [ %154, %153 ], [ %118, %116 ], [ %132, %131 ], [ %148, %144 ], [ %90, %89 ], [ -90, %97 ], [ -90, %32 ], [ -90, %45 ], [ -90, %42 ], [ -90, %39 ], [ -90, %59 ], [ -90, %58 ], [ -90, %63 ], [ -90, %64 ], [ -90, %109 ], [ -90, %138 ], [ -90, %134 ], [ -90, %150 ], [ -90, %3 ], [ -90, %99 ], [ %165, %160 ]
  %169 = phi ptr [ %2, %10 ], [ %2, %30 ], [ %2, %153 ], [ %2, %116 ], [ %2, %131 ], [ %2, %144 ], [ %2, %89 ], [ %2, %97 ], [ %2, %32 ], [ %2, %45 ], [ %2, %42 ], [ %2, %39 ], [ %2, %59 ], [ %2, %58 ], [ %2, %63 ], [ %2, %64 ], [ %2, %109 ], [ %2, %138 ], [ %2, %134 ], [ %2, %150 ], [ null, %3 ], [ null, %99 ], [ %166, %160 ]
  %170 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 23
  %171 = load ptr, ptr %170, align 4
  tail call void @kfree_skb_reason(ptr noundef %171, i32 noundef 0) #10
  store ptr null, ptr %170, align 4
  %172 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 25
  store i32 0, ptr %172, align 4
  %173 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 27
  %174 = load ptr, ptr %173, align 4
  tail call void @kfree_skb_reason(ptr noundef %174, i32 noundef 0) #10
  store ptr null, ptr %173, align 4
  %175 = icmp eq i32 %168, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %167
  tail call void @kfree_skb_reason(ptr noundef %169, i32 noundef 0) #10
  br label %178

177:                                              ; preds = %156, %144, %131, %116, %89
  tail call void @consume_skb(ptr noundef %2) #10
  br label %178

178:                                              ; preds = %177, %176, %167, %104
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @digital_tg_recv_atr_req(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %99, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %99, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, -16
  %14 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 17
  br i1 %13, label %15, label %23

15:                                               ; preds = %9
  store i8 0, ptr %14, align 1
  %16 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 30
  store ptr @digital_skb_add_crc_none, ptr %16, align 4
  %17 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 29
  store ptr @digital_skb_check_crc_none, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  store ptr @digital_skb_add_crc_a, ptr %16, align 4
  store ptr @digital_skb_check_crc_a, ptr %17, align 4
  br label %31

23:                                               ; preds = %9
  store i8 1, ptr %14, align 1
  %24 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 30
  store ptr @digital_skb_add_crc_none, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 29
  store ptr @digital_skb_check_crc_none, ptr %25, align 4
  %26 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store ptr @digital_skb_add_crc_f, ptr %24, align 4
  store ptr @digital_skb_check_crc_f, ptr %25, align 4
  br label %31

31:                                               ; preds = %30, %23, %22, %15
  %32 = phi ptr [ @digital_skb_check_crc_none, %15 ], [ @digital_skb_check_crc_a, %22 ], [ @digital_skb_check_crc_none, %23 ], [ @digital_skb_check_crc_f, %30 ]
  %33 = phi i32 [ 18, %15 ], [ 18, %22 ], [ 17, %23 ], [ 17, %30 ]
  %34 = load i32, ptr %6, align 8
  %35 = icmp ult i32 %34, %33
  br i1 %35, label %99, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 16
  store i8 32, ptr %37, align 4
  %38 = tail call i32 %32(ptr noundef %2) #10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.digital_tg_recv_atr_req, i32 noundef 1577, ptr noundef nonnull @.str.2) #9
  br label %99

42:                                               ; preds = %36
  %43 = load i32, ptr %6, align 8
  %44 = icmp ult i32 %43, 2
  br i1 %44, label %58, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 17
  %47 = load i8, ptr %46, align 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = tail call ptr @skb_pull(ptr noundef %2, i32 noundef 1) #10
  %51 = load i32, ptr %6, align 8
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi i32 [ %51, %49 ], [ %43, %45 ]
  %54 = load ptr, ptr %10, align 4
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %60, label %58

58:                                               ; preds = %52, %42
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.digital_tg_recv_atr_req, i32 noundef 1583, ptr noundef nonnull @.str.3) #9
  br label %99

60:                                               ; preds = %52
  %61 = tail call ptr @skb_pull(ptr noundef %2, i32 noundef 1) #10
  %62 = load ptr, ptr %10, align 4
  %63 = load i8, ptr %62, align 1
  %64 = icmp eq i8 %63, -44
  br i1 %64, label %65, label %99

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.digital_atr_req, ptr %62, i32 0, i32 1
  %67 = load i8, ptr %66, align 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %99

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.digital_atr_req, ptr %62, i32 0, i32 3
  %71 = load i8, ptr %70, align 1
  %72 = icmp ugt i8 %71, 14
  br i1 %72, label %99, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.digital_atr_req, ptr %62, i32 0, i32 6
  %75 = load i8, ptr %74, align 1
  %76 = lshr i8 %75, 4
  %77 = and i8 %76, 3
  %78 = zext i8 %77 to i32
  %79 = getelementptr [4 x i8], ptr @digital_payload_bits_map, i32 0, i32 %78
  %80 = load i8, ptr %79, align 1
  %81 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 22
  store i8 %80, ptr %81, align 1
  %82 = load i8, ptr %70, align 1
  %83 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 19
  store i8 %82, ptr %83, align 1
  %84 = tail call i32 @digital_tg_configure_hw(ptr noundef %0, i32 noundef 1, i32 noundef 11) #10
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %73
  %87 = tail call fastcc i32 @digital_tg_send_atr_res(ptr noundef %0, ptr noundef %62)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load i32, ptr %6, align 8
  %91 = add i32 %90, -16
  %92 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 8
  %93 = load i8, ptr %92, align 4
  store i8 0, ptr %92, align 4
  %94 = load ptr, ptr %0, align 4
  %95 = getelementptr inbounds %struct.digital_atr_req, ptr %62, i32 0, i32 7
  %96 = tail call i32 @nfc_tm_activated(ptr noundef %94, i32 noundef 32, i8 noundef zeroext 1, ptr noundef %95, i32 noundef %91) #10
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %89
  store i8 %93, ptr %92, align 4
  br label %99

99:                                               ; preds = %98, %86, %73, %69, %65, %60, %58, %40, %31, %5, %3
  %100 = phi ptr [ %2, %40 ], [ %2, %58 ], [ %2, %73 ], [ %2, %86 ], [ %2, %98 ], [ %2, %5 ], [ %2, %31 ], [ %2, %69 ], [ %2, %65 ], [ %2, %60 ], [ null, %3 ]
  tail call void @digital_poll_next_tech(ptr noundef %0) #10
  br label %101

101:                                              ; preds = %99, %89
  %102 = phi ptr [ %100, %99 ], [ %2, %89 ]
  tail call void @consume_skb(ptr noundef %102) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_tg_configure_hw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @digital_tg_send_atr_res(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = load ptr, ptr %0, align 4
  %5 = call ptr @nfc_get_local_general_bytes(ptr noundef %4, ptr noundef nonnull %3) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 4
  %9 = add i32 %8, 17
  br label %11

10:                                               ; preds = %2
  store i32 0, ptr %3, align 4
  br label %11

11:                                               ; preds = %10, %7
  %12 = phi i32 [ %9, %7 ], [ 17, %10 ]
  %13 = call ptr @digital_skb_alloc(ptr noundef %0, i32 noundef %12) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %52, label %15

15:                                               ; preds = %11
  %16 = call ptr @skb_put(ptr noundef nonnull %13, i32 noundef 17) #10
  %17 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %18, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(17) %19, i8 0, i32 15, i1 false)
  store i8 -43, ptr %18, align 1
  %20 = getelementptr inbounds %struct.digital_atr_res, ptr %18, i32 0, i32 1
  store i8 1, ptr %20, align 1
  %21 = getelementptr inbounds %struct.digital_atr_res, ptr %18, i32 0, i32 2
  %22 = getelementptr inbounds %struct.digital_atr_req, ptr %1, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %21, ptr noundef align 1 dereferenceable(10) %22, i32 10, i1 false)
  %23 = getelementptr inbounds %struct.digital_atr_res, ptr %18, i32 0, i32 6
  store i8 14, ptr %23, align 1
  %24 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 21
  store i8 -2, ptr %24, align 2
  %25 = getelementptr inbounds %struct.digital_atr_res, ptr %18, i32 0, i32 7
  store i8 48, ptr %25, align 1
  %26 = load i32, ptr %3, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %15
  %29 = call ptr @skb_put(ptr noundef nonnull %13, i32 noundef %26) #10
  %30 = load i8, ptr %25, align 1
  %31 = or i8 %30, 2
  store i8 %31, ptr %25, align 1
  %32 = getelementptr inbounds %struct.digital_atr_res, ptr %18, i32 0, i32 8
  %33 = load i32, ptr %3, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %32, ptr align 1 %5, i32 %33, i1 false)
  br label %34

34:                                               ; preds = %28, %15
  %35 = call ptr @skb_push(ptr noundef nonnull %13, i32 noundef 1) #10
  %36 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 5
  %37 = load i32, ptr %36, align 8
  %38 = trunc i32 %37 to i8
  %39 = load ptr, ptr %17, align 4
  store i8 %38, ptr %39, align 1
  %40 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 17
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = call ptr @skb_push(ptr noundef nonnull %13, i32 noundef 1) #10
  store i8 -16, ptr %44, align 1
  br label %45

45:                                               ; preds = %43, %34
  %46 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 30
  %47 = load ptr, ptr %46, align 4
  call void %47(ptr noundef nonnull %13) #10
  %48 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 18
  store i8 0, ptr %48, align 2
  %49 = call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 1, ptr noundef nonnull %13, ptr noundef null, i16 noundef zeroext 999, ptr noundef nonnull @digital_tg_send_atr_res_complete, ptr noundef null) #10
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  call void @kfree_skb_reason(ptr noundef nonnull %13, i32 noundef 0) #10
  br label %52

52:                                               ; preds = %51, %45, %11
  %53 = phi i32 [ -12, %11 ], [ %49, %51 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_tm_activated(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @digital_poll_next_tech(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_send_cmd(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_set_remote_general_bytes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @digital_in_send_psl_req(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @digital_skb_alloc(ptr noundef %0, i32 noundef 5) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %42, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @skb_put(ptr noundef nonnull %3, i32 noundef 5) #10
  %7 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  store i8 -44, ptr %8, align 1
  %9 = getelementptr inbounds %struct.digital_psl_req, ptr %8, i32 0, i32 1
  store i8 4, ptr %9, align 1
  %10 = getelementptr inbounds %struct.digital_psl_req, ptr %8, i32 0, i32 2
  store i8 0, ptr %10, align 1
  %11 = getelementptr inbounds %struct.digital_psl_req, ptr %8, i32 0, i32 3
  store i8 18, ptr %11, align 1
  %12 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 21
  %13 = load i8, ptr %12, align 2
  %14 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 22
  %15 = load i8, ptr %14, align 1
  %16 = tail call i8 @llvm.umin.i8(i8 %13, i8 %15)
  switch i8 %16, label %17 [
    i8 64, label %21
    i8 -128, label %18
    i8 -64, label %19
    i8 -2, label %20
  ]

17:                                               ; preds = %5
  br label %21

18:                                               ; preds = %5
  br label %21

19:                                               ; preds = %5
  br label %21

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %20, %19, %18, %17, %5
  %22 = phi i8 [ 3, %17 ], [ 0, %5 ], [ 1, %18 ], [ 2, %19 ], [ 3, %20 ]
  %23 = getelementptr inbounds %struct.digital_psl_req, ptr %8, i32 0, i32 4
  store i8 %22, ptr %23, align 1
  store i8 %16, ptr %12, align 2
  store i8 %16, ptr %14, align 1
  %24 = tail call ptr @skb_push(ptr noundef nonnull %3, i32 noundef 1) #10
  %25 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %26 = load i32, ptr %25, align 8
  %27 = trunc i32 %26 to i8
  %28 = load ptr, ptr %7, align 4
  store i8 %27, ptr %28, align 1
  %29 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 17
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = tail call ptr @skb_push(ptr noundef nonnull %3, i32 noundef 1) #10
  store i8 -16, ptr %33, align 1
  br label %34

34:                                               ; preds = %32, %21
  %35 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 30
  %36 = load ptr, ptr %35, align 4
  tail call void %36(ptr noundef nonnull %3) #10
  %37 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 20
  %38 = load i16, ptr %37, align 4
  %39 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %3, ptr noundef null, i16 noundef zeroext %38, ptr noundef nonnull @digital_in_recv_psl_res, ptr noundef %1) #10
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  tail call void @kfree_skb_reason(ptr noundef nonnull %3, i32 noundef 0) #10
  br label %42

42:                                               ; preds = %41, %34, %2
  %43 = phi i32 [ -12, %2 ], [ %39, %41 ], [ 0, %34 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_dep_link_is_up(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_in_recv_psl_res(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %65, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 29
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %2) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.digital_in_recv_psl_res, i32 noundef 310, ptr noundef nonnull @.str.2) #9
  br label %65

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 17
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = tail call ptr @skb_pull(ptr noundef %2, i32 noundef 1) #10
  %22 = load i32, ptr %13, align 8
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i32 [ %22, %20 ], [ %14, %16 ]
  %25 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %26 = load ptr, ptr %25, align 4
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %24, %28
  br i1 %29, label %32, label %30

30:                                               ; preds = %23, %12
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.digital_in_recv_psl_res, i32 noundef 316, ptr noundef nonnull @.str.3) #9
  br label %65

32:                                               ; preds = %23
  %33 = tail call ptr @skb_pull(ptr noundef %2, i32 noundef 1) #10
  %34 = load ptr, ptr %25, align 4
  %35 = load i32, ptr %13, align 8
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %65

37:                                               ; preds = %32
  %38 = load i8, ptr %34, align 1
  %39 = icmp eq i8 %38, -43
  br i1 %39, label %40, label %65

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.digital_psl_res, ptr %34, i32 0, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = icmp eq i8 %42, 5
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = tail call i32 @digital_in_configure_hw(ptr noundef %0, i32 noundef 0, i32 noundef 2) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %44
  %48 = tail call i32 @digital_in_configure_hw(ptr noundef %0, i32 noundef 1, i32 noundef 10) #10
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i8, ptr %17, align 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 30
  store ptr @digital_skb_add_crc_f, ptr %59, align 4
  store ptr @digital_skb_check_crc_f, ptr %6, align 4
  br label %60

60:                                               ; preds = %58, %55, %50
  store i8 2, ptr %17, align 1
  %61 = load ptr, ptr %0, align 4
  %62 = load i32, ptr %1, align 4
  %63 = tail call i32 @nfc_dep_link_is_up(ptr noundef %61, i32 noundef %62, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %64 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 18
  store i8 0, ptr %64, align 2
  tail call void @consume_skb(ptr noundef %2) #10
  br label %68

65:                                               ; preds = %47, %44, %40, %37, %32, %30, %10, %3
  %66 = phi ptr [ %2, %10 ], [ %2, %30 ], [ %2, %44 ], [ %2, %47 ], [ %2, %40 ], [ %2, %37 ], [ %2, %32 ], [ null, %3 ]
  tail call void @consume_skb(ptr noundef %66) #10
  %67 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 16
  store i8 0, ptr %67, align 4
  br label %68

68:                                               ; preds = %65, %60
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_in_configure_hw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_skb_add_crc_f(ptr noundef %0) #6 {
  tail call void @digital_skb_add_crc(ptr noundef %0, ptr noundef nonnull @crc_itu_t, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digital_skb_check_crc_f(ptr noundef %0) #6 {
  %2 = tail call i32 @digital_skb_check_crc(ptr noundef %0, ptr noundef nonnull @crc_itu_t, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1) #10
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @digital_skb_add_crc(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_itu_t(i16 noundef zeroext, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_skb_check_crc(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_copy_fclone(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @digital_in_send_nack(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @digital_skb_alloc(ptr noundef %0, i32 noundef 1) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @skb_push(ptr noundef nonnull %3, i32 noundef 3) #10
  %7 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  store i8 -44, ptr %8, align 1
  %9 = getelementptr inbounds %struct.digital_dep_req_res, ptr %8, i32 0, i32 1
  store i8 6, ptr %9, align 1
  %10 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 18
  %11 = load i8, ptr %10, align 2
  %12 = or i8 %11, 80
  %13 = getelementptr inbounds %struct.digital_dep_req_res, ptr %8, i32 0, i32 2
  store i8 %12, ptr %13, align 1
  %14 = tail call ptr @skb_push(ptr noundef nonnull %3, i32 noundef 1) #10
  %15 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = trunc i32 %16 to i8
  %18 = load ptr, ptr %7, align 4
  store i8 %17, ptr %18, align 1
  %19 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 17
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = tail call ptr @skb_push(ptr noundef nonnull %3, i32 noundef 1) #10
  store i8 -16, ptr %23, align 1
  br label %24

24:                                               ; preds = %22, %5
  %25 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 30
  %26 = load ptr, ptr %25, align 4
  tail call void %26(ptr noundef nonnull %3) #10
  %27 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 20
  %28 = load i16, ptr %27, align 4
  %29 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %3, ptr noundef null, i16 noundef zeroext %28, ptr noundef nonnull @digital_in_recv_dep_res, ptr noundef %1) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  tail call void @kfree_skb_reason(ptr noundef nonnull %3, i32 noundef 0) #10
  br label %32

32:                                               ; preds = %31, %24, %2
  %33 = phi i32 [ -12, %2 ], [ %29, %31 ], [ 0, %24 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @digital_recv_dep_data_gather(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) unnamed_addr #0 {
  %6 = and i8 %1, 16
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 23
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %7, label %19, label %11

11:                                               ; preds = %5
  br i1 %10, label %12, label %20

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 21
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 3
  %17 = tail call ptr @nfc_alloc_recv_skb(i32 noundef %16, i32 noundef 3264) #10
  store ptr %17, ptr %8, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %67, label %20

19:                                               ; preds = %5
  br i1 %10, label %73, label %20

20:                                               ; preds = %19, %12, %11
  %21 = phi ptr [ %9, %19 ], [ %9, %11 ], [ %17, %12 ]
  %22 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 23
  %23 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 15
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 14
  %32 = load ptr, ptr %31, align 8
  %33 = ptrtoint ptr %30 to i32
  %34 = ptrtoint ptr %32 to i32
  %35 = sub i32 %33, %34
  br label %36

36:                                               ; preds = %28, %20
  %37 = phi i32 [ %35, %28 ], [ 0, %20 ]
  %38 = icmp ugt i32 %24, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 17
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 16
  %43 = load ptr, ptr %42, align 8
  %44 = ptrtoint ptr %41 to i32
  %45 = ptrtoint ptr %43 to i32
  %46 = sub i32 %44, %45
  %47 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 21
  %48 = load i8, ptr %47, align 2
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 3
  %51 = tail call ptr @skb_copy_expand(ptr noundef nonnull %21, i32 noundef %46, i32 noundef %50, i32 noundef 3264) #10
  %52 = icmp eq ptr %51, null
  br i1 %52, label %67, label %53

53:                                               ; preds = %39
  %54 = load ptr, ptr %22, align 4
  tail call void @kfree_skb_reason(ptr noundef %54, i32 noundef 0) #10
  store ptr %51, ptr %22, align 4
  %55 = load i32, ptr %23, align 8
  br label %56

56:                                               ; preds = %53, %36
  %57 = phi i32 [ %55, %53 ], [ %24, %36 ]
  %58 = phi ptr [ %51, %53 ], [ %21, %36 ]
  %59 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %60 = load ptr, ptr %59, align 4
  %61 = tail call ptr @skb_put(ptr noundef nonnull %58, i32 noundef %57) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %61, ptr align 1 %60, i32 %57, i1 false) #10
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #10
  br i1 %7, label %65, label %62

62:                                               ; preds = %56
  %63 = tail call i32 %3(ptr noundef %0, ptr noundef %4) #10, !callees !9
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %73, label %67

65:                                               ; preds = %56
  %66 = load ptr, ptr %22, align 4
  store ptr null, ptr %22, align 4
  br label %73

67:                                               ; preds = %62, %39, %12
  %68 = phi ptr [ null, %62 ], [ %2, %12 ], [ %2, %39 ]
  %69 = phi i32 [ %63, %62 ], [ -12, %12 ], [ -12, %39 ]
  tail call void @kfree_skb_reason(ptr noundef %68, i32 noundef 0) #10
  %70 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 23
  %71 = load ptr, ptr %70, align 4
  tail call void @kfree_skb_reason(ptr noundef %71, i32 noundef 0) #10
  store ptr null, ptr %70, align 4
  %72 = inttoptr i32 %69 to ptr
  br label %73

73:                                               ; preds = %67, %65, %62, %19
  %74 = phi ptr [ %72, %67 ], [ null, %62 ], [ %66, %65 ], [ %2, %19 ]
  ret ptr %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digital_in_send_ack(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @digital_skb_alloc(ptr noundef %0, i32 noundef 1) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @skb_push(ptr noundef nonnull %3, i32 noundef 3) #10
  %7 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  store i8 -44, ptr %8, align 1
  %9 = getelementptr inbounds %struct.digital_dep_req_res, ptr %8, i32 0, i32 1
  store i8 6, ptr %9, align 1
  %10 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 18
  %11 = load i8, ptr %10, align 2
  %12 = or i8 %11, 64
  %13 = getelementptr inbounds %struct.digital_dep_req_res, ptr %8, i32 0, i32 2
  store i8 %12, ptr %13, align 1
  %14 = tail call ptr @skb_push(ptr noundef nonnull %3, i32 noundef 1) #10
  %15 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = trunc i32 %16 to i8
  %18 = load ptr, ptr %7, align 4
  store i8 %17, ptr %18, align 1
  %19 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 17
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = tail call ptr @skb_push(ptr noundef nonnull %3, i32 noundef 1) #10
  store i8 -16, ptr %23, align 1
  br label %24

24:                                               ; preds = %22, %5
  %25 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 30
  %26 = load ptr, ptr %25, align 4
  tail call void %26(ptr noundef nonnull %3) #10
  %27 = load ptr, ptr %7, align 4
  %28 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 16
  %29 = load ptr, ptr %28, align 8
  %30 = ptrtoint ptr %27 to i32
  %31 = ptrtoint ptr %29 to i32
  %32 = sub i32 %30, %31
  %33 = tail call ptr @__pskb_copy_fclone(ptr noundef nonnull %3, i32 noundef %32, i32 noundef 3264, i1 noundef zeroext false) #10
  %34 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 27
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 20
  %36 = load i16, ptr %35, align 4
  %37 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %3, ptr noundef null, i16 noundef zeroext %36, ptr noundef nonnull @digital_in_recv_dep_res, ptr noundef %1) #10
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %24
  tail call void @kfree_skb_reason(ptr noundef nonnull %3, i32 noundef 0) #10
  %40 = load ptr, ptr %34, align 4
  tail call void @kfree_skb_reason(ptr noundef %40, i32 noundef 0) #10
  store ptr null, ptr %34, align 4
  br label %41

41:                                               ; preds = %39, %24, %2
  %42 = phi i32 [ -12, %2 ], [ %37, %39 ], [ 0, %24 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @digital_in_send_saved_skb(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #10, !srcloc !10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #10, !srcloc !11
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11, !prof !12

11:                                               ; preds = %6
  %12 = add i32 %9, 1
  %13 = or i32 %12, %9
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %17, label %15, !prof !13

15:                                               ; preds = %11, %6
  %16 = phi i32 [ 2, %6 ], [ 1, %11 ]
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef %16) #10
  br label %17

17:                                               ; preds = %15, %11
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 20
  %20 = load i16, ptr %19, align 4
  %21 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 0, ptr noundef %18, ptr noundef null, i16 noundef zeroext %20, ptr noundef nonnull @digital_in_recv_dep_res, ptr noundef %1) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %3, align 4
  tail call void @kfree_skb_reason(ptr noundef %24, i32 noundef 0) #10
  br label %25

25:                                               ; preds = %23, %17, %2
  %26 = phi i32 [ -22, %2 ], [ %21, %23 ], [ 0, %17 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @digital_in_send_rtox(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 20
  %5 = load i16, ptr %4, align 4
  %6 = zext i8 %2 to i16
  %7 = mul i16 %5, %6
  %8 = tail call i16 @llvm.umin.i16(i16 %7, i16 5049)
  %9 = tail call ptr @digital_skb_alloc(ptr noundef %0, i32 noundef 1) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %34, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @skb_put(ptr noundef nonnull %9, i32 noundef 1) #10
  store i8 %2, ptr %12, align 1
  %13 = tail call ptr @skb_push(ptr noundef nonnull %9, i32 noundef 3) #10
  %14 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  store i8 -44, ptr %15, align 1
  %16 = getelementptr inbounds %struct.digital_dep_req_res, ptr %15, i32 0, i32 1
  store i8 6, ptr %16, align 1
  %17 = getelementptr inbounds %struct.digital_dep_req_res, ptr %15, i32 0, i32 2
  store i8 -112, ptr %17, align 1
  %18 = tail call ptr @skb_push(ptr noundef nonnull %9, i32 noundef 1) #10
  %19 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = trunc i32 %20 to i8
  %22 = load ptr, ptr %14, align 4
  store i8 %21, ptr %22, align 1
  %23 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 17
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %11
  %27 = tail call ptr @skb_push(ptr noundef nonnull %9, i32 noundef 1) #10
  store i8 -16, ptr %27, align 1
  br label %28

28:                                               ; preds = %26, %11
  %29 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 30
  %30 = load ptr, ptr %29, align 4
  tail call void %30(ptr noundef nonnull %9) #10
  %31 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %9, ptr noundef null, i16 noundef zeroext %8, ptr noundef nonnull @digital_in_recv_dep_res, ptr noundef %1) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void @kfree_skb_reason(ptr noundef nonnull %9, i32 noundef 0) #10
  br label %34

34:                                               ; preds = %33, %28, %3
  %35 = phi i32 [ -12, %3 ], [ %31, %33 ], [ 0, %28 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_alloc_recv_skb(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @digital_tg_send_saved_skb(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #10, !srcloc !10
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #10, !srcloc !11
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !12

10:                                               ; preds = %5
  %11 = add i32 %8, 1
  %12 = or i32 %11, %8
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %16, label %14, !prof !13

14:                                               ; preds = %10, %5
  %15 = phi i32 [ 2, %5 ], [ 1, %10 ]
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef %15) #10
  br label %16

16:                                               ; preds = %14, %10
  %17 = load ptr, ptr %2, align 4
  %18 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 1, ptr noundef %17, ptr noundef null, i16 noundef zeroext 1500, ptr noundef nonnull @digital_tg_recv_dep_req, ptr noundef null) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %2, align 4
  tail call void @kfree_skb_reason(ptr noundef %21, i32 noundef 0) #10
  br label %22

22:                                               ; preds = %20, %16, %1
  %23 = phi i32 [ -22, %1 ], [ %18, %20 ], [ 0, %16 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digital_tg_send_ack(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @digital_skb_alloc(ptr noundef %0, i32 noundef 1) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @skb_push(ptr noundef nonnull %3, i32 noundef 3) #10
  %7 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  store i8 -43, ptr %8, align 1
  %9 = getelementptr inbounds %struct.digital_dep_req_res, ptr %8, i32 0, i32 1
  store i8 7, ptr %9, align 1
  %10 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 18
  %11 = load i8, ptr %10, align 2
  %12 = or i8 %11, 64
  %13 = getelementptr inbounds %struct.digital_dep_req_res, ptr %8, i32 0, i32 2
  store i8 %12, ptr %13, align 1
  %14 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 19
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = or i8 %11, 68
  store i8 %18, ptr %13, align 1
  %19 = tail call ptr @skb_put(ptr noundef nonnull %3, i32 noundef 1) #10
  %20 = load i8, ptr %14, align 1
  store i8 %20, ptr %19, align 1
  br label %21

21:                                               ; preds = %17, %5
  %22 = load i8, ptr %10, align 2
  %23 = add i8 %22, 1
  %24 = and i8 %23, 3
  store i8 %24, ptr %10, align 2
  %25 = tail call ptr @skb_push(ptr noundef nonnull %3, i32 noundef 1) #10
  %26 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %27 = load i32, ptr %26, align 8
  %28 = trunc i32 %27 to i8
  %29 = load ptr, ptr %7, align 4
  store i8 %28, ptr %29, align 1
  %30 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 17
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = tail call ptr @skb_push(ptr noundef nonnull %3, i32 noundef 1) #10
  store i8 -16, ptr %34, align 1
  br label %35

35:                                               ; preds = %33, %21
  %36 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 30
  %37 = load ptr, ptr %36, align 4
  tail call void %37(ptr noundef nonnull %3) #10
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 16
  %40 = load ptr, ptr %39, align 8
  %41 = ptrtoint ptr %38 to i32
  %42 = ptrtoint ptr %40 to i32
  %43 = sub i32 %41, %42
  %44 = tail call ptr @__pskb_copy_fclone(ptr noundef nonnull %3, i32 noundef %43, i32 noundef 3264, i1 noundef zeroext false) #10
  %45 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 27
  store ptr %44, ptr %45, align 4
  %46 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 1, ptr noundef nonnull %3, ptr noundef null, i16 noundef zeroext 1500, ptr noundef nonnull @digital_tg_recv_dep_req, ptr noundef %1) #10
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %35
  tail call void @kfree_skb_reason(ptr noundef nonnull %3, i32 noundef 0) #10
  %49 = load ptr, ptr %45, align 4
  tail call void @kfree_skb_reason(ptr noundef %49, i32 noundef 0) #10
  store ptr null, ptr %45, align 4
  br label %50

50:                                               ; preds = %48, %35, %2
  %51 = phi i32 [ -12, %2 ], [ %46, %48 ], [ 0, %35 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @digital_tg_send_atn(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @digital_skb_alloc(ptr noundef %0, i32 noundef 1) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %33, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @skb_push(ptr noundef nonnull %2, i32 noundef 3) #10
  %6 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  store i8 -43, ptr %7, align 1
  %8 = getelementptr inbounds %struct.digital_dep_req_res, ptr %7, i32 0, i32 1
  store i8 7, ptr %8, align 1
  %9 = getelementptr inbounds %struct.digital_dep_req_res, ptr %7, i32 0, i32 2
  store i8 -128, ptr %9, align 1
  %10 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 19
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  store i8 -124, ptr %9, align 1
  %14 = tail call ptr @skb_put(ptr noundef nonnull %2, i32 noundef 1) #10
  %15 = load i8, ptr %10, align 1
  store i8 %15, ptr %14, align 1
  br label %16

16:                                               ; preds = %13, %4
  %17 = tail call ptr @skb_push(ptr noundef nonnull %2, i32 noundef 1) #10
  %18 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = trunc i32 %19 to i8
  %21 = load ptr, ptr %6, align 4
  store i8 %20, ptr %21, align 1
  %22 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 17
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = tail call ptr @skb_push(ptr noundef nonnull %2, i32 noundef 1) #10
  store i8 -16, ptr %26, align 1
  br label %27

27:                                               ; preds = %25, %16
  %28 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 30
  %29 = load ptr, ptr %28, align 4
  tail call void %29(ptr noundef nonnull %2) #10
  %30 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 1, ptr noundef nonnull %2, ptr noundef null, i16 noundef zeroext 1500, ptr noundef nonnull @digital_tg_recv_dep_req, ptr noundef null) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void @kfree_skb_reason(ptr noundef nonnull %2, i32 noundef 0) #10
  br label %33

33:                                               ; preds = %32, %27, %1
  %34 = phi i32 [ -12, %1 ], [ %30, %32 ], [ 0, %27 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_tm_data_received(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @digital_skb_add_crc_none(ptr nocapture noundef %0) #7 {
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @digital_skb_check_crc_none(ptr nocapture noundef readnone %0) #7 {
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_skb_add_crc_a(ptr noundef %0) #6 {
  tail call void @digital_skb_add_crc(ptr noundef %0, ptr noundef nonnull @crc_ccitt, i16 noundef zeroext 25443, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digital_skb_check_crc_a(ptr noundef %0) #6 {
  %2 = tail call i32 @digital_skb_check_crc(ptr noundef %0, ptr noundef nonnull @crc_ccitt, i16 noundef zeroext 25443, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_ccitt(i16 noundef zeroext, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_get_local_general_bytes(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_tg_send_atr_res_complete(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @digital_poll_next_tech(ptr noundef %0) #10
  br label %107

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, -16
  %11 = select i1 %10, i32 3, i32 2
  %12 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 25
  store i32 0, ptr %12, align 4
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr i8, ptr %13, i32 %11
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 4
  br i1 %16, label %17, label %106

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 29
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %2) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.digital_tg_recv_psl_req, i32 noundef 1414, ptr noundef nonnull @.str.2) #9
  br label %105

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %26 = load i32, ptr %25, align 8
  %27 = icmp ult i32 %26, 2
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 17
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = tail call ptr @skb_pull(ptr noundef %2, i32 noundef 1) #10
  %34 = load i32, ptr %25, align 8
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi i32 [ %34, %32 ], [ %26, %28 ]
  %37 = load ptr, ptr %7, align 4
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %43, label %41

41:                                               ; preds = %35, %24
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.digital_tg_recv_psl_req, i32 noundef 1420, ptr noundef nonnull @.str.3) #9
  br label %105

43:                                               ; preds = %35
  %44 = tail call ptr @skb_pull(ptr noundef %2, i32 noundef 1) #10
  %45 = load ptr, ptr %7, align 4
  %46 = load i32, ptr %25, align 8
  %47 = icmp eq i32 %46, 5
  br i1 %47, label %48, label %105

48:                                               ; preds = %43
  %49 = load i8, ptr %45, align 1
  %50 = icmp eq i8 %49, -44
  br i1 %50, label %51, label %105

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.digital_psl_req, ptr %45, i32 0, i32 1
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, 4
  br i1 %54, label %55, label %105

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.digital_psl_req, ptr %45, i32 0, i32 3
  %57 = load i8, ptr %56, align 1
  %58 = lshr i8 %57, 3
  %59 = and i8 %58, 7
  %60 = zext i8 %59 to i32
  %61 = icmp ult i8 %59, 3
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.digital_tg_recv_psl_req, i32 noundef %60) #9
  br label %105

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.digital_psl_req, ptr %45, i32 0, i32 4
  %66 = load i8, ptr %65, align 1
  %67 = and i8 %66, 3
  %68 = zext i8 %67 to i32
  %69 = getelementptr [4 x i8], ptr @digital_payload_bits_map, i32 0, i32 %68
  %70 = load i8, ptr %69, align 1
  %71 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 21
  %72 = load i8, ptr %71, align 2
  %73 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 22
  %74 = load i8, ptr %73, align 1
  %75 = tail call i8 @llvm.umin.i8(i8 %72, i8 %74) #10
  %76 = icmp ugt i8 %70, %75
  br i1 %76, label %105, label %77

77:                                               ; preds = %64
  store i8 %70, ptr %71, align 2
  store i8 %70, ptr %73, align 1
  %78 = getelementptr inbounds %struct.digital_psl_req, ptr %45, i32 0, i32 2
  %79 = load i8, ptr %78, align 1
  %80 = tail call ptr @digital_skb_alloc(ptr noundef %0, i32 noundef 3) #10
  %81 = icmp eq ptr %80, null
  br i1 %81, label %105, label %82

82:                                               ; preds = %77
  %83 = tail call ptr @skb_put(ptr noundef nonnull %80, i32 noundef 3) #10
  %84 = getelementptr inbounds %struct.sk_buff, ptr %80, i32 0, i32 17
  %85 = load ptr, ptr %84, align 4
  store i8 -43, ptr %85, align 1
  %86 = getelementptr inbounds %struct.digital_psl_res, ptr %85, i32 0, i32 1
  store i8 5, ptr %86, align 1
  %87 = getelementptr inbounds %struct.digital_psl_res, ptr %85, i32 0, i32 2
  store i8 %79, ptr %87, align 1
  %88 = tail call ptr @skb_push(ptr noundef nonnull %80, i32 noundef 1) #10
  %89 = getelementptr inbounds %struct.sk_buff, ptr %80, i32 0, i32 5
  %90 = load i32, ptr %89, align 8
  %91 = trunc i32 %90 to i8
  %92 = load ptr, ptr %84, align 4
  store i8 %91, ptr %92, align 1
  %93 = load i8, ptr %29, align 1
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %82
  %96 = tail call ptr @skb_push(ptr noundef nonnull %80, i32 noundef 1) #10
  store i8 -16, ptr %96, align 1
  br label %97

97:                                               ; preds = %95, %82
  %98 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 30
  %99 = load ptr, ptr %98, align 4
  tail call void %99(ptr noundef nonnull %80) #10
  %100 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 18
  store i8 0, ptr %100, align 2
  %101 = inttoptr i32 %60 to ptr
  %102 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 1, ptr noundef nonnull %80, ptr noundef null, i16 noundef zeroext 0, ptr noundef nonnull @digital_tg_send_psl_res_complete, ptr noundef %101) #10
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %97
  tail call void @kfree_skb_reason(ptr noundef nonnull %80, i32 noundef 0) #10
  br label %105

105:                                              ; preds = %104, %97, %77, %64, %62, %51, %48, %43, %41, %22
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #10
  br label %107

106:                                              ; preds = %6
  tail call void @digital_tg_recv_dep_req(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %107

107:                                              ; preds = %106, %105, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_tg_send_psl_res_complete(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %30, label %5

5:                                                ; preds = %3
  %6 = ptrtoint ptr %1 to i32
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 17
  store i8 %7, ptr %8, align 1
  %9 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 30
  store ptr @digital_skb_add_crc_none, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 29
  store ptr @digital_skb_check_crc_none, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  %15 = icmp ult i8 %7, 3
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %5
  %18 = shl i32 %6, 24
  %19 = ashr exact i32 %18, 24
  %20 = getelementptr inbounds [3 x ptr], ptr @switch.table.digital_tg_send_psl_res_complete, i32 0, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = shl i32 %6, 24
  %23 = ashr exact i32 %22, 24
  %24 = getelementptr inbounds [3 x ptr], ptr @switch.table.digital_tg_send_psl_res_complete.12, i32 0, i32 %23
  %25 = load ptr, ptr %24, align 4
  store ptr %21, ptr %9, align 4
  store ptr %25, ptr %10, align 4
  br label %26

26:                                               ; preds = %17, %5
  %27 = and i32 %6, 255
  %28 = tail call i32 @digital_tg_configure_hw(ptr noundef %0, i32 noundef 0, i32 noundef %27) #10
  %29 = tail call i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext 2, ptr noundef null, ptr noundef null, i16 noundef zeroext 1500, ptr noundef nonnull @digital_tg_recv_dep_req, ptr noundef null) #10
  tail call void @consume_skb(ptr noundef %2) #10
  br label %30

30:                                               ; preds = %26, %3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind }

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
!9 = !{ptr @digital_in_send_ack, ptr @digital_tg_send_ack}
!10 = !{i64 505545, i64 2147995516, i64 2147995542, i64 2147995589, i64 2147995611, i64 2147995639, i64 2147995659}
!11 = !{i64 2148009186, i64 2148009218, i64 2148009247, i64 2148009281, i64 2148009312, i64 2148009335}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
