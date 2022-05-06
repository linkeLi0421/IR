; ModuleID = '/llk/IR/net/ipv4/xfrm4_protocol.c_pt.bc'
source_filename = "../net/ipv4/xfrm4_protocol.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm4_rcv_encap:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm4_rcv_encap\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm4_rcv_encap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm4_protocol_register:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm4_protocol_register\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm4_protocol_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm4_protocol_deregister:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm4_protocol_deregister\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm4_protocol_deregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm4_protocol_init:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm4_protocol_init\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm4_protocol_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.xfrm_input_afinfo = type { i8, i8, ptr }
%struct.net_protocol = type { ptr, ptr, ptr, ptr, i8 }
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
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.xfrm4_protocol = type { ptr, ptr, ptr, ptr, ptr, i32 }

@__kstrtab_xfrm4_rcv_encap = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm4_rcv_encap = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm4_rcv_encap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm4_rcv_encap to i32), ptr @__kstrtab_xfrm4_rcv_encap, ptr @__kstrtabns_xfrm4_rcv_encap }, section "___ksymtab+xfrm4_rcv_encap", align 4
@xfrm4_protocol_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @xfrm4_protocol_mutex, i64 12), ptr getelementptr (i8, ptr @xfrm4_protocol_mutex, i64 12) } }, align 4
@.str = private unnamed_addr constant [26 x i8] c"\013%s: can't add protocol\0A\00", align 1
@__func__.xfrm4_protocol_register = private unnamed_addr constant [24 x i8] c"xfrm4_protocol_register\00", align 1
@__kstrtab_xfrm4_protocol_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm4_protocol_register = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm4_protocol_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm4_protocol_register to i32), ptr @__kstrtab_xfrm4_protocol_register, ptr @__kstrtabns_xfrm4_protocol_register }, section "___ksymtab+xfrm4_protocol_register", align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"\013%s: can't remove protocol\0A\00", align 1
@__func__.xfrm4_protocol_deregister = private unnamed_addr constant [26 x i8] c"xfrm4_protocol_deregister\00", align 1
@__kstrtab_xfrm4_protocol_deregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm4_protocol_deregister = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm4_protocol_deregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm4_protocol_deregister to i32), ptr @__kstrtab_xfrm4_protocol_deregister, ptr @__kstrtabns_xfrm4_protocol_deregister }, section "___ksymtab+xfrm4_protocol_deregister", align 4
@xfrm4_input_afinfo = internal constant %struct.xfrm_input_afinfo { i8 2, i8 0, ptr @xfrm4_rcv_cb }, align 4
@__kstrtab_xfrm4_protocol_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm4_protocol_init = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm4_protocol_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm4_protocol_init to i32), ptr @__kstrtab_xfrm4_protocol_init, ptr @__kstrtabns_xfrm4_protocol_init }, section "___ksymtab+xfrm4_protocol_init", align 4
@esp4_handlers = internal global ptr null, section ".data..read_mostly", align 4
@ah4_handlers = internal global ptr null, section ".data..read_mostly", align 4
@ipcomp4_handlers = internal global ptr null, section ".data..read_mostly", align 4
@esp4_protocol = internal constant %struct.net_protocol { ptr null, ptr null, ptr @xfrm4_esp_rcv, ptr @xfrm4_esp_err, i8 1 }, align 4
@ah4_protocol = internal constant %struct.net_protocol { ptr null, ptr null, ptr @xfrm4_ah_rcv, ptr @xfrm4_ah_err, i8 1 }, align 4
@ipcomp4_protocol = internal constant %struct.net_protocol { ptr null, ptr null, ptr @xfrm4_ipcomp_rcv, ptr @xfrm4_ipcomp_err, i8 1 }, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_xfrm4_protocol_deregister, ptr @__ksymtab_xfrm4_protocol_init, ptr @__ksymtab_xfrm4_protocol_register, ptr @__ksymtab_xfrm4_rcv_encap], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm4_rcv_encap(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = trunc i32 %1 to i8
  switch i8 %5, label %8 [
    i8 50, label %12
    i8 51, label %6
    i8 108, label %7
  ]

6:                                                ; preds = %4
  br label %12

7:                                                ; preds = %4
  br label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 32
  store i32 2, ptr %10, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 28
  store i32 16, ptr %11, align 4
  br label %50

12:                                               ; preds = %7, %6, %4
  %13 = phi ptr [ @esp4_handlers, %4 ], [ @ah4_handlers, %6 ], [ @ipcomp4_handlers, %7 ]
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  store ptr null, ptr %14, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 32
  store i32 2, ptr %15, align 8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 28
  store i32 16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 8
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %20, label %37

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = getelementptr i8, ptr %22, i32 %25
  %27 = getelementptr inbounds %struct.iphdr, ptr %26, i32 0, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.iphdr, ptr %26, i32 0, i32 8
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.iphdr, ptr %26, i32 0, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = tail call i32 @ip_route_input_noref(ptr noundef %0, i32 noundef %28, i32 noundef %30, i8 noundef zeroext %32, ptr noundef %34) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %20, %12
  %38 = load volatile ptr, ptr %13, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %44

40:                                               ; preds = %44
  %41 = getelementptr inbounds %struct.xfrm4_protocol, ptr %45, i32 0, i32 4
  %42 = load volatile ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %40, %37
  %45 = phi ptr [ %42, %40 ], [ %38, %37 ]
  %46 = getelementptr inbounds %struct.xfrm4_protocol, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 %47(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4
  %49 = icmp eq i32 %48, -22
  br i1 %49, label %40, label %53

50:                                               ; preds = %40, %37, %8
  %51 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %0, i32 noundef 3, i32 noundef 3, i32 noundef 0, ptr noundef %51) #4
  br label %52

52:                                               ; preds = %50, %20
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #4
  br label %53

53:                                               ; preds = %52, %44
  %54 = phi i32 [ 0, %52 ], [ %48, %44 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_route_input_noref(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm4_protocol_register(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.xfrm4_protocol, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  switch i8 %1, label %46 [
    i8 50, label %7
    i8 51, label %5
    i8 108, label %6
  ]

5:                                                ; preds = %2
  br label %7

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %6, %5, %2
  %8 = phi ptr [ @ipcomp4_handlers, %6 ], [ @ah4_handlers, %5 ], [ @esp4_handlers, %2 ]
  tail call void @mutex_lock(ptr noundef nonnull @xfrm4_protocol_mutex) #4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.xfrm4_protocol, ptr %9, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %13, %4
  br i1 %14, label %30, label %19

15:                                               ; preds = %23
  %16 = getelementptr inbounds %struct.xfrm4_protocol, ptr %25, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = icmp slt i32 %17, %4
  br i1 %18, label %27, label %19

19:                                               ; preds = %15, %11
  %20 = phi i32 [ %17, %15 ], [ %13, %11 ]
  %21 = phi ptr [ %25, %15 ], [ %9, %11 ]
  %22 = icmp eq i32 %20, %4
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.xfrm4_protocol, ptr %21, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %15

27:                                               ; preds = %23, %15
  %28 = phi ptr [ null, %23 ], [ %25, %15 ]
  %29 = getelementptr inbounds %struct.xfrm4_protocol, ptr %21, i32 0, i32 4
  br label %30

30:                                               ; preds = %27, %11, %7
  %31 = phi ptr [ %8, %7 ], [ %8, %11 ], [ %29, %27 ]
  %32 = phi ptr [ null, %7 ], [ %9, %11 ], [ %28, %27 ]
  %33 = getelementptr inbounds %struct.xfrm4_protocol, ptr %0, i32 0, i32 4
  store ptr %32, ptr %33, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  store volatile ptr %0, ptr %31, align 4
  br label %34

34:                                               ; preds = %30, %19
  %35 = phi i32 [ 0, %30 ], [ -17, %19 ]
  tail call void @mutex_unlock(ptr noundef nonnull @xfrm4_protocol_mutex) #4
  br i1 %10, label %36, label %46

36:                                               ; preds = %34
  switch i8 %1, label %39 [
    i8 50, label %40
    i8 51, label %37
    i8 108, label %38
  ]

37:                                               ; preds = %36
  br label %40

38:                                               ; preds = %36
  br label %40

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %39, %38, %37, %36
  %41 = phi ptr [ null, %39 ], [ @ipcomp4_protocol, %38 ], [ @ah4_protocol, %37 ], [ @esp4_protocol, %36 ]
  %42 = tail call i32 @inet_add_protocol(ptr noundef %41, i8 noundef zeroext %1) #4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.xfrm4_protocol_register) #5
  br label %46

46:                                               ; preds = %44, %40, %34, %2
  %47 = phi i32 [ -11, %44 ], [ %35, %40 ], [ %35, %34 ], [ -22, %2 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm4_protocol_deregister(ptr noundef readonly %0, i8 noundef zeroext %1) #0 {
  switch i8 %1, label %45 [
    i8 50, label %5
    i8 51, label %3
    i8 108, label %4
  ]

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %3, %2
  %6 = phi ptr [ @ipcomp4_handlers, %4 ], [ @ah4_handlers, %3 ], [ @esp4_handlers, %2 ]
  tail call void @mutex_lock(ptr noundef nonnull @xfrm4_protocol_mutex) #4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = icmp eq ptr %7, %0
  br i1 %10, label %20, label %11

11:                                               ; preds = %16, %9
  %12 = phi ptr [ %14, %16 ], [ %7, %9 ]
  %13 = getelementptr inbounds %struct.xfrm4_protocol, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = icmp eq ptr %14, %0
  br i1 %17, label %18, label %11

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.xfrm4_protocol, ptr %12, i32 0, i32 4
  br label %20

20:                                               ; preds = %18, %9
  %21 = phi ptr [ %6, %9 ], [ %19, %18 ]
  %22 = getelementptr inbounds %struct.xfrm4_protocol, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  store ptr %23, ptr %21, align 4
  br label %24

24:                                               ; preds = %20, %11, %5
  %25 = phi i32 [ 0, %20 ], [ -2, %5 ], [ -2, %11 ]
  switch i8 %1, label %28 [
    i8 50, label %29
    i8 51, label %26
    i8 108, label %27
  ]

26:                                               ; preds = %24
  br label %29

27:                                               ; preds = %24
  br label %29

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %28, %27, %26, %24
  %30 = phi ptr [ null, %28 ], [ @ipcomp4_handlers, %27 ], [ @ah4_handlers, %26 ], [ @esp4_handlers, %24 ]
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  switch i8 %1, label %36 [
    i8 50, label %37
    i8 51, label %34
    i8 108, label %35
  ]

34:                                               ; preds = %33
  br label %37

35:                                               ; preds = %33
  br label %37

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %36, %35, %34, %33
  %38 = phi ptr [ null, %36 ], [ @ipcomp4_protocol, %35 ], [ @ah4_protocol, %34 ], [ @esp4_protocol, %33 ]
  %39 = tail call i32 @inet_del_protocol(ptr noundef %38, i8 noundef zeroext %1) #4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xfrm4_protocol_deregister) #5
  br label %43

43:                                               ; preds = %41, %37, %29
  %44 = phi i32 [ %25, %29 ], [ -11, %41 ], [ %25, %37 ]
  tail call void @mutex_unlock(ptr noundef nonnull @xfrm4_protocol_mutex) #4
  tail call void @synchronize_net() #4
  br label %45

45:                                               ; preds = %43, %2
  %46 = phi i32 [ %44, %43 ], [ -22, %2 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @xfrm4_protocol_init() #3 section ".init.text" {
  %1 = tail call i32 @xfrm_input_register_afinfo(ptr noundef nonnull @xfrm4_input_afinfo) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_input_register_afinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__icmp_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xfrm4_esp_rcv(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  store ptr null, ptr %2, align 8
  %3 = load volatile ptr, ptr @esp4_handlers, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %9

5:                                                ; preds = %9
  %6 = getelementptr inbounds %struct.xfrm4_protocol, ptr %10, i32 0, i32 4
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0) #4
  %13 = icmp eq i32 %12, -22
  br i1 %13, label %5, label %16

14:                                               ; preds = %5, %1
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %0, i32 noundef 3, i32 noundef 3, i32 noundef 0, ptr noundef %15) #4
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #4
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi i32 [ 0, %14 ], [ %12, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xfrm4_esp_err(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr @esp4_handlers, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %9

5:                                                ; preds = %9
  %6 = getelementptr inbounds %struct.xfrm4_protocol, ptr %10, i32 0, i32 4
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5, %2
  %10 = phi ptr [ %7, %5 ], [ %3, %2 ]
  %11 = getelementptr inbounds %struct.xfrm4_protocol, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %0, i32 noundef %1) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %5

15:                                               ; preds = %9, %5, %2
  %16 = phi i32 [ -2, %2 ], [ -2, %5 ], [ 0, %9 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xfrm4_ah_rcv(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  store ptr null, ptr %2, align 8
  %3 = load volatile ptr, ptr @ah4_handlers, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %9

5:                                                ; preds = %9
  %6 = getelementptr inbounds %struct.xfrm4_protocol, ptr %10, i32 0, i32 4
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0) #4
  %13 = icmp eq i32 %12, -22
  br i1 %13, label %5, label %16

14:                                               ; preds = %5, %1
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %0, i32 noundef 3, i32 noundef 3, i32 noundef 0, ptr noundef %15) #4
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #4
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi i32 [ 0, %14 ], [ %12, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xfrm4_ah_err(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr @ah4_handlers, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %9

5:                                                ; preds = %9
  %6 = getelementptr inbounds %struct.xfrm4_protocol, ptr %10, i32 0, i32 4
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5, %2
  %10 = phi ptr [ %7, %5 ], [ %3, %2 ]
  %11 = getelementptr inbounds %struct.xfrm4_protocol, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %0, i32 noundef %1) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %5

15:                                               ; preds = %9, %5, %2
  %16 = phi i32 [ -2, %2 ], [ -2, %5 ], [ 0, %9 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xfrm4_ipcomp_rcv(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  store ptr null, ptr %2, align 8
  %3 = load volatile ptr, ptr @ipcomp4_handlers, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %9

5:                                                ; preds = %9
  %6 = getelementptr inbounds %struct.xfrm4_protocol, ptr %10, i32 0, i32 4
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0) #4
  %13 = icmp eq i32 %12, -22
  br i1 %13, label %5, label %16

14:                                               ; preds = %5, %1
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %0, i32 noundef 3, i32 noundef 3, i32 noundef 0, ptr noundef %15) #4
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #4
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi i32 [ 0, %14 ], [ %12, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xfrm4_ipcomp_err(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr @ipcomp4_handlers, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %9

5:                                                ; preds = %9
  %6 = getelementptr inbounds %struct.xfrm4_protocol, ptr %10, i32 0, i32 4
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5, %2
  %10 = phi ptr [ %7, %5 ], [ %3, %2 ]
  %11 = getelementptr inbounds %struct.xfrm4_protocol, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %0, i32 noundef %1) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %5

15:                                               ; preds = %9, %5, %2
  %16 = phi i32 [ -2, %2 ], [ -2, %5 ], [ 0, %9 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xfrm4_rcv_cb(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #0 {
  switch i8 %1, label %20 [
    i8 50, label %6
    i8 51, label %4
    i8 108, label %5
  ]

4:                                                ; preds = %3
  br label %6

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5, %4, %3
  %7 = phi ptr [ @ipcomp4_handlers, %5 ], [ @ah4_handlers, %4 ], [ @esp4_handlers, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %14

10:                                               ; preds = %14
  %11 = getelementptr inbounds %struct.xfrm4_protocol, ptr %15, i32 0, i32 4
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10, %6
  %15 = phi ptr [ %12, %10 ], [ %8, %6 ]
  %16 = getelementptr inbounds %struct.xfrm4_protocol, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %0, i32 noundef %2) #4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %10

20:                                               ; preds = %14, %10, %6, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %6 ], [ %18, %14 ], [ 0, %10 ]
  ret i32 %21
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2156389339}
