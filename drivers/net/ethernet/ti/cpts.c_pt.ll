; ModuleID = '/llk/IR/drivers/net/ethernet/ti/cpts.c_pt.bc'
source_filename = "../drivers/net/ethernet/ti/cpts.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpts_misc_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22cpts_misc_interrupt\22\09\09\09\09\09"
module asm "__kstrtabns_cpts_misc_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpts_rx_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22cpts_rx_timestamp\22\09\09\09\09\09"
module asm "__kstrtabns_cpts_rx_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpts_tx_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22cpts_tx_timestamp\22\09\09\09\09\09"
module asm "__kstrtabns_cpts_tx_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpts_register:\09\09\09\09\09"
module asm "\09.asciz \09\22cpts_register\22\09\09\09\09\09"
module asm "__kstrtabns_cpts_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpts_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22cpts_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_cpts_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpts_create:\09\09\09\09\09"
module asm "\09.asciz \09\22cpts_create\22\09\09\09\09\09"
module asm "__kstrtabns_cpts_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpts_release:\09\09\09\09\09"
module asm "\09.asciz \09\22cpts_release\22\09\09\09\09\09"
module asm "__kstrtabns_cpts_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ptp_clock_event = type { i32, i32, %union.anon.115 }
%union.anon.115 = type { %struct.pps_event_time }
%struct.pps_event_time = type { %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.cpts = type { ptr, ptr, i32, i32, %struct.ptp_clock_info, ptr, %struct.spinlock, i32, %struct.cyclecounter, %struct.timecounter, i32, ptr, %struct.list_head, %struct.list_head, [32 x %struct.cpts_event], i32, %struct.sk_buff_head, i64, i32, %struct.mutex, i8, %struct.completion, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.cpts_event = type { %struct.list_head, i32, i32, i32, i64 }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.cpsw_cpts = type { i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ptp_header = type <{ i8, i8, i16, i8, i8, [2 x i8], i64, i32, %struct.port_identity, i16, i8, i8 }>
%struct.port_identity = type { %struct.clock_identity, i16 }
%struct.clock_identity = type { [8 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ptp_clock_request = type { i32, %union.anon.91 }
%union.anon.91 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.92, %struct.ptp_clock_time, i32, i32, %union.anon.93 }
%union.anon.92 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.93 = type { %struct.ptp_clock_time }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }

@__kstrtab_cpts_misc_interrupt = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpts_misc_interrupt = external dso_local constant [0 x i8], align 1
@__ksymtab_cpts_misc_interrupt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpts_misc_interrupt to i32), ptr @__kstrtab_cpts_misc_interrupt, ptr @__kstrtabns_cpts_misc_interrupt }, section "___ksymtab_gpl+cpts_misc_interrupt", align 4
@__kstrtab_cpts_rx_timestamp = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpts_rx_timestamp = external dso_local constant [0 x i8], align 1
@__ksymtab_cpts_rx_timestamp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpts_rx_timestamp to i32), ptr @__kstrtab_cpts_rx_timestamp, ptr @__kstrtabns_cpts_rx_timestamp }, section "___ksymtab_gpl+cpts_rx_timestamp", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_cpts_tx_timestamp = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpts_tx_timestamp = external dso_local constant [0 x i8], align 1
@__ksymtab_cpts_tx_timestamp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpts_tx_timestamp to i32), ptr @__kstrtab_cpts_tx_timestamp, ptr @__kstrtabns_cpts_tx_timestamp }, section "___ksymtab_gpl+cpts_tx_timestamp", align 4
@__kstrtab_cpts_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpts_register = external dso_local constant [0 x i8], align 1
@__ksymtab_cpts_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpts_register to i32), ptr @__kstrtab_cpts_register, ptr @__kstrtabns_cpts_register }, section "___ksymtab_gpl+cpts_register", align 4
@.str = private unnamed_addr constant [31 x i8] c"drivers/net/ethernet/ti/cpts.c\00", align 1
@__kstrtab_cpts_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpts_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_cpts_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpts_unregister to i32), ptr @__kstrtab_cpts_unregister, ptr @__kstrtabns_cpts_unregister }, section "___ksymtab_gpl+cpts_unregister", align 4
@cpts_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"&cpts->ptp_clk_mutex\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"cpts\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to get cpts refclk %ld\0A\00", align 1
@cpts_info = internal unnamed_addr constant %struct.ptp_clock_info { ptr null, [32 x i8] c"CTPS timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1000000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @cpts_ptp_adjfreq, ptr null, ptr @cpts_ptp_adjtime, ptr null, ptr @cpts_ptp_gettimeex, ptr null, ptr @cpts_ptp_settime, ptr @cpts_ptp_enable, ptr null, ptr @cpts_overflow_check }, align 4
@__kstrtab_cpts_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpts_create = external dso_local constant [0 x i8], align 1
@__ksymtab_cpts_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpts_create to i32), ptr @__kstrtab_cpts_create, ptr @__kstrtabns_cpts_create }, section "___ksymtab_gpl+cpts_create", align 4
@__kstrtab_cpts_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpts_release = external dso_local constant [0 x i8], align 1
@__ksymtab_cpts_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpts_release to i32), ptr @__kstrtab_cpts_release, ptr @__kstrtabns_cpts_release }, section "___ksymtab_gpl+cpts_release", align 4
@__UNIQUE_ID_file324 = internal constant [39 x i8] c"cpts.file=drivers/net/ethernet/ti/cpts\00", section ".modinfo", align 1
@__UNIQUE_ID_license325 = internal constant [20 x i8] c"cpts.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description326 = internal constant [32 x i8] c"cpts.description=TI CPTS driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author327 = internal constant [55 x i8] c"cpts.author=Richard Cochran <richardcochran@gmail.com>\00", section ".modinfo", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"cpts: event pool empty\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"cpts: unknown event type\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"cpts_clock_mult\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"cpts_clock_shift\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"CPTS: Missing property in the DT.\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"cpts-refclk-mux\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"mux-clock %s must have parents\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"ti,mux-tbl\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"add clkmux unreg action %d\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"add clkmux provider unreg action %d\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"cpts: unable to obtain a time stamp\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"cpts: obtain a time stamp timeout\0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"cpts: overflow check period %lu (jiffies)\0A\00", align 1
@.str.18 = private unnamed_addr constant [70 x i8] c"CPTS: ref_clk_freq:%u calc_mult:%u calc_shift:%u error:%lld nsec/sec\0A\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author327, ptr @__UNIQUE_ID_description326, ptr @__UNIQUE_ID_file324, ptr @__UNIQUE_ID_license325, ptr @__ksymtab_cpts_create, ptr @__ksymtab_cpts_misc_interrupt, ptr @__ksymtab_cpts_register, ptr @__ksymtab_cpts_release, ptr @__ksymtab_cpts_rx_timestamp, ptr @__ksymtab_cpts_tx_timestamp, ptr @__ksymtab_cpts_unregister], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpts_misc_interrupt(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @cpts_fifo_read(ptr noundef %0, i32 noundef -1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpts_fifo_read(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ptp_clock_event, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 6
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 13
  %8 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 12
  %9 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 9
  %10 = getelementptr inbounds %struct.ptp_clock_event, ptr %3, i32 0, i32 2
  %11 = getelementptr inbounds %struct.ptp_clock_event, ptr %3, i32 0, i32 1
  %12 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 5
  %13 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 12, i32 1
  %14 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 17
  %15 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 18
  %16 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 8, i32 2
  %17 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 20
  %18 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 21
  br label %22

19:                                               ; preds = %106
  %20 = add nuw nsw i32 %25, 1
  %21 = icmp eq i32 %20, 16
  br i1 %21, label %109, label %22

22:                                               ; preds = %19, %2
  %23 = phi i1 [ false, %2 ], [ %107, %19 ]
  %24 = phi i32 [ -1, %2 ], [ %79, %19 ]
  %25 = phi i32 [ 0, %2 ], [ %20, %19 ]
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr inbounds %struct.cpsw_cpts, ptr %26, i32 0, i32 7
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #8, !srcloc !9
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %109, label %31

31:                                               ; preds = %22
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr inbounds %struct.cpsw_cpts, ptr %32, i32 0, i32 13
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #8, !srcloc !9
  %35 = load ptr, ptr %6, align 4
  %36 = getelementptr inbounds %struct.cpsw_cpts, ptr %35, i32 0, i32 12
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #8, !srcloc !9
  %38 = load ptr, ptr %6, align 4
  %39 = getelementptr inbounds %struct.cpsw_cpts, ptr %38, i32 0, i32 11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 1) #8, !srcloc !10
  %40 = load volatile ptr, ptr %7, align 4
  %41 = icmp eq ptr %40, %7
  br i1 %41, label %42, label %70

42:                                               ; preds = %31
  %43 = load ptr, ptr %8, align 8
  %44 = icmp eq ptr %43, %8
  br i1 %44, label %68, label %45

45:                                               ; preds = %62, %42
  %46 = phi ptr [ %63, %62 ], [ %7, %42 ]
  %47 = phi ptr [ %49, %62 ], [ %43, %42 ]
  %48 = phi i32 [ %64, %62 ], [ 0, %42 ]
  %49 = load ptr, ptr %47, align 4
  %50 = getelementptr inbounds %struct.cpts_event, ptr %47, i32 0, i32 1
  %51 = load i32, ptr %50, align 8
  %52 = load volatile i32, ptr @jiffies, align 64
  %53 = sub i32 %51, %52
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %62, label %55

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %57, ptr %58, align 4
  store volatile ptr %49, ptr %57, align 4
  store volatile ptr %47, ptr %47, align 4
  store ptr %47, ptr %56, align 4
  %59 = load ptr, ptr %7, align 4
  %60 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  store ptr %47, ptr %60, align 4
  store ptr %59, ptr %47, align 4
  store ptr %7, ptr %56, align 4
  store volatile ptr %47, ptr %7, align 4
  %61 = add i32 %48, 1
  br label %62

62:                                               ; preds = %55, %45
  %63 = phi ptr [ %47, %55 ], [ %46, %45 ]
  %64 = phi i32 [ %61, %55 ], [ %48, %45 ]
  %65 = icmp eq ptr %49, %8
  br i1 %65, label %66, label %45

66:                                               ; preds = %62
  %67 = icmp eq i32 %64, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %66, %42
  %69 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %69, ptr noundef nonnull @.str.4) #9
  br label %109

70:                                               ; preds = %66, %31
  %71 = phi ptr [ %63, %66 ], [ %40, %31 ]
  %72 = getelementptr inbounds %struct.cpts_event, ptr %71, i32 0, i32 2
  store i32 %34, ptr %72, align 4
  %73 = getelementptr inbounds %struct.cpts_event, ptr %71, i32 0, i32 3
  store i32 %37, ptr %73, align 8
  %74 = zext i32 %37 to i64
  %75 = call i64 @timecounter_cyc2time(ptr noundef %9, i64 noundef %74) #8
  %76 = getelementptr inbounds %struct.cpts_event, ptr %71, i32 0, i32 4
  store i64 %75, ptr %76, align 8
  %77 = load i32, ptr %72, align 4
  %78 = lshr i32 %77, 20
  %79 = and i32 %78, 15
  switch i32 %79, label %104 [
    i32 0, label %80
    i32 5, label %89
    i32 4, label %89
    i32 1, label %106
    i32 2, label %106
    i32 3, label %98
  ]

80:                                               ; preds = %70
  store volatile i64 %74, ptr %14, align 8
  %81 = call i64 @timecounter_read(ptr noundef %9) #8
  %82 = load i32, ptr %15, align 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store i32 %82, ptr %16, align 8
  store i32 0, ptr %15, align 8
  br label %85

85:                                               ; preds = %84, %80
  %86 = load i8, ptr %17, align 8, !range !11
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %85
  call void @complete(ptr noundef %18) #8
  br label %106

89:                                               ; preds = %70, %70
  %90 = load volatile i32, ptr @jiffies, align 64
  %91 = add i32 %90, 10
  %92 = getelementptr inbounds %struct.cpts_event, ptr %71, i32 0, i32 1
  store i32 %91, ptr %92, align 8
  %93 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = load ptr, ptr %71, align 4
  %96 = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  store ptr %94, ptr %96, align 4
  store volatile ptr %95, ptr %94, align 4
  store volatile ptr %71, ptr %71, align 4
  store ptr %71, ptr %93, align 4
  %97 = load ptr, ptr %13, align 4
  store ptr %71, ptr %13, align 4
  store ptr %8, ptr %71, align 4
  store ptr %97, ptr %93, align 4
  store volatile ptr %71, ptr %97, align 4
  br label %106

98:                                               ; preds = %70
  store i64 %75, ptr %10, align 8
  store i32 1, ptr %3, align 8
  %99 = load i32, ptr %72, align 4
  %100 = lshr i32 %99, 24
  %101 = and i32 %100, 31
  %102 = add nsw i32 %101, -1
  store i32 %102, ptr %11, align 4
  %103 = load ptr, ptr %12, align 4
  call void @ptp_clock_event(ptr noundef %103, ptr noundef nonnull %3) #8
  br label %106

104:                                              ; preds = %70
  %105 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.5) #9
  br label %106

106:                                              ; preds = %104, %98, %89, %88, %85, %70, %70
  %107 = phi i1 [ %23, %104 ], [ %23, %98 ], [ %23, %70 ], [ %23, %70 ], [ true, %89 ], [ %23, %85 ], [ %23, %88 ]
  %108 = icmp eq i32 %79, %1
  br i1 %108, label %109, label %19

109:                                              ; preds = %106, %68, %22, %19
  %110 = phi i32 [ %24, %68 ], [ %24, %22 ], [ %79, %19 ], [ 0, %106 ]
  %111 = phi i1 [ %23, %68 ], [ %23, %22 ], [ %107, %19 ], [ %107, %106 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #8
  %112 = load i8, ptr %17, align 8, !range !11
  %113 = icmp ne i8 %112, 0
  %114 = xor i1 %111, true
  %115 = select i1 %113, i1 true, i1 %114
  br i1 %115, label %119, label %116

116:                                              ; preds = %109
  %117 = load ptr, ptr %12, align 4
  %118 = call i32 @ptp_schedule_worker(ptr noundef %117, i32 noundef 0) #8
  br label %119

119:                                              ; preds = %116, %109
  %120 = icmp ne i32 %110, %1
  %121 = sext i1 %120 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpts_rx_timestamp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %5 to i32
  %9 = ptrtoint ptr %7 to i32
  %10 = sub i32 %8, %9
  %11 = trunc i32 %10 to i16
  %12 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  store i16 %11, ptr %12, align 2
  %13 = tail call i32 @ptp_classify_raw(ptr noundef %1) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %81, label %15

15:                                               ; preds = %2
  %16 = tail call ptr @ptp_parse_header(ptr noundef %1, i32 noundef %13) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %81, label %18

18:                                               ; preds = %15
  %19 = and i32 %13, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21, !prof !12

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.ptp_header, ptr %16, i32 0, i32 10
  %23 = load i8, ptr %22, align 1
  br label %27

24:                                               ; preds = %18
  %25 = load i8, ptr %16, align 1
  %26 = and i8 %25, 15
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i8 [ %23, %21 ], [ %26, %24 ]
  %29 = getelementptr inbounds %struct.ptp_header, ptr %16, i32 0, i32 9
  %30 = load i16, ptr %29, align 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #8
  %32 = and i8 %28, 15
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 16
  %35 = zext i16 %31 to i32
  %36 = or i32 %34, %35
  %37 = or i32 %36, 4194304
  store i32 %37, ptr %3, align 4
  %38 = tail call fastcc i32 @cpts_fifo_read(ptr noundef %0, i32 noundef -1) #8
  %39 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 6
  %40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %39) #8
  %41 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 12
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %67, label %44

44:                                               ; preds = %27
  %45 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 13
  br label %46

46:                                               ; preds = %65, %44
  %47 = phi ptr [ %42, %44 ], [ %48, %65 ]
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.cpts_event, ptr %47, i32 0, i32 1
  %50 = load i32, ptr %49, align 8
  %51 = load volatile i32, ptr @jiffies, align 64
  %52 = sub i32 %50, %51
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %60, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  store ptr %56, ptr %57, align 4
  store volatile ptr %48, ptr %56, align 4
  store volatile ptr %47, ptr %47, align 4
  store ptr %47, ptr %55, align 4
  %58 = load ptr, ptr %45, align 4
  %59 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %47, ptr %59, align 4
  store ptr %58, ptr %47, align 4
  store ptr %45, ptr %55, align 4
  store volatile ptr %47, ptr %45, align 4
  br label %65

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.cpts_event, ptr %47, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 16777215
  %64 = icmp eq i32 %63, %37
  br i1 %64, label %68, label %65

65:                                               ; preds = %60, %54
  %66 = icmp eq ptr %48, %41
  br i1 %66, label %67, label %46

67:                                               ; preds = %65, %27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %40) #8
  br label %81

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.cpts_event, ptr %47, i32 0, i32 4
  %70 = load i64, ptr %69, align 8
  %71 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  store ptr %72, ptr %73, align 4
  store volatile ptr %48, ptr %72, align 4
  store volatile ptr %47, ptr %47, align 4
  store ptr %47, ptr %71, align 4
  %74 = load ptr, ptr %45, align 4
  %75 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  store ptr %47, ptr %75, align 4
  store ptr %74, ptr %47, align 4
  store ptr %45, ptr %71, align 4
  store volatile ptr %47, ptr %45, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %40) #8
  %76 = icmp eq i64 %70, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.skb_shared_info, ptr %79, i32 0, i32 7
  store i64 %70, ptr %80, align 8
  br label %81

81:                                               ; preds = %77, %68, %67, %15, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpts_tx_timestamp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %54, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @ptp_classify_raw(ptr noundef %1) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %54, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @ptp_parse_header(ptr noundef %1, i32 noundef %11) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %54, label %16

16:                                               ; preds = %13
  %17 = and i32 %11, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19, !prof !12

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ptp_header, ptr %14, i32 0, i32 10
  %21 = load i8, ptr %20, align 1
  br label %25

22:                                               ; preds = %16
  %23 = load i8, ptr %14, align 1
  %24 = and i8 %23, 15
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i8 [ %21, %19 ], [ %24, %22 ]
  %27 = getelementptr inbounds %struct.ptp_header, ptr %14, i32 0, i32 9
  %28 = load i16, ptr %27, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #8
  %30 = and i8 %26, 15
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 16
  %33 = zext i16 %29 to i32
  %34 = or i32 %32, %33
  %35 = or i32 %34, 5242880
  store i32 %35, ptr %3, align 4
  %36 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #8, !srcloc !13
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #8, !srcloc !14
  %38 = extractvalue { i32, i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40, !prof !15

40:                                               ; preds = %25
  %41 = add i32 %38, 1
  %42 = or i32 %41, %38
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %46, label %44, !prof !12

44:                                               ; preds = %40, %25
  %45 = phi i32 [ 2, %25 ], [ 1, %40 ]
  tail call void @refcount_warn_saturate(ptr noundef %36, i32 noundef %45) #8
  br label %46

46:                                               ; preds = %44, %40
  %47 = load volatile i32, ptr @jiffies, align 64
  %48 = add i32 %47, 10
  %49 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 16
  tail call void @skb_queue_tail(ptr noundef %50, ptr noundef %1) #8
  %51 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 @ptp_schedule_worker(ptr noundef %52, i32 noundef 0) #8
  br label %54

54:                                               ; preds = %46, %13, %10, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_schedule_worker(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpts_register(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 16
  %3 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 16, i32 2
  store i32 0, ptr %3, align 4
  store ptr %2, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 1
  store ptr %2, ptr %4, align 4
  %5 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 16, i32 1
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 12
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 12, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 13
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 13, i32 1
  store ptr %8, ptr %9, align 4
  br label %10

10:                                               ; preds = %10, %1
  %11 = phi ptr [ %8, %1 ], [ %13, %10 ]
  %12 = phi i32 [ 0, %1 ], [ %16, %10 ]
  %13 = getelementptr %struct.cpts, ptr %0, i32 0, i32 14, i32 %12
  %14 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  store ptr %11, ptr %13, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %8, ptr %15, align 4
  store volatile ptr %13, ptr %8, align 4
  %16 = add nuw nsw i32 %12, 1
  %17 = icmp eq i32 %16, 32
  br i1 %17, label %18, label %10

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @clk_enable(ptr noundef %20) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.cpsw_cpts, ptr %25, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 1) #8, !srcloc !10
  %27 = load ptr, ptr %24, align 4
  %28 = getelementptr inbounds %struct.cpsw_cpts, ptr %27, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 1) #8, !srcloc !10
  %29 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 9
  %30 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 8
  %31 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #8
  tail call void @timecounter_init(ptr noundef %29, ptr noundef %30, i64 noundef %31) #8
  %32 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 4
  %33 = load ptr, ptr %0, align 8
  %34 = tail call ptr @ptp_clock_register(ptr noundef %32, ptr noundef %33) #8
  %35 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 5
  store ptr %34, ptr %35, align 4
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = ptrtoint ptr %34 to i32
  store ptr null, ptr %35, align 4
  %39 = load ptr, ptr %19, align 4
  tail call void @clk_disable(ptr noundef %39) #8
  br label %47

40:                                               ; preds = %23
  %41 = tail call i32 @ptp_clock_index(ptr noundef %34) #8
  %42 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 10
  store i32 %41, ptr %42, align 8
  %43 = load ptr, ptr %35, align 4
  %44 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 15
  %45 = load i32, ptr %44, align 8
  %46 = tail call i32 @ptp_schedule_worker(ptr noundef %43, i32 noundef %45) #8
  br label %47

47:                                               ; preds = %40, %37, %18
  %48 = phi i32 [ %38, %37 ], [ 0, %40 ], [ %21, %18 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @timecounter_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpts_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !15

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 599, i32 noundef 9, ptr noundef null) #8
  br label %17

6:                                                ; preds = %1
  %7 = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %3) #8
  store ptr null, ptr %2, align 4
  %8 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 10
  store i32 -1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.cpsw_cpts, ptr %10, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #8, !srcloc !10
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.cpsw_cpts, ptr %12, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #8, !srcloc !10
  %14 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 16
  tail call void @skb_queue_purge(ptr noundef %14) #8
  %15 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %16) #8
  br label %17

17:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cpts_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 1328, i32 noundef 3520) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %158, label %8

8:                                                ; preds = %4
  store ptr %0, ptr %6, align 8
  %9 = getelementptr inbounds %struct.cpts, ptr %6, i32 0, i32 1
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.cpts, ptr %6, i32 0, i32 20
  store i8 1, ptr %10, align 8
  %11 = getelementptr inbounds %struct.cpts, ptr %6, i32 0, i32 6
  store i32 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.cpts, ptr %6, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef nonnull @cpts_create.__key) #8
  %13 = getelementptr inbounds %struct.cpts, ptr %6, i32 0, i32 21
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.cpts, ptr %6, i32 0, i32 21, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %14, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_completion.__key) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %15 = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #8
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = load i32, ptr %5, align 4
  %19 = getelementptr inbounds %struct.cpts, ptr %6, i32 0, i32 8, i32 2
  store i32 %18, ptr %19, align 8
  br label %20

20:                                               ; preds = %17, %8
  %21 = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #8
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.cpts, ptr %6, i32 0, i32 8, i32 3
  %25 = load i32, ptr %24, align 4
  br label %29

26:                                               ; preds = %20
  %27 = load i32, ptr %5, align 4
  %28 = getelementptr inbounds %struct.cpts, ptr %6, i32 0, i32 8, i32 3
  store i32 %27, ptr %28, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i32 [ %25, %23 ], [ %27, %26 ]
  %31 = getelementptr inbounds %struct.cpts, ptr %6, i32 0, i32 8, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds %struct.cpts, ptr %6, i32 0, i32 8, i32 3
  %35 = icmp eq i32 %30, 0
  br i1 %33, label %37, label %36

36:                                               ; preds = %29
  br i1 %35, label %86, label %38

37:                                               ; preds = %29
  br i1 %35, label %38, label %86

38:                                               ; preds = %37, %36
  %39 = call ptr @of_get_child_by_name(ptr noundef %2, ptr noundef nonnull @.str.10) #8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %88, label %41

41:                                               ; preds = %38
  %42 = call i32 @of_clk_get_parent_count(ptr noundef nonnull %39) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load ptr, ptr %6, align 8
  %46 = load ptr, ptr %39, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.11, ptr noundef %46) #9
  br label %92

47:                                               ; preds = %41
  %48 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %42, i32 4) #8
  %49 = extractvalue { i32, i1 } %48, 1
  br i1 %49, label %92, label %50, !prof !15

50:                                               ; preds = %47
  %51 = load ptr, ptr %6, align 8
  %52 = extractvalue { i32, i1 } %48, 0
  %53 = call noalias ptr @devm_kmalloc(ptr noundef %51, i32 noundef %52, i32 noundef 3520) #8
  %54 = load ptr, ptr %6, align 8
  %55 = call noalias ptr @devm_kmalloc(ptr noundef %54, i32 noundef %52, i32 noundef 3520) #8
  %56 = icmp ne ptr %55, null
  %57 = icmp ne ptr %53, null
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %92

59:                                               ; preds = %50
  %60 = call i32 @of_clk_parent_fill(ptr noundef nonnull %39, ptr noundef nonnull %53, i32 noundef %42) #8
  %61 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %39, ptr noundef nonnull @.str.12, ptr noundef nonnull %55, i32 noundef %42, i32 noundef %42) #8
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %92, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %6, align 8
  %65 = load ptr, ptr %39, align 4
  %66 = trunc i32 %42 to i8
  %67 = load ptr, ptr %9, align 4
  %68 = getelementptr inbounds %struct.cpsw_cpts, ptr %67, i32 0, i32 2
  %69 = call ptr @__clk_hw_register_mux(ptr noundef %64, ptr noundef null, ptr noundef %65, i8 noundef zeroext %66, ptr noundef nonnull %53, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %68, i8 noundef zeroext 0, i32 noundef 31, i8 noundef zeroext 0, ptr noundef nonnull %55, ptr noundef null) #8
  %70 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %94, label %71

71:                                               ; preds = %63
  %72 = load ptr, ptr %6, align 8
  %73 = call i32 @devm_add_action(ptr noundef %72, ptr noundef nonnull @clk_hw_unregister_mux, ptr noundef %69) #8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  call void @clk_hw_unregister_mux(ptr noundef %69) #8, !callees !16
  %76 = load ptr, ptr %6, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.13, i32 noundef %73) #9
  br label %92

77:                                               ; preds = %71
  %78 = call i32 @of_clk_add_hw_provider(ptr noundef nonnull %39, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %69) #8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = load ptr, ptr %6, align 8
  %82 = call i32 @devm_add_action(ptr noundef %81, ptr noundef nonnull @of_clk_del_provider, ptr noundef nonnull %39) #8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  call void @of_clk_del_provider(ptr noundef nonnull %39) #8, !callees !16
  %85 = load ptr, ptr %6, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.14, i32 noundef %82) #9
  br label %92

86:                                               ; preds = %37, %36
  %87 = load ptr, ptr %6, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %96

88:                                               ; preds = %80, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %89 = call ptr @devm_get_clk_from_child(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.2) #8
  %90 = getelementptr inbounds %struct.cpts, ptr %6, i32 0, i32 11
  store ptr %89, ptr %90, align 4
  %91 = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %91, label %99, label %101

92:                                               ; preds = %84, %77, %75, %59, %50, %47, %44
  %93 = phi i32 [ -12, %47 ], [ -12, %50 ], [ %82, %84 ], [ %78, %77 ], [ %73, %75 ], [ %61, %59 ], [ -22, %44 ]
  call void @of_node_put(ptr noundef nonnull %39) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %96

94:                                               ; preds = %63
  %95 = ptrtoint ptr %69 to i32
  call void @of_node_put(ptr noundef nonnull %39) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %96

96:                                               ; preds = %94, %92, %86
  %97 = phi i32 [ -22, %86 ], [ %95, %94 ], [ %93, %92 ]
  %98 = inttoptr i32 %97 to ptr
  br label %158

99:                                               ; preds = %88
  %100 = call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.2) #8
  store ptr %100, ptr %90, align 4
  br label %101

101:                                              ; preds = %99, %88
  %102 = phi ptr [ %100, %99 ], [ %89, %88 ]
  %103 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = ptrtoint ptr %102 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %105) #9
  %106 = load ptr, ptr %90, align 4
  br label %158

107:                                              ; preds = %101
  %108 = call i32 @clk_prepare(ptr noundef %102) #8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = inttoptr i32 %108 to ptr
  br label %158

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.cpts, ptr %6, i32 0, i32 8
  store ptr @cpts_systim_read, ptr %113, align 8
  %114 = getelementptr inbounds %struct.cpts, ptr %6, i32 0, i32 8, i32 1
  store i64 4294967295, ptr %114, align 8
  %115 = getelementptr inbounds %struct.cpts, ptr %6, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(108) %115, ptr noundef nonnull align 4 dereferenceable(108) @cpts_info, i32 108, i1 false)
  %116 = getelementptr inbounds %struct.cpts, ptr %6, i32 0, i32 10
  store i32 -1, ptr %116, align 8
  %117 = icmp eq i32 %3, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.cpts, ptr %6, i32 0, i32 4, i32 4
  store i32 %3, ptr %119, align 4
  br label %120

120:                                              ; preds = %118, %112
  %121 = load ptr, ptr %90, align 4
  %122 = call i32 @clk_get_rate(ptr noundef %121) #8
  %123 = load i64, ptr %114, align 8
  %124 = icmp ult i64 %123, 4294967296
  br i1 %124, label %125, label %129, !prof !12

125:                                              ; preds = %120
  %126 = trunc i64 %123 to i32
  %127 = udiv i32 %126, %122
  %128 = zext i32 %127 to i64
  br label %132

129:                                              ; preds = %120
  %130 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %122, i64 %123) #10, !srcloc !17
  %131 = extractvalue { i64, i64 } %130, 1
  br label %132

132:                                              ; preds = %129, %125
  %133 = phi i64 [ %128, %125 ], [ %131, %129 ]
  %134 = call i64 @llvm.umin.i64(i64 %133, i64 10) #8
  %135 = trunc i64 %134 to i32
  %136 = mul nuw nsw i32 %135, 50
  %137 = getelementptr inbounds %struct.cpts, ptr %6, i32 0, i32 15
  store i32 %136, ptr %137, align 8
  %138 = load ptr, ptr %6, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %138, ptr noundef nonnull @.str.17, i32 noundef %136) #9
  %139 = load i32, ptr %31, align 8
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %155

141:                                              ; preds = %132
  %142 = load i32, ptr %34, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %141
  call void @clocks_calc_mult_shift(ptr noundef %31, ptr noundef %34, i32 noundef %122, i32 noundef 1000000000, i32 noundef %135) #8
  %145 = zext i32 %122 to i64
  %146 = load i32, ptr %31, align 8
  %147 = zext i32 %146 to i64
  %148 = mul nuw i64 %147, %145
  %149 = load i32, ptr %34, align 4
  %150 = zext i32 %149 to i64
  %151 = lshr i64 %148, %150
  %152 = load ptr, ptr %6, align 8
  %153 = add i64 %151, -1000000000
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %152, ptr noundef nonnull @.str.18, i32 noundef %122, i32 noundef %146, i32 noundef %149, i64 noundef %153) #9
  %154 = load i32, ptr %31, align 8
  br label %155

155:                                              ; preds = %144, %141, %132
  %156 = phi i32 [ %139, %132 ], [ 0, %141 ], [ %154, %144 ]
  %157 = getelementptr inbounds %struct.cpts, ptr %6, i32 0, i32 7
  store i32 %156, ptr %157, align 4
  br label %158

158:                                              ; preds = %155, %110, %104, %96, %4
  %159 = phi ptr [ %98, %96 ], [ %106, %104 ], [ %111, %110 ], [ %6, %155 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %159
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_get_clk_from_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i64 @cpts_systim_read(ptr noundef %0) #6 {
  %2 = getelementptr i8, ptr %0, i32 1136
  %3 = load volatile i64, ptr %2, align 8
  ret i64 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpts_release(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !15

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 810, i32 noundef 9, ptr noundef null) #8
  br label %9

8:                                                ; preds = %3
  tail call void @clk_unprepare(ptr noundef nonnull %5) #8
  br label %9

9:                                                ; preds = %8, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_cyc2time(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_clock_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_classify_raw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_parse_header(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister_mux(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpts_ptp_adjfreq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 %1, 0
  %4 = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %5 = getelementptr i8, ptr %0, i32 116
  %6 = load i32, ptr %5, align 4
  %7 = zext i32 %6 to i64
  %8 = sext i32 %4 to i64
  %9 = mul nsw i64 %7, %8
  %10 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %9, i32 0) #10, !srcloc !18
  %11 = extractvalue { i64, i32 } %10, 0
  %12 = extractvalue { i64, i32 } %10, 1
  %13 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %9, i64 %11, i32 %12) #10, !srcloc !19
  %14 = extractvalue { i64, i32 } %13, 0
  %15 = lshr i64 %14, 29
  %16 = trunc i64 %15 to i32
  %17 = getelementptr i8, ptr %0, i32 1268
  tail call void @mutex_lock(ptr noundef %17) #8
  %18 = sub i32 0, %16
  %19 = select i1 %3, i32 %18, i32 %16
  %20 = add i32 %19, %6
  %21 = getelementptr i8, ptr %0, i32 -16
  %22 = getelementptr i8, ptr %0, i32 1264
  store i32 %20, ptr %22, align 8
  tail call fastcc void @cpts_update_cur_time(ptr noundef %21, i32 noundef 0, ptr noundef null)
  tail call void @mutex_unlock(ptr noundef %17) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpts_ptp_adjtime(ptr noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1268
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr i8, ptr %0, i32 160
  %5 = load i64, ptr %4, align 8
  %6 = add i64 %5, %1
  store i64 %6, ptr %4, align 8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpts_ptp_gettimeex(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = getelementptr i8, ptr %0, i32 1268
  tail call void @mutex_lock(ptr noundef %6) #8
  tail call fastcc void @cpts_update_cur_time(ptr noundef %5, i32 noundef 0, ptr noundef %2)
  %7 = getelementptr i8, ptr %0, i32 144
  %8 = tail call i64 @timecounter_read(ptr noundef %7) #8
  tail call void @mutex_unlock(ptr noundef %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %4, i64 noundef %8) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpts_ptp_settime(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i64, ptr %1, align 8
  %4 = icmp sgt i64 %3, 9223372035
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = icmp slt i64 %3, -9223372035
  br i1 %6, label %13, label %7

7:                                                ; preds = %5
  %8 = mul nsw i64 %3, 1000000000
  %9 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 8
  %11 = sext i32 %10 to i64
  %12 = add i64 %8, %11
  br label %13

13:                                               ; preds = %7, %5, %2
  %14 = phi i64 [ %12, %7 ], [ 9223372036854775807, %2 ], [ -9223372036854775808, %5 ]
  %15 = getelementptr i8, ptr %0, i32 1268
  tail call void @mutex_lock(ptr noundef %15) #8
  %16 = getelementptr i8, ptr %0, i32 144
  %17 = getelementptr i8, ptr %0, i32 120
  tail call void @timecounter_init(ptr noundef %16, ptr noundef %17, i64 noundef %14) #8
  tail call void @mutex_unlock(ptr noundef %15) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpts_ptp_enable(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = load i32, ptr %1, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %39

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ptp_clock_request, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr i8, ptr %0, i32 1308
  %10 = load i32, ptr %9, align 4
  %11 = shl nuw i32 1, %8
  %12 = and i32 %10, %11
  %13 = lshr i32 %12, %8
  %14 = icmp eq i32 %13, %2
  br i1 %14, label %39, label %15

15:                                               ; preds = %6
  %16 = getelementptr i8, ptr %0, i32 1268
  tail call void @mutex_lock(ptr noundef %16) #8
  %17 = getelementptr i8, ptr %0, i32 -12
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.cpsw_cpts, ptr %18, i32 0, i32 1
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !9
  %21 = icmp eq i32 %2, 0
  %22 = add i32 %8, 8
  %23 = shl nuw i32 1, %22
  br i1 %21, label %28, label %24

24:                                               ; preds = %15
  %25 = or i32 %20, %23
  %26 = load i32, ptr %9, align 4
  %27 = or i32 %26, %11
  br label %34

28:                                               ; preds = %15
  %29 = xor i32 %23, -1
  %30 = and i32 %20, %29
  %31 = xor i32 %11, -1
  %32 = load i32, ptr %9, align 4
  %33 = and i32 %32, %31
  br label %34

34:                                               ; preds = %28, %24
  %35 = phi i32 [ %33, %28 ], [ %27, %24 ]
  %36 = phi i32 [ %30, %28 ], [ %25, %24 ]
  store i32 %35, ptr %9, align 4
  %37 = load ptr, ptr %17, align 4
  %38 = getelementptr inbounds %struct.cpsw_cpts, ptr %37, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #8, !srcloc !10
  tail call void @mutex_unlock(ptr noundef %16) #8
  br label %39

39:                                               ; preds = %34, %6, %3
  %40 = phi i32 [ -95, %3 ], [ 0, %6 ], [ 0, %34 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpts_overflow_check(ptr noundef %0) #0 {
  %2 = alloca %struct.sk_buff_head, align 4
  %3 = alloca %struct.skb_shared_hwtstamps, align 8
  %4 = alloca %struct.list_head, align 8
  %5 = alloca %struct.list_head, align 8
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = getelementptr i8, ptr %0, i32 1232
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr i8, ptr %0, i32 1268
  tail call void @mutex_lock(ptr noundef %9) #8
  tail call fastcc void @cpts_update_cur_time(ptr noundef %6, i32 noundef -1, ptr noundef null)
  %10 = getelementptr i8, ptr %0, i32 144
  %11 = tail call i64 @timecounter_read(ptr noundef %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store ptr %4, ptr %4, align 8
  %12 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store ptr %5, ptr %5, align 8
  %13 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %13, align 4
  %14 = getelementptr i8, ptr %0, i32 112
  %15 = call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #8
  %16 = getelementptr i8, ptr %0, i32 192
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr i8, ptr %0, i32 196
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %5, ptr %23, align 4
  store ptr %17, ptr %5, align 8
  store ptr %20, ptr %22, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %16, ptr %16, align 4
  store ptr %16, ptr %21, align 4
  br label %25

25:                                               ; preds = %19, %1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #8
  %26 = load ptr, ptr %5, align 8
  %27 = icmp eq ptr %26, %5
  br i1 %27, label %115, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds i8, ptr %2, i32 12
  %30 = getelementptr inbounds %struct.anon.95, ptr %2, i32 0, i32 1
  %31 = getelementptr inbounds %struct.sk_buff_head, ptr %2, i32 0, i32 1
  %32 = getelementptr i8, ptr %0, i32 1236
  %33 = getelementptr i8, ptr %0, i32 1248
  %34 = getelementptr i8, ptr %0, i32 1240
  %35 = getelementptr i8, ptr %0, i32 1244
  br label %36

36:                                               ; preds = %113, %28
  %37 = phi ptr [ %26, %28 ], [ %38, %113 ]
  %38 = load ptr, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  store i32 0, ptr %29, align 4, !annotation !8
  %39 = getelementptr inbounds %struct.cpts_event, ptr %37, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 16777215
  store ptr %2, ptr %2, align 4
  store ptr %2, ptr %30, align 4
  store i32 0, ptr %31, align 4
  %42 = call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #8
  %43 = load ptr, ptr %32, align 4
  %44 = icmp eq ptr %43, %32
  br i1 %44, label %53, label %45

45:                                               ; preds = %36
  %46 = load ptr, ptr %2, align 4
  %47 = load ptr, ptr %34, align 4
  %48 = getelementptr inbounds %struct.anon.41, ptr %43, i32 0, i32 1
  store volatile ptr %2, ptr %48, align 4
  store volatile ptr %43, ptr %2, align 8
  store volatile ptr %46, ptr %47, align 8
  %49 = getelementptr inbounds %struct.anon.41, ptr %46, i32 0, i32 1
  store volatile ptr %47, ptr %49, align 4
  %50 = load i32, ptr %35, align 4
  %51 = load i32, ptr %31, align 4
  %52 = add i32 %51, %50
  store i32 %52, ptr %31, align 4
  store ptr %32, ptr %32, align 4
  store ptr %32, ptr %34, align 4
  store i32 0, ptr %35, align 4
  br label %53

53:                                               ; preds = %45, %36
  call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %42) #8
  %54 = load ptr, ptr %2, align 4
  %55 = icmp eq ptr %54, %2
  br i1 %55, label %86, label %56

56:                                               ; preds = %84, %53
  %57 = phi ptr [ %58, %84 ], [ %54, %53 ]
  %58 = load ptr, ptr %57, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %59 = getelementptr inbounds %struct.sk_buff, ptr %57, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %41, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.cpts_event, ptr %37, i32 0, i32 4
  %64 = load i64, ptr %63, align 8
  store i64 %64, ptr %3, align 8
  call void @skb_tstamp_tx(ptr noundef %57, ptr noundef nonnull %3) #8
  %65 = load i32, ptr %31, align 4
  %66 = add i32 %65, -1
  store volatile i32 %66, ptr %31, align 4
  %67 = load ptr, ptr %57, align 8
  %68 = getelementptr inbounds %struct.anon.41, ptr %57, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  store ptr null, ptr %68, align 4
  store ptr null, ptr %57, align 8
  %70 = getelementptr inbounds %struct.anon.41, ptr %67, i32 0, i32 1
  store volatile ptr %69, ptr %70, align 4
  store volatile ptr %67, ptr %69, align 8
  call void @__dev_kfree_skb_any(ptr noundef %57, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  br label %86

71:                                               ; preds = %56
  %72 = getelementptr inbounds %struct.sk_buff, ptr %57, i32 0, i32 3, i32 4
  %73 = load i32, ptr %72, align 4
  %74 = load volatile i32, ptr @jiffies, align 64
  %75 = sub i32 %73, %74
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load i32, ptr %31, align 4
  %79 = add i32 %78, -1
  store volatile i32 %79, ptr %31, align 4
  %80 = load ptr, ptr %57, align 8
  %81 = getelementptr inbounds %struct.anon.41, ptr %57, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  store ptr null, ptr %81, align 4
  store ptr null, ptr %57, align 8
  %83 = getelementptr inbounds %struct.anon.41, ptr %80, i32 0, i32 1
  store volatile ptr %82, ptr %83, align 4
  store volatile ptr %80, ptr %82, align 8
  call void @__dev_kfree_skb_any(ptr noundef %57, i32 noundef 0) #8
  br label %84

84:                                               ; preds = %77, %71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  %85 = icmp eq ptr %58, %2
  br i1 %85, label %86, label %56

86:                                               ; preds = %84, %62, %53
  %87 = phi i1 [ true, %62 ], [ false, %53 ], [ false, %84 ]
  %88 = call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #8
  %89 = load ptr, ptr %2, align 4
  %90 = icmp eq ptr %89, %2
  br i1 %90, label %99, label %91

91:                                               ; preds = %86
  %92 = load ptr, ptr %32, align 4
  %93 = load ptr, ptr %30, align 4
  %94 = getelementptr inbounds %struct.anon.41, ptr %89, i32 0, i32 1
  store volatile ptr %32, ptr %94, align 4
  store volatile ptr %89, ptr %32, align 8
  store volatile ptr %92, ptr %93, align 8
  %95 = getelementptr inbounds %struct.anon.41, ptr %92, i32 0, i32 1
  store volatile ptr %93, ptr %95, align 4
  %96 = load i32, ptr %31, align 4
  %97 = load i32, ptr %35, align 4
  %98 = add i32 %97, %96
  store i32 %98, ptr %35, align 4
  br label %99

99:                                               ; preds = %91, %86
  call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %88) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  br i1 %87, label %106, label %100

100:                                              ; preds = %99
  %101 = getelementptr inbounds %struct.cpts_event, ptr %37, i32 0, i32 1
  %102 = load i32, ptr %101, align 8
  %103 = load volatile i32, ptr @jiffies, align 64
  %104 = sub i32 %102, %103
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %100, %99
  %107 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = load ptr, ptr %37, align 4
  %110 = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  store ptr %108, ptr %110, align 4
  store volatile ptr %109, ptr %108, align 4
  store volatile ptr %37, ptr %37, align 4
  %111 = load ptr, ptr %4, align 8
  %112 = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  store ptr %37, ptr %112, align 4
  store ptr %111, ptr %37, align 4
  store ptr %4, ptr %107, align 4
  store volatile ptr %37, ptr %4, align 8
  br label %113

113:                                              ; preds = %106, %100
  %114 = icmp eq ptr %38, %5
  br i1 %114, label %115, label %36

115:                                              ; preds = %113, %25
  %116 = call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #8
  %117 = load volatile ptr, ptr %5, align 8
  %118 = icmp eq ptr %117, %5
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = getelementptr i8, ptr %0, i32 196
  %121 = load ptr, ptr %120, align 4
  %122 = load ptr, ptr %13, align 4
  %123 = getelementptr inbounds %struct.list_head, ptr %117, i32 0, i32 1
  store ptr %121, ptr %123, align 4
  store ptr %117, ptr %121, align 4
  store ptr %16, ptr %122, align 4
  store ptr %122, ptr %120, align 4
  br label %124

124:                                              ; preds = %119, %115
  %125 = load volatile ptr, ptr %4, align 8
  %126 = icmp eq ptr %125, %4
  br i1 %126, label %133, label %127

127:                                              ; preds = %124
  %128 = getelementptr i8, ptr %0, i32 200
  %129 = getelementptr i8, ptr %0, i32 204
  %130 = load ptr, ptr %129, align 4
  %131 = load ptr, ptr %12, align 4
  %132 = getelementptr inbounds %struct.list_head, ptr %125, i32 0, i32 1
  store ptr %130, ptr %132, align 4
  store ptr %125, ptr %130, align 4
  store ptr %128, ptr %131, align 4
  store ptr %131, ptr %129, align 4
  br label %133

133:                                              ; preds = %127, %124
  call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %116) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  %134 = getelementptr i8, ptr %0, i32 1236
  %135 = getelementptr i8, ptr %0, i32 1248
  %136 = call i32 @_raw_spin_lock_irqsave(ptr noundef %135) #8
  %137 = load ptr, ptr %134, align 4
  %138 = icmp eq ptr %137, %134
  br i1 %138, label %162, label %139

139:                                              ; preds = %133
  %140 = getelementptr i8, ptr %0, i32 1244
  br label %141

141:                                              ; preds = %156, %139
  %142 = phi ptr [ %137, %139 ], [ %143, %156 ]
  %143 = load ptr, ptr %142, align 8
  %144 = getelementptr inbounds %struct.sk_buff, ptr %142, i32 0, i32 3, i32 4
  %145 = load i32, ptr %144, align 4
  %146 = load volatile i32, ptr @jiffies, align 64
  %147 = sub i32 %145, %146
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %141
  %150 = load i32, ptr %140, align 4
  %151 = add i32 %150, -1
  store volatile i32 %151, ptr %140, align 4
  %152 = load ptr, ptr %142, align 8
  %153 = getelementptr inbounds %struct.anon.41, ptr %142, i32 0, i32 1
  %154 = load ptr, ptr %153, align 4
  store ptr null, ptr %153, align 4
  store ptr null, ptr %142, align 8
  %155 = getelementptr inbounds %struct.anon.41, ptr %152, i32 0, i32 1
  store volatile ptr %154, ptr %155, align 4
  store volatile ptr %152, ptr %154, align 8
  call void @__dev_kfree_skb_any(ptr noundef %142, i32 noundef 0) #8
  br label %156

156:                                              ; preds = %149, %141
  %157 = icmp eq ptr %143, %134
  br i1 %157, label %158, label %141

158:                                              ; preds = %156
  %159 = load ptr, ptr %134, align 4
  %160 = icmp eq ptr %159, %134
  %161 = select i1 %160, i32 %8, i32 1
  br label %162

162:                                              ; preds = %158, %133
  %163 = phi i32 [ %8, %133 ], [ %161, %158 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %135, i32 noundef %136) #8
  call void @mutex_unlock(ptr noundef %9) #8
  ret i32 %163
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpts_update_cur_time(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 21
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 6
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %7 = icmp eq ptr %2, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %2) #8
  %9 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.cpsw_cpts, ptr %10, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 1) #8, !srcloc !10
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.cpsw_cpts, ptr %12, i32 0, i32 3
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !9
  %15 = getelementptr inbounds %struct.ptp_system_timestamp, ptr %2, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %15) #8
  br label %23

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.cpsw_cpts, ptr %18, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 1) #8, !srcloc !10
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr inbounds %struct.cpsw_cpts, ptr %20, i32 0, i32 3
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !9
  br label %23

23:                                               ; preds = %16, %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  %24 = getelementptr inbounds %struct.cpts, ptr %0, i32 0, i32 20
  %25 = load i8, ptr %24, align 8, !range !11
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = tail call fastcc i32 @cpts_fifo_read(ptr noundef %0, i32 noundef %1)
  %29 = icmp ne i32 %28, 0
  %30 = icmp ne i32 %1, -1
  %31 = and i1 %30, %29
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.15) #9
  br label %34

34:                                               ; preds = %32, %27
  %35 = load i8, ptr %24, align 8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34, %23
  %38 = tail call i32 @wait_for_completion_timeout(ptr noundef %4, i32 noundef 100) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.16) #9
  br label %42

42:                                               ; preds = %40, %37, %34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clocks_calc_mult_shift(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

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
!9 = !{i64 5237823}
!10 = !{i64 5237405}
!11 = !{i8 0, i8 2}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 486176, i64 2147976147, i64 2147976173, i64 2147976220, i64 2147976242, i64 2147976270, i64 2147976290}
!14 = !{i64 2147989817, i64 2147989849, i64 2147989878, i64 2147989912, i64 2147989943, i64 2147989966}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{ptr @clk_hw_unregister_mux, ptr @of_clk_del_provider}
!17 = !{i64 2148670944, i64 2148671224, i64 2148671558, i64 2148671892}
!18 = !{i64 1185400, i64 1185427, i64 1185449, i64 1185477}
!19 = !{i64 1185808, i64 1185835, i64 1185868, i64 1185889, i64 1185916, i64 1185942}
