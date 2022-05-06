; ModuleID = '/llk/IR/net/ipv4/tunnel4.c_pt.bc'
source_filename = "../net/ipv4/tunnel4.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm4_tunnel_register:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm4_tunnel_register\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm4_tunnel_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm4_tunnel_deregister:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm4_tunnel_deregister\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm4_tunnel_deregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net_protocol = type { ptr, ptr, ptr, ptr, i8 }
%struct.xfrm_tunnel = type { ptr, ptr, ptr, ptr, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.120, %union.anon.121, [48 x i8], %union.anon.122, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.124, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.120 = type { ptr }
%union.anon.121 = type { i64 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, ptr }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.126, i32, i32, i32, i16, i16, %union.anon.128, %union.anon.129, %union.anon.130, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.126 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }

@tunnel4_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tunnel4_mutex, i64 12), ptr getelementptr (i8, ptr @tunnel4_mutex, i64 12) } }, align 4
@__kstrtab_xfrm4_tunnel_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm4_tunnel_register = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm4_tunnel_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm4_tunnel_register to i32), ptr @__kstrtab_xfrm4_tunnel_register, ptr @__kstrtabns_xfrm4_tunnel_register }, section "___ksymtab+xfrm4_tunnel_register", align 4
@__kstrtab_xfrm4_tunnel_deregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm4_tunnel_deregister = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm4_tunnel_deregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm4_tunnel_deregister to i32), ptr @__kstrtab_xfrm4_tunnel_deregister, ptr @__kstrtabns_xfrm4_tunnel_deregister }, section "___ksymtab+xfrm4_tunnel_deregister", align 4
@tunnel64_protocol = internal constant %struct.net_protocol { ptr null, ptr null, ptr @tunnel64_rcv, ptr @tunnel64_err, i8 1 }, align 4
@.str = private unnamed_addr constant [41 x i8] c"\013tunnel64 close: can't remove protocol\0A\00", align 1
@tunnel4_protocol = internal constant %struct.net_protocol { ptr null, ptr null, ptr @tunnel4_rcv, ptr @tunnel4_err, i8 1 }, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"\013tunnel4 close: can't remove protocol\0A\00", align 1
@__initcall__kmod_tunnel4__483_295_tunnel4_init6 = internal global ptr @tunnel4_init, section ".initcall6.init", align 4
@__exitcall_tunnel4_fini = internal global ptr @tunnel4_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file484 = internal constant [30 x i8] c"tunnel4.file=net/ipv4/tunnel4\00", section ".modinfo", align 1
@__UNIQUE_ID_license485 = internal constant [20 x i8] c"tunnel4.license=GPL\00", section ".modinfo", align 1
@tunnel4_handlers = internal global ptr null, section ".data..read_mostly", align 4
@tunnel64_handlers = internal global ptr null, section ".data..read_mostly", align 4
@tunnelmpls4_handlers = internal global ptr null, section ".data..read_mostly", align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"\013%s: can't add protocol\0A\00", align 1
@__func__.tunnel4_init = private unnamed_addr constant [13 x i8] c"tunnel4_init\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_file484, ptr @__UNIQUE_ID_license485, ptr @__exitcall_tunnel4_fini, ptr @__initcall__kmod_tunnel4__483_295_tunnel4_init6, ptr @__ksymtab_xfrm4_tunnel_deregister, ptr @__ksymtab_xfrm4_tunnel_register, ptr @tunnel4_fini], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm4_tunnel_register(ptr noundef %0, i16 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.xfrm_tunnel, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  tail call void @mutex_lock(ptr noundef nonnull @tunnel4_mutex) #4
  %5 = icmp eq i16 %1, 2
  %6 = icmp eq i16 %1, 10
  %7 = select i1 %6, ptr @tunnel64_handlers, ptr @tunnelmpls4_handlers
  %8 = select i1 %5, ptr @tunnel4_handlers, ptr %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.xfrm_tunnel, ptr %9, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, %4
  br i1 %14, label %30, label %19

15:                                               ; preds = %23
  %16 = getelementptr inbounds %struct.xfrm_tunnel, ptr %25, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %17, %4
  br i1 %18, label %27, label %19

19:                                               ; preds = %15, %11
  %20 = phi i32 [ %17, %15 ], [ %13, %11 ]
  %21 = phi ptr [ %25, %15 ], [ %9, %11 ]
  %22 = icmp eq i32 %20, %4
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.xfrm_tunnel, ptr %21, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %15

27:                                               ; preds = %23, %15
  %28 = phi ptr [ null, %23 ], [ %25, %15 ]
  %29 = getelementptr inbounds %struct.xfrm_tunnel, ptr %21, i32 0, i32 3
  br label %30

30:                                               ; preds = %27, %11, %2
  %31 = phi ptr [ %8, %2 ], [ %8, %11 ], [ %29, %27 ]
  %32 = phi ptr [ null, %2 ], [ %9, %11 ], [ %28, %27 ]
  %33 = getelementptr inbounds %struct.xfrm_tunnel, ptr %0, i32 0, i32 3
  store ptr %32, ptr %33, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  store volatile ptr %0, ptr %31, align 4
  br label %34

34:                                               ; preds = %30, %19
  %35 = phi i32 [ 0, %30 ], [ -17, %19 ]
  tail call void @mutex_unlock(ptr noundef nonnull @tunnel4_mutex) #4
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm4_tunnel_deregister(ptr noundef readonly %0, i16 noundef zeroext %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @tunnel4_mutex) #4
  %3 = icmp eq i16 %1, 2
  %4 = icmp eq i16 %1, 10
  %5 = select i1 %4, ptr @tunnel64_handlers, ptr @tunnelmpls4_handlers
  %6 = select i1 %3, ptr @tunnel4_handlers, ptr %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %7, %0
  br i1 %10, label %20, label %11

11:                                               ; preds = %16, %9
  %12 = phi ptr [ %14, %16 ], [ %7, %9 ]
  %13 = getelementptr inbounds %struct.xfrm_tunnel, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = icmp eq ptr %14, %0
  br i1 %17, label %18, label %11

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.xfrm_tunnel, ptr %12, i32 0, i32 3
  br label %20

20:                                               ; preds = %18, %9
  %21 = phi ptr [ %6, %9 ], [ %19, %18 ]
  %22 = getelementptr inbounds %struct.xfrm_tunnel, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  store ptr %23, ptr %21, align 4
  br label %24

24:                                               ; preds = %20, %11, %2
  %25 = phi i32 [ 0, %20 ], [ -2, %2 ], [ -2, %11 ]
  tail call void @mutex_unlock(ptr noundef nonnull @tunnel4_mutex) #4
  tail call void @synchronize_net() #4
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tunnel4_fini() #2 section ".exit.text" {
  %1 = tail call i32 @inet_del_protocol(ptr noundef nonnull @tunnel64_protocol, i8 noundef zeroext 41) #4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #5
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call i32 @inet_del_protocol(ptr noundef nonnull @tunnel4_protocol, i8 noundef zeroext 4) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #5
  br label %10

10:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tunnel4_init() #2 section ".init.text" {
  %1 = tail call i32 @inet_add_protocol(ptr noundef nonnull @tunnel4_protocol, i8 noundef zeroext 4) #4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = tail call i32 @inet_add_protocol(ptr noundef nonnull @tunnel64_protocol, i8 noundef zeroext 41) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @inet_del_protocol(ptr noundef nonnull @tunnel4_protocol, i8 noundef zeroext 4) #4
  br label %8

8:                                                ; preds = %6, %0
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tunnel4_init) #5
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ -11, %8 ], [ 0, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tunnel64_rcv(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 %3, %5
  %7 = icmp ult i32 %6, 40
  br i1 %7, label %8, label %14, !prof !9

8:                                                ; preds = %1
  %9 = icmp ult i32 %3, 40
  br i1 %9, label %28, label %10, !prof !9

10:                                               ; preds = %8
  %11 = sub nuw nsw i32 40, %6
  %12 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %11) #4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %10, %1
  %15 = load volatile ptr, ptr @tunnel64_handlers, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %21

17:                                               ; preds = %21
  %18 = getelementptr inbounds %struct.xfrm_tunnel, ptr %22, i32 0, i32 3
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %17, %14
  %22 = phi ptr [ %19, %17 ], [ %15, %14 ]
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %0) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %17

26:                                               ; preds = %17, %14
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %0, i32 noundef 3, i32 noundef 3, i32 noundef 0, ptr noundef %27) #4
  br label %28

28:                                               ; preds = %26, %10, %8
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #4
  br label %29

29:                                               ; preds = %28, %21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tunnel64_err(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr @tunnel64_handlers, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %9

5:                                                ; preds = %9
  %6 = getelementptr inbounds %struct.xfrm_tunnel, ptr %10, i32 0, i32 3
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5, %2
  %10 = phi ptr [ %7, %5 ], [ %3, %2 ]
  %11 = getelementptr inbounds %struct.xfrm_tunnel, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %0, i32 noundef %1) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %5

15:                                               ; preds = %9, %5, %2
  %16 = phi i32 [ -2, %2 ], [ -2, %5 ], [ 0, %9 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__icmp_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tunnel4_rcv(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 %3, %5
  %7 = icmp ult i32 %6, 20
  br i1 %7, label %8, label %14, !prof !9

8:                                                ; preds = %1
  %9 = icmp ult i32 %3, 20
  br i1 %9, label %28, label %10, !prof !9

10:                                               ; preds = %8
  %11 = sub nuw nsw i32 20, %6
  %12 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %11) #4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %10, %1
  %15 = load volatile ptr, ptr @tunnel4_handlers, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %21

17:                                               ; preds = %21
  %18 = getelementptr inbounds %struct.xfrm_tunnel, ptr %22, i32 0, i32 3
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %17, %14
  %22 = phi ptr [ %19, %17 ], [ %15, %14 ]
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %0) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %17

26:                                               ; preds = %17, %14
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %0, i32 noundef 3, i32 noundef 3, i32 noundef 0, ptr noundef %27) #4
  br label %28

28:                                               ; preds = %26, %10, %8
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #4
  br label %29

29:                                               ; preds = %28, %21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tunnel4_err(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr @tunnel4_handlers, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %9

5:                                                ; preds = %9
  %6 = getelementptr inbounds %struct.xfrm_tunnel, ptr %10, i32 0, i32 3
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5, %2
  %10 = phi ptr [ %7, %5 ], [ %3, %2 ]
  %11 = getelementptr inbounds %struct.xfrm_tunnel, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %0, i32 noundef %1) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %5

15:                                               ; preds = %9, %5, %2
  %16 = phi i32 [ -2, %2 ], [ -2, %5 ], [ 0, %9 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 2156323537}
!9 = !{!"branch_weights", i32 1, i32 2000}
