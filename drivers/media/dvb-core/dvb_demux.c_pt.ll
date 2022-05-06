; ModuleID = '/llk/IR/drivers/media/dvb-core/dvb_demux.c_pt.bc'
source_filename = "../drivers/media/dvb-core/dvb_demux.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_dmx_swfilter_packets:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_dmx_swfilter_packets\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_dmx_swfilter_packets:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_dmx_swfilter:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_dmx_swfilter\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_dmx_swfilter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_dmx_swfilter_204:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_dmx_swfilter_204\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_dmx_swfilter_204:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_dmx_swfilter_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_dmx_swfilter_raw\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_dmx_swfilter_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_dmx_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_dmx_init\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_dmx_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_dmx_release:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_dmx_release\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_dmx_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.57 }
%union.anon.57 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.dvb_demux_feed = type { %union.anon.62, %union.anon.63, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.62 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.63 = type { ptr }
%struct.dvb_demux_filter = type { %struct.dmx_section_filter, [18 x i8], [18 x i8], i8, ptr, ptr, i32, i32, i32, i16 }
%struct.dmx_section_filter = type { [18 x i8], [18 x i8], [18 x i8], ptr, ptr }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dmx_ts_feed = type { i32, ptr, ptr, ptr, ptr, ptr }

@__param_str_dvb_demux_tscheck = internal constant [18 x i8] c"dvb_demux_tscheck\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_demux_tscheck = internal global i32 0, align 4
@__param_dvb_demux_tscheck = internal constant %struct.kernel_param { ptr @__param_str_dvb_demux_tscheck, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.57 { ptr @dvb_demux_tscheck } }, section "__param", align 4
@__UNIQUE_ID_dvb_demux_tschecktype198 = internal constant [31 x i8] c"parmtype=dvb_demux_tscheck:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dvb_demux_tscheck199 = internal constant [72 x i8] c"parm=dvb_demux_tscheck:enable transport stream continuity and TEI check\00", section ".modinfo", align 1
@__param_str_dvb_demux_speedcheck = internal constant [21 x i8] c"dvb_demux_speedcheck\00", align 1
@dvb_demux_speedcheck = internal global i32 0, align 4
@__param_dvb_demux_speedcheck = internal constant %struct.kernel_param { ptr @__param_str_dvb_demux_speedcheck, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.57 { ptr @dvb_demux_speedcheck } }, section "__param", align 4
@__UNIQUE_ID_dvb_demux_speedchecktype200 = internal constant [34 x i8] c"parmtype=dvb_demux_speedcheck:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dvb_demux_speedcheck201 = internal constant [62 x i8] c"parm=dvb_demux_speedcheck:enable transport stream speed check\00", section ".modinfo", align 1
@__param_str_dvb_demux_feed_err_pkts = internal constant [24 x i8] c"dvb_demux_feed_err_pkts\00", align 1
@dvb_demux_feed_err_pkts = internal global i32 1, align 4
@__param_dvb_demux_feed_err_pkts = internal constant %struct.kernel_param { ptr @__param_str_dvb_demux_feed_err_pkts, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.57 { ptr @dvb_demux_feed_err_pkts } }, section "__param", align 4
@__UNIQUE_ID_dvb_demux_feed_err_pktstype202 = internal constant [37 x i8] c"parmtype=dvb_demux_feed_err_pkts:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dvb_demux_feed_err_pkts203 = internal constant [93 x i8] c"parm=dvb_demux_feed_err_pkts:when set to 0, drop packets with the TEI bit set (1 by default)\00", section ".modinfo", align 1
@__kstrtab_dvb_dmx_swfilter_packets = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_dmx_swfilter_packets = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_dmx_swfilter_packets = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_dmx_swfilter_packets to i32), ptr @__kstrtab_dvb_dmx_swfilter_packets, ptr @__kstrtabns_dvb_dmx_swfilter_packets }, section "___ksymtab+dvb_dmx_swfilter_packets", align 4
@__kstrtab_dvb_dmx_swfilter = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_dmx_swfilter = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_dmx_swfilter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_dmx_swfilter to i32), ptr @__kstrtab_dvb_dmx_swfilter, ptr @__kstrtabns_dvb_dmx_swfilter }, section "___ksymtab+dvb_dmx_swfilter", align 4
@__kstrtab_dvb_dmx_swfilter_204 = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_dmx_swfilter_204 = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_dmx_swfilter_204 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_dmx_swfilter_204 to i32), ptr @__kstrtab_dvb_dmx_swfilter_204, ptr @__kstrtabns_dvb_dmx_swfilter_204 }, section "___ksymtab+dvb_dmx_swfilter_204", align 4
@__kstrtab_dvb_dmx_swfilter_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_dmx_swfilter_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_dmx_swfilter_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_dmx_swfilter_raw to i32), ptr @__kstrtab_dvb_dmx_swfilter_raw, ptr @__kstrtabns_dvb_dmx_swfilter_raw }, section "___ksymtab+dvb_dmx_swfilter_raw", align 4
@.str = private unnamed_addr constant [70 x i8] c"\014dvb_demux: Couldn't allocate memory for TS/TEI check. Disabling it\0A\00", align 1
@dvb_dmx_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"&dvbdemux->mutex\00", align 1
@__kstrtab_dvb_dmx_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_dmx_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_dmx_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_dmx_init to i32), ptr @__kstrtab_dvb_dmx_init, ptr @__kstrtabns_dvb_dmx_init }, section "___ksymtab+dvb_dmx_init", align 4
@__kstrtab_dvb_dmx_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_dmx_release = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_dmx_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_dmx_release to i32), ptr @__kstrtab_dvb_dmx_release, ptr @__kstrtabns_dvb_dmx_release }, section "___ksymtab+dvb_dmx_release", align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"\017dvb_demux: %s: TS speed %llu Kbits/sec \0A\00", align 1
@__func__.dvb_dmx_swfilter_packet = private unnamed_addr constant [24 x i8] c"dvb_dmx_swfilter_packet\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"\017dvb_demux: %s: TEI detected. PID=0x%x data1=0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"\017dvb_demux: %s: TS packet counter mismatch. PID=0x%x expected 0x%x got 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"\013dvb_demux: %s: feed already in list (type=%x state=%x pid=%x)\0A\00", align 1
@__func__.dvb_demux_feed_add = private unnamed_addr constant [19 x i8] c"dvb_demux_feed_add\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"\013dvb_demux: %s: feed not in list (type=%x state=%x pid=%x)\0A\00", align 1
@__func__.dvb_demux_feed_del = private unnamed_addr constant [19 x i8] c"dvb_demux_feed_del\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_dvb_demux_feed_err_pkts203, ptr @__UNIQUE_ID_dvb_demux_feed_err_pktstype202, ptr @__UNIQUE_ID_dvb_demux_speedcheck201, ptr @__UNIQUE_ID_dvb_demux_speedchecktype200, ptr @__UNIQUE_ID_dvb_demux_tscheck199, ptr @__UNIQUE_ID_dvb_demux_tschecktype198, ptr @__ksymtab_dvb_dmx_init, ptr @__ksymtab_dvb_dmx_release, ptr @__ksymtab_dvb_dmx_swfilter, ptr @__ksymtab_dvb_dmx_swfilter_204, ptr @__ksymtab_dvb_dmx_swfilter_packets, ptr @__ksymtab_dvb_dmx_swfilter_raw, ptr @__param_dvb_demux_feed_err_pkts, ptr @__param_dvb_demux_speedcheck, ptr @__param_dvb_demux_tscheck], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dvb_dmx_swfilter_packets(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %14, %3
  %8 = phi i32 [ %10, %14 ], [ %2, %3 ]
  %9 = phi ptr [ %15, %14 ], [ %1, %3 ]
  %10 = add i32 %8, -1
  %11 = load i8, ptr %9, align 1
  %12 = icmp eq i8 %11, 71
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  tail call fastcc void @dvb_dmx_swfilter_packet(ptr noundef %0, ptr noundef %9)
  br label %14

14:                                               ; preds = %13, %7
  %15 = getelementptr i8, ptr %9, i32 188
  %16 = icmp eq i32 %10, 0
  br i1 %16, label %17, label %7

17:                                               ; preds = %14, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dvb_dmx_swfilter_packet(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr i8, ptr %1, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 31
  %6 = zext i8 %5 to i16
  %7 = shl nuw nsw i16 %6, 8
  %8 = getelementptr i8, ptr %1, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i16
  %11 = or i16 %7, %10
  %12 = load i32, ptr @dvb_demux_speedcheck, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %46, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 22
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 8
  %18 = urem i32 %17, 50000
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %14
  %21 = tail call i64 @ktime_get() #14
  %22 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 21
  %23 = load i64, ptr %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %20
  %26 = load i32, ptr %15, align 8
  %27 = zext i32 %26 to i64
  %28 = mul nuw nsw i64 %27, 1504
  %29 = tail call i64 @div64_u64(i64 noundef %28, i64 noundef 1024) #14
  %30 = load i64, ptr %22, align 8
  %31 = sub i64 %21, %30
  %32 = tail call i64 @llvm.abs.i64(i64 %31, i1 false) #14
  %33 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %32) #15, !srcloc !8
  %34 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %32, i64 %33, i32 0) #15, !srcloc !9
  %35 = extractvalue { i64, i32 } %34, 0
  %36 = icmp slt i64 %31, 0
  %37 = lshr i64 %35, 18
  %38 = sub nsw i64 0, %37
  %39 = select i1 %36, i64 %38, i64 %37
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %25
  %42 = mul i64 %29, 1000
  %43 = tail call i64 @div64_u64(i64 noundef %42, i64 noundef %39) #14
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dvb_dmx_swfilter_packet, i64 noundef %43) #16
  br label %45

45:                                               ; preds = %41, %25, %20
  store i64 %21, ptr %22, align 8
  store i32 0, ptr %15, align 8
  br label %46

46:                                               ; preds = %45, %14, %2
  %47 = load i8, ptr %3, align 1
  %48 = icmp sgt i8 %47, -1
  br i1 %48, label %81, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 15
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, %50
  br i1 %52, label %67, label %53

53:                                               ; preds = %64, %49
  %54 = phi ptr [ %65, %64 ], [ %51, %49 ]
  %55 = getelementptr i8, ptr %54, i32 -36
  %56 = load i16, ptr %55, align 4
  %57 = icmp eq i16 %56, %11
  %58 = icmp eq i16 %56, 8192
  %59 = or i1 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = getelementptr i8, ptr %54, i32 -20
  %62 = load i32, ptr %61, align 4
  %63 = or i32 %62, 2
  store i32 %63, ptr %61, align 4
  br label %64

64:                                               ; preds = %60, %53
  %65 = load ptr, ptr %54, align 8
  %66 = icmp eq ptr %65, %50
  br i1 %66, label %67, label %53

67:                                               ; preds = %64, %49
  %68 = load i32, ptr @dvb_demux_tscheck, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %67
  %71 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.dvb_dmx_swfilter_packet) #14
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = zext i16 %11 to i32
  %75 = load i8, ptr %3, align 1
  %76 = zext i8 %75 to i32
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dvb_dmx_swfilter_packet, i32 noundef %74, i32 noundef %76) #16
  br label %78

78:                                               ; preds = %73, %70, %67
  %79 = load i32, ptr @dvb_demux_feed_err_pkts, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %388, label %148

81:                                               ; preds = %46
  %82 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 20
  %83 = load ptr, ptr %82, align 8
  %84 = icmp ne ptr %83, null
  %85 = load i32, ptr @dvb_demux_tscheck, align 4
  %86 = icmp ne i32 %85, 0
  %87 = select i1 %84, i1 %86, i1 false
  %88 = zext i16 %11 to i32
  %89 = icmp ne i16 %11, 8191
  %90 = select i1 %87, i1 %89, i1 false
  br i1 %90, label %91, label %148

91:                                               ; preds = %81
  %92 = getelementptr i8, ptr %1, i32 3
  %93 = load i8, ptr %92, align 1
  %94 = and i8 %93, 16
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %91
  %97 = getelementptr i8, ptr %83, i32 %88
  %98 = load i8, ptr %97, align 1
  %99 = add i8 %98, 1
  %100 = and i8 %99, 15
  store i8 %100, ptr %97, align 1
  %101 = load i8, ptr %92, align 1
  %102 = load ptr, ptr %82, align 8
  br label %103

103:                                              ; preds = %96, %91
  %104 = phi ptr [ %102, %96 ], [ %83, %91 ]
  %105 = phi i8 [ %101, %96 ], [ %93, %91 ]
  %106 = and i8 %105, 15
  %107 = getelementptr i8, ptr %104, i32 %88
  %108 = load i8, ptr %107, align 1
  %109 = icmp eq i8 %106, %108
  br i1 %109, label %148, label %110

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 15
  %112 = load ptr, ptr %111, align 8
  %113 = icmp eq ptr %112, %111
  br i1 %113, label %128, label %114

114:                                              ; preds = %125, %110
  %115 = phi ptr [ %126, %125 ], [ %112, %110 ]
  %116 = getelementptr i8, ptr %115, i32 -36
  %117 = load i16, ptr %116, align 4
  %118 = icmp eq i16 %117, %11
  %119 = icmp eq i16 %117, 8192
  %120 = or i1 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = getelementptr i8, ptr %115, i32 -20
  %123 = load i32, ptr %122, align 4
  %124 = or i32 %123, 4
  store i32 %124, ptr %122, align 4
  br label %125

125:                                              ; preds = %121, %114
  %126 = load ptr, ptr %115, align 8
  %127 = icmp eq ptr %126, %111
  br i1 %127, label %128, label %114

128:                                              ; preds = %125, %110
  %129 = load i32, ptr @dvb_demux_tscheck, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %143, label %131

131:                                              ; preds = %128
  %132 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.dvb_dmx_swfilter_packet) #14
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %131
  %135 = load ptr, ptr %82, align 8
  %136 = getelementptr i8, ptr %135, i32 %88
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i32
  %139 = load i8, ptr %92, align 1
  %140 = and i8 %139, 15
  %141 = zext i8 %140 to i32
  %142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_dmx_swfilter_packet, i32 noundef %88, i32 noundef %138, i32 noundef %141) #16
  br label %143

143:                                              ; preds = %134, %131, %128
  %144 = load i8, ptr %92, align 1
  %145 = and i8 %144, 15
  %146 = load ptr, ptr %82, align 8
  %147 = getelementptr i8, ptr %146, i32 %88
  store i8 %145, ptr %147, align 1
  br label %148

148:                                              ; preds = %143, %103, %81, %78
  %149 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 15
  %150 = load ptr, ptr %149, align 8
  %151 = icmp eq ptr %150, %149
  br i1 %151, label %388, label %152

152:                                              ; preds = %148
  %153 = getelementptr i8, ptr %1, i32 3
  %154 = getelementptr i8, ptr %1, i32 4
  %155 = getelementptr i8, ptr %1, i32 5
  br label %156

156:                                              ; preds = %384, %152
  %157 = phi ptr [ %150, %152 ], [ %386, %384 ]
  %158 = phi i32 [ 0, %152 ], [ %385, %384 ]
  %159 = getelementptr i8, ptr %157, i32 -4392
  %160 = getelementptr i8, ptr %157, i32 -36
  %161 = load i16, ptr %160, align 4
  %162 = icmp eq i16 %161, %11
  %163 = icmp eq i16 %161, 8192
  %164 = or i1 %162, %163
  br i1 %164, label %165, label %384

165:                                              ; preds = %156
  %166 = getelementptr i8, ptr %157, i32 -44
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %165
  %170 = load i32, ptr %159, align 8
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %180, label %172

172:                                              ; preds = %169
  %173 = getelementptr i8, ptr %157, i32 -16
  %174 = load i32, ptr %173, align 8
  %175 = and i32 %174, 9
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = add i32 %158, 1
  %179 = icmp eq i32 %158, 0
  br i1 %179, label %180, label %384

180:                                              ; preds = %177, %172, %169, %165
  %181 = phi i32 [ 1, %177 ], [ %158, %172 ], [ %158, %169 ], [ %158, %165 ]
  br i1 %162, label %182, label %378

182:                                              ; preds = %180
  switch i32 %167, label %384 [
    i32 0, label %183
    i32 1, label %256
  ]

183:                                              ; preds = %182
  %184 = load i32, ptr %159, align 8
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %384, label %186

186:                                              ; preds = %183
  %187 = getelementptr i8, ptr %157, i32 -16
  %188 = load i32, ptr %187, align 8
  %189 = and i32 %188, 1
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %244, label %191

191:                                              ; preds = %186
  %192 = and i32 %188, 2
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %239, label %194

194:                                              ; preds = %191
  %195 = load i8, ptr %153, align 1
  %196 = zext i8 %195 to i32
  %197 = and i32 %196, 16
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %244, label %199

199:                                              ; preds = %194
  %200 = and i32 %196, 32
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %199
  %203 = load i8, ptr %154, align 1
  %204 = tail call i8 @llvm.usub.sat.i8(i8 -73, i8 %203) #14
  %205 = zext i8 %204 to i32
  %206 = icmp ugt i8 %203, -74
  br i1 %206, label %244, label %207

207:                                              ; preds = %202, %199
  %208 = phi i32 [ %205, %202 ], [ 184, %199 ]
  %209 = phi i8 [ %204, %202 ], [ -72, %199 ]
  %210 = sub nuw nsw i32 188, %208
  %211 = and i8 %195, 15
  %212 = getelementptr i8, ptr %157, i32 -8
  %213 = load i32, ptr %212, align 8
  %214 = add i32 %213, 1
  %215 = and i32 %214, 15
  %216 = zext i8 %211 to i32
  %217 = icmp eq i32 %215, %216
  store i32 %216, ptr %212, align 8
  br i1 %217, label %222, label %218

218:                                              ; preds = %207
  %219 = getelementptr i8, ptr %157, i32 -20
  %220 = load i32, ptr %219, align 4
  %221 = or i32 %220, 8
  store i32 %221, ptr %219, align 4
  br label %222

222:                                              ; preds = %218, %207
  %223 = load i8, ptr %3, align 1
  %224 = and i8 %223, 64
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %222
  %227 = getelementptr i8, ptr %157, i32 -2
  %228 = load i16, ptr %227, align 2
  br label %229

229:                                              ; preds = %226, %222
  %230 = phi i16 [ %228, %226 ], [ -6, %222 ]
  %231 = getelementptr i8, ptr %157, i32 -2
  %232 = zext i8 %209 to i16
  %233 = add i16 %230, %232
  store i16 %233, ptr %231, align 2
  %234 = getelementptr i8, ptr %157, i32 -56
  %235 = load ptr, ptr %234, align 8
  %236 = getelementptr i8, ptr %1, i32 %210
  %237 = getelementptr i8, ptr %157, i32 -20
  %238 = tail call i32 %235(ptr noundef %236, i32 noundef %208, ptr noundef null, i32 noundef 0, ptr noundef %159, ptr noundef %237) #14
  br label %244

239:                                              ; preds = %191
  %240 = getelementptr i8, ptr %157, i32 -56
  %241 = load ptr, ptr %240, align 8
  %242 = getelementptr i8, ptr %157, i32 -20
  %243 = tail call i32 %241(ptr noundef %1, i32 noundef 188, ptr noundef null, i32 noundef 0, ptr noundef %159, ptr noundef %242) #14
  br label %244

244:                                              ; preds = %239, %229, %202, %194, %186
  %245 = load i32, ptr %187, align 8
  %246 = and i32 %245, 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %384, label %248

248:                                              ; preds = %244
  %249 = getelementptr i8, ptr %157, i32 -52
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr inbounds %struct.dvb_demux, ptr %250, i32 0, i32 6
  %252 = load ptr, ptr %251, align 8
  %253 = icmp eq ptr %252, null
  br i1 %253, label %384, label %254

254:                                              ; preds = %248
  %255 = tail call i32 %252(ptr noundef %159, ptr noundef %1, i32 noundef 188) #14
  br label %384

256:                                              ; preds = %182
  %257 = load i32, ptr %159, align 8
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %384, label %259

259:                                              ; preds = %256
  %260 = load i8, ptr %153, align 1
  %261 = zext i8 %260 to i32
  %262 = and i32 %261, 16
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %375, label %264

264:                                              ; preds = %259
  %265 = and i32 %261, 32
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %271, label %267

267:                                              ; preds = %264
  %268 = load i8, ptr %154, align 1
  %269 = tail call i8 @llvm.usub.sat.i8(i8 -73, i8 %268) #14
  %270 = icmp ugt i8 %268, -74
  br i1 %270, label %375, label %271

271:                                              ; preds = %267, %264
  %272 = phi i8 [ %269, %267 ], [ -72, %264 ]
  %273 = sub nuw i8 -68, %272
  %274 = and i8 %260, 15
  %275 = getelementptr i8, ptr %157, i32 -8
  %276 = load i32, ptr %275, align 8
  %277 = add i32 %276, 1
  %278 = and i32 %277, 15
  %279 = zext i8 %274 to i32
  %280 = icmp ne i32 %278, %279
  store i32 %279, ptr %275, align 8
  %281 = load i8, ptr %153, align 1
  %282 = and i8 %281, 32
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %290, label %284

284:                                              ; preds = %271
  %285 = load i8, ptr %154, align 1
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %290, label %287

287:                                              ; preds = %284
  %288 = load i8, ptr %155, align 1
  %289 = icmp slt i8 %288, 0
  br label %290

290:                                              ; preds = %287, %284, %271
  %291 = phi i1 [ false, %284 ], [ false, %271 ], [ %289, %287 ]
  %292 = or i1 %280, %291
  br i1 %292, label %293, label %323

293:                                              ; preds = %290
  %294 = getelementptr i8, ptr %157, i32 -20
  %295 = load i32, ptr %294, align 4
  %296 = select i1 %291, i32 16, i32 8
  %297 = or i32 %295, %296
  store i32 %297, ptr %294, align 4
  %298 = getelementptr i8, ptr %157, i32 -4
  store i8 0, ptr %298, align 4
  %299 = getelementptr i8, ptr %157, i32 -84
  %300 = load i16, ptr %299, align 4
  %301 = getelementptr i8, ptr %157, i32 -80
  %302 = load i16, ptr %301, align 4
  %303 = icmp ugt i16 %302, %300
  br i1 %303, label %304, label %319

304:                                              ; preds = %293
  %305 = getelementptr i8, ptr %157, i32 -4372
  %306 = load ptr, ptr %305, align 4
  %307 = load i8, ptr %306, align 1
  %308 = icmp eq i8 %307, -1
  br i1 %308, label %309, label %317

309:                                              ; preds = %304
  %310 = zext i16 %302 to i32
  %311 = zext i16 %300 to i32
  %312 = xor i32 %311, -1
  %313 = add nsw i32 %310, %312
  %314 = getelementptr i8, ptr %306, i32 %313
  %315 = load i8, ptr %314, align 1
  %316 = icmp eq i8 %315, -1
  br i1 %316, label %319, label %317

317:                                              ; preds = %309, %304
  %318 = or i32 %297, 8
  store i32 %318, ptr %294, align 4
  br label %319

319:                                              ; preds = %317, %309, %293
  %320 = getelementptr i8, ptr %157, i32 -82
  store i16 0, ptr %320, align 2
  store i16 0, ptr %299, align 4
  store i16 0, ptr %301, align 4
  %321 = getelementptr i8, ptr %157, i32 -4368
  %322 = getelementptr i8, ptr %157, i32 -4372
  store ptr %321, ptr %322, align 4
  br label %323

323:                                              ; preds = %319, %290
  %324 = load i8, ptr %3, align 1
  %325 = and i8 %324, 64
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %372, label %327

327:                                              ; preds = %323
  %328 = icmp ugt i8 %272, 1
  br i1 %328, label %329, label %368

329:                                              ; preds = %327
  %330 = zext i8 %273 to i32
  %331 = getelementptr i8, ptr %1, i32 %330
  %332 = load i8, ptr %331, align 1
  %333 = icmp ult i8 %332, %272
  br i1 %333, label %334, label %368

334:                                              ; preds = %329
  %335 = zext i8 %332 to i32
  %336 = add nuw nsw i32 %330, 1
  %337 = getelementptr i8, ptr %1, i32 %336
  %338 = getelementptr i8, ptr %337, i32 %335
  %339 = xor i8 %332, -1
  %340 = add i8 %272, %339
  tail call fastcc void @dvb_dmx_swfilter_section_copy_dump(ptr noundef %159, ptr noundef %337, i8 noundef zeroext %332) #14
  %341 = getelementptr i8, ptr %157, i32 -4
  store i8 1, ptr %341, align 4
  %342 = getelementptr i8, ptr %157, i32 -84
  %343 = load i16, ptr %342, align 4
  %344 = getelementptr i8, ptr %157, i32 -80
  %345 = load i16, ptr %344, align 4
  %346 = icmp ugt i16 %345, %343
  br i1 %346, label %347, label %364

347:                                              ; preds = %334
  %348 = getelementptr i8, ptr %157, i32 -4372
  %349 = load ptr, ptr %348, align 4
  %350 = load i8, ptr %349, align 1
  %351 = icmp eq i8 %350, -1
  br i1 %351, label %352, label %360

352:                                              ; preds = %347
  %353 = zext i16 %345 to i32
  %354 = zext i16 %343 to i32
  %355 = xor i32 %354, -1
  %356 = add nsw i32 %353, %355
  %357 = getelementptr i8, ptr %349, i32 %356
  %358 = load i8, ptr %357, align 1
  %359 = icmp eq i8 %358, -1
  br i1 %359, label %364, label %360

360:                                              ; preds = %352, %347
  %361 = getelementptr i8, ptr %157, i32 -20
  %362 = load i32, ptr %361, align 4
  %363 = or i32 %362, 8
  store i32 %363, ptr %361, align 4
  br label %364

364:                                              ; preds = %360, %352, %334
  %365 = getelementptr i8, ptr %157, i32 -82
  store i16 0, ptr %365, align 2
  store i16 0, ptr %342, align 4
  store i16 0, ptr %344, align 4
  %366 = getelementptr i8, ptr %157, i32 -4368
  %367 = getelementptr i8, ptr %157, i32 -4372
  store ptr %366, ptr %367, align 4
  tail call fastcc void @dvb_dmx_swfilter_section_copy_dump(ptr noundef %159, ptr noundef %338, i8 noundef zeroext %340) #14
  br label %384

368:                                              ; preds = %329, %327
  %369 = getelementptr i8, ptr %157, i32 -20
  %370 = load i32, ptr %369, align 4
  %371 = or i32 %370, 8
  store i32 %371, ptr %369, align 4
  br label %384

372:                                              ; preds = %323
  %373 = zext i8 %273 to i32
  %374 = getelementptr i8, ptr %1, i32 %373
  tail call fastcc void @dvb_dmx_swfilter_section_copy_dump(ptr noundef %159, ptr noundef %374, i8 noundef zeroext %272) #14
  br label %384

375:                                              ; preds = %267, %259
  %376 = getelementptr i8, ptr %157, i32 -84
  store i16 0, ptr %376, align 4
  %377 = getelementptr i8, ptr %157, i32 -82
  store i16 0, ptr %377, align 2
  br label %384

378:                                              ; preds = %180
  br i1 %163, label %379, label %384

379:                                              ; preds = %378
  %380 = getelementptr i8, ptr %157, i32 -56
  %381 = load ptr, ptr %380, align 8
  %382 = getelementptr i8, ptr %157, i32 -20
  %383 = tail call i32 %381(ptr noundef %1, i32 noundef 188, ptr noundef null, i32 noundef 0, ptr noundef %159, ptr noundef %382) #14
  br label %384

384:                                              ; preds = %379, %378, %375, %372, %368, %364, %256, %254, %248, %244, %183, %182, %177, %156
  %385 = phi i32 [ %178, %177 ], [ %181, %379 ], [ %181, %378 ], [ %158, %156 ], [ %181, %182 ], [ %181, %183 ], [ %181, %244 ], [ %181, %248 ], [ %181, %254 ], [ %181, %256 ], [ %181, %364 ], [ %181, %368 ], [ %181, %372 ], [ %181, %375 ]
  %386 = load ptr, ptr %157, align 8
  %387 = icmp eq ptr %386, %149
  br i1 %387, label %388, label %156

388:                                              ; preds = %384, %148, %78
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dvb_dmx_swfilter(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  tail call fastcc void @_dvb_dmx_swfilter(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 188)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_dvb_dmx_swfilter(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 19
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #14
  %7 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 17
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %4
  %11 = sub i32 %3, %8
  %12 = icmp ugt i32 %11, %2
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 16, i32 %8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %14, ptr align 1 %1, i32 %2, i1 false)
  %15 = load i32, ptr %7, align 4
  %16 = add i32 %15, %2
  store i32 %16, ptr %7, align 4
  br label %89

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 16
  %19 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 16, i32 %8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %19, ptr align 1 %1, i32 %11, i1 false)
  %20 = load i8, ptr %18, align 8
  %21 = icmp eq i8 %20, 71
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  tail call fastcc void @dvb_dmx_swfilter_packet(ptr noundef %0, ptr noundef %18)
  br label %23

23:                                               ; preds = %22, %17
  store i32 0, ptr %7, align 4
  br label %24

24:                                               ; preds = %23, %4
  %25 = phi i32 [ %11, %23 ], [ 0, %4 ]
  %26 = icmp eq i32 %3, 204
  %27 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 16
  br label %28

28:                                               ; preds = %74, %24
  %29 = phi i32 [ %25, %24 ], [ %77, %74 ]
  %30 = icmp ult i32 %29, %2
  br i1 %30, label %31, label %55

31:                                               ; preds = %39, %28
  %32 = phi i32 [ %40, %39 ], [ %29, %28 ]
  %33 = getelementptr i8, ptr %1, i32 %32
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 71
  %36 = icmp eq i8 %34, -72
  %37 = select i1 %26, i1 %36, i1 false
  %38 = or i1 %35, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = add i32 %32, 1
  %41 = icmp eq i32 %40, %2
  br i1 %41, label %42, label %31

42:                                               ; preds = %39, %31
  %43 = phi i32 [ %2, %39 ], [ %32, %31 ]
  %44 = icmp eq i32 %43, %29
  br i1 %44, label %55, label %45

45:                                               ; preds = %42
  %46 = sub i32 %43, %3
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = getelementptr i8, ptr %1, i32 %46
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, 71
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = icmp eq i8 %50, -72
  %54 = select i1 %26, i1 %53, i1 false
  br i1 %54, label %61, label %55

55:                                               ; preds = %52, %48, %45, %42, %28
  %56 = phi i32 [ %46, %48 ], [ %29, %42 ], [ %29, %28 ], [ %43, %52 ], [ %43, %45 ]
  %57 = icmp uge i32 %56, %2
  %58 = sub i32 %2, %56
  %59 = icmp ult i32 %58, %3
  %60 = or i1 %57, %59
  br i1 %60, label %78, label %66

61:                                               ; preds = %52
  %62 = icmp uge i32 %46, %2
  %63 = sub i32 %2, %46
  %64 = icmp ult i32 %63, 204
  %65 = or i1 %62, %64
  br i1 %65, label %80, label %71

66:                                               ; preds = %55
  %67 = getelementptr i8, ptr %1, i32 %56
  br i1 %26, label %68, label %74

68:                                               ; preds = %66
  %69 = load i8, ptr %67, align 1
  %70 = icmp eq i8 %69, -72
  br i1 %70, label %71, label %74

71:                                               ; preds = %68, %61
  %72 = phi i32 [ %56, %68 ], [ %46, %61 ]
  %73 = phi ptr [ %67, %68 ], [ %49, %61 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(188) %27, ptr noundef align 1 dereferenceable(188) %73, i32 188, i1 false)
  store i8 71, ptr %27, align 8
  br label %74

74:                                               ; preds = %71, %68, %66
  %75 = phi i32 [ %72, %71 ], [ %56, %68 ], [ %56, %66 ]
  %76 = phi ptr [ %27, %71 ], [ %67, %68 ], [ %67, %66 ]
  tail call fastcc void @dvb_dmx_swfilter_packet(ptr noundef %0, ptr noundef %76)
  %77 = add i32 %75, %3
  br label %28

78:                                               ; preds = %55
  %79 = icmp eq i32 %56, %2
  br i1 %79, label %89, label %83

80:                                               ; preds = %61
  %81 = icmp eq i32 %46, %2
  br i1 %81, label %89, label %82

82:                                               ; preds = %80
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %27, ptr align 1 %49, i32 %63, i1 false)
  store i32 %63, ptr %7, align 4
  br label %85

83:                                               ; preds = %78
  %84 = getelementptr i8, ptr %1, i32 %56
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %27, ptr align 1 %84, i32 %58, i1 false)
  store i32 %58, ptr %7, align 4
  br i1 %26, label %85, label %89

85:                                               ; preds = %83, %82
  %86 = load i8, ptr %27, align 8
  %87 = icmp eq i8 %86, -72
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i8 71, ptr %27, align 8
  br label %89

89:                                               ; preds = %88, %85, %83, %80, %78, %13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dvb_dmx_swfilter_204(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  tail call fastcc void @_dvb_dmx_swfilter(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 204)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dvb_dmx_swfilter_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %6 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dvb_demux_feed, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.dvb_demux_feed, ptr %7, i32 0, i32 9
  %11 = tail call i32 %9(ptr noundef %1, i32 noundef %2, ptr noundef null, i32 noundef 0, ptr noundef %7, ptr noundef %10) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dvb_dmx_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 20
  store ptr null, ptr %2, align 8
  %3 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 9
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 128) #14
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %9 = select i1 %7, i32 -1, i32 %8
  %10 = tail call noalias ptr @vmalloc(i32 noundef %9) #17
  %11 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 10
  store ptr %10, ptr %11, align 8
  %12 = icmp eq ptr %10, null
  br i1 %12, label %129, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 4408) #14
  %17 = extractvalue { i32, i1 } %16, 1
  %18 = extractvalue { i32, i1 } %16, 0
  %19 = select i1 %17, i32 -1, i32 %18
  %20 = tail call noalias ptr @vmalloc(i32 noundef %19) #17
  %21 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 11
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  %24 = load i32, ptr %4, align 8
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %31, label %28

26:                                               ; preds = %13
  %27 = load ptr, ptr %11, align 8
  tail call void @vfree(ptr noundef %27) #14
  store ptr null, ptr %11, align 8
  br label %129

28:                                               ; preds = %31, %23
  %29 = load i32, ptr %14, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %40, label %49

31:                                               ; preds = %31, %23
  %32 = phi i32 [ %37, %31 ], [ 0, %23 ]
  %33 = load ptr, ptr %11, align 8
  %34 = getelementptr %struct.dvb_demux_filter, ptr %33, i32 %32, i32 7
  store i32 0, ptr %34, align 4
  %35 = load ptr, ptr %11, align 8
  %36 = getelementptr %struct.dvb_demux_filter, ptr %35, i32 %32, i32 6
  store i32 %32, ptr %36, align 4
  %37 = add nuw nsw i32 %32, 1
  %38 = load i32, ptr %4, align 8
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %31, label %28

40:                                               ; preds = %40, %28
  %41 = phi i32 [ %46, %40 ], [ 0, %28 ]
  %42 = load ptr, ptr %21, align 4
  %43 = getelementptr %struct.dvb_demux_feed, ptr %42, i32 %41, i32 5
  store i32 0, ptr %43, align 8
  %44 = load ptr, ptr %21, align 4
  %45 = getelementptr %struct.dvb_demux_feed, ptr %44, i32 %41, i32 16
  store i32 %41, ptr %45, align 8
  %46 = add nuw nsw i32 %41, 1
  %47 = load i32, ptr %14, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %40, label %49

49:                                               ; preds = %40, %28
  %50 = tail call noalias ptr @vmalloc(i32 noundef 8192) #17
  store ptr %50, ptr %2, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #16
  br label %54

54:                                               ; preds = %52, %49
  %55 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 12
  store volatile ptr %55, ptr %55, align 4
  %56 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 12, i32 1
  store ptr %55, ptr %56, align 4
  %57 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 13, i32 0
  store ptr null, ptr %57, align 4
  %58 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 14, i32 0
  store i16 -1, ptr %58, align 2
  %59 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 13, i32 1
  store ptr null, ptr %59, align 4
  %60 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 14, i32 1
  store i16 -1, ptr %60, align 2
  %61 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 13, i32 2
  store ptr null, ptr %61, align 4
  %62 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 14, i32 2
  store i16 -1, ptr %62, align 2
  %63 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 13, i32 3
  store ptr null, ptr %63, align 4
  %64 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 14, i32 3
  store i16 -1, ptr %64, align 2
  %65 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 13, i32 4
  store ptr null, ptr %65, align 4
  %66 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 14, i32 4
  store i16 -1, ptr %66, align 2
  %67 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 13, i32 5
  store ptr null, ptr %67, align 4
  %68 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 14, i32 5
  store i16 -1, ptr %68, align 2
  %69 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 13, i32 6
  store ptr null, ptr %69, align 4
  %70 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 14, i32 6
  store i16 -1, ptr %70, align 2
  %71 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 13, i32 7
  store ptr null, ptr %71, align 4
  %72 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 14, i32 7
  store i16 -1, ptr %72, align 2
  %73 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 13, i32 8
  store ptr null, ptr %73, align 4
  %74 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 14, i32 8
  store i16 -1, ptr %74, align 2
  %75 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 13, i32 9
  store ptr null, ptr %75, align 4
  %76 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 14, i32 9
  store i16 -1, ptr %76, align 2
  %77 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 13, i32 10
  store ptr null, ptr %77, align 4
  %78 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 14, i32 10
  store i16 -1, ptr %78, align 2
  %79 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 13, i32 11
  store ptr null, ptr %79, align 4
  %80 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 14, i32 11
  store i16 -1, ptr %80, align 2
  %81 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 13, i32 12
  store ptr null, ptr %81, align 4
  %82 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 14, i32 12
  store i16 -1, ptr %82, align 2
  %83 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 13, i32 13
  store ptr null, ptr %83, align 4
  %84 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 14, i32 13
  store i16 -1, ptr %84, align 2
  %85 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 13, i32 14
  store ptr null, ptr %85, align 4
  %86 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 14, i32 14
  store i16 -1, ptr %86, align 2
  %87 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 13, i32 15
  store ptr null, ptr %87, align 4
  %88 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 14, i32 15
  store i16 -1, ptr %88, align 2
  %89 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 13, i32 16
  store ptr null, ptr %89, align 4
  %90 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 14, i32 16
  store i16 -1, ptr %90, align 2
  %91 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 13, i32 17
  store ptr null, ptr %91, align 4
  %92 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 14, i32 17
  store i16 -1, ptr %92, align 2
  %93 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 13, i32 18
  store ptr null, ptr %93, align 4
  %94 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 14, i32 18
  store i16 -1, ptr %94, align 2
  %95 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 13, i32 19
  store ptr null, ptr %95, align 4
  %96 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 14, i32 19
  store i16 -1, ptr %96, align 2
  %97 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 15
  store volatile ptr %97, ptr %97, align 4
  %98 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 15, i32 1
  store ptr %97, ptr %98, align 4
  %99 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 23
  store i32 0, ptr %99, align 4
  %100 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 24
  store i32 0, ptr %100, align 8
  %101 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 17
  store i32 0, ptr %101, align 4
  %102 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 7
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %54
  store ptr @dvb_dmx_crc32, ptr %102, align 4
  br label %106

106:                                              ; preds = %105, %54
  %107 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 8
  %108 = load ptr, ptr %107, align 8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store ptr @dvb_dmx_memcopy, ptr %107, align 8
  br label %111

111:                                              ; preds = %110, %106
  %112 = getelementptr inbounds %struct.dmx_demux, ptr %0, i32 0, i32 1
  store ptr null, ptr %112, align 4
  %113 = getelementptr inbounds %struct.dmx_demux, ptr %0, i32 0, i32 2
  store ptr %0, ptr %113, align 4
  %114 = getelementptr inbounds %struct.dmx_demux, ptr %0, i32 0, i32 3
  store ptr @dvbdmx_open, ptr %114, align 4
  %115 = getelementptr inbounds %struct.dmx_demux, ptr %0, i32 0, i32 4
  store ptr @dvbdmx_close, ptr %115, align 4
  %116 = getelementptr inbounds %struct.dmx_demux, ptr %0, i32 0, i32 5
  store ptr @dvbdmx_write, ptr %116, align 4
  %117 = getelementptr inbounds %struct.dmx_demux, ptr %0, i32 0, i32 6
  store ptr @dvbdmx_allocate_ts_feed, ptr %117, align 4
  %118 = getelementptr inbounds %struct.dmx_demux, ptr %0, i32 0, i32 7
  store ptr @dvbdmx_release_ts_feed, ptr %118, align 4
  %119 = getelementptr inbounds %struct.dmx_demux, ptr %0, i32 0, i32 8
  store ptr @dvbdmx_allocate_section_feed, ptr %119, align 4
  %120 = getelementptr inbounds %struct.dmx_demux, ptr %0, i32 0, i32 9
  store ptr @dvbdmx_release_section_feed, ptr %120, align 4
  %121 = getelementptr inbounds %struct.dmx_demux, ptr %0, i32 0, i32 10
  store ptr @dvbdmx_add_frontend, ptr %121, align 4
  %122 = getelementptr inbounds %struct.dmx_demux, ptr %0, i32 0, i32 11
  store ptr @dvbdmx_remove_frontend, ptr %122, align 4
  %123 = getelementptr inbounds %struct.dmx_demux, ptr %0, i32 0, i32 12
  store ptr @dvbdmx_get_frontends, ptr %123, align 4
  %124 = getelementptr inbounds %struct.dmx_demux, ptr %0, i32 0, i32 13
  store ptr @dvbdmx_connect_frontend, ptr %124, align 4
  %125 = getelementptr inbounds %struct.dmx_demux, ptr %0, i32 0, i32 14
  store ptr @dvbdmx_disconnect_frontend, ptr %125, align 4
  %126 = getelementptr inbounds %struct.dmx_demux, ptr %0, i32 0, i32 15
  store ptr @dvbdmx_get_pes_pids, ptr %126, align 4
  %127 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %127, ptr noundef nonnull @.str.1, ptr noundef nonnull @dvb_dmx_init.__key) #14
  %128 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 19
  store i32 0, ptr %128, align 4
  br label %129

129:                                              ; preds = %111, %26, %1
  %130 = phi i32 [ 0, %111 ], [ -12, %26 ], [ -12, %1 ]
  ret i32 %130
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @dvb_dmx_crc32(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #5 {
  %4 = getelementptr inbounds %struct.dmx_section_feed, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @crc32_be(i32 noundef %5, ptr noundef %1, i32 noundef %2) #18
  store i32 %6, ptr %4, align 8
  ret i32 %6
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dvb_dmx_memcopy(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #6 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %2, i32 %3, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @dvbdmx_open(ptr nocapture noundef %0) #7 {
  %2 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 9
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = add nsw i32 %3, 1
  store i32 %6, ptr %2, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ 0, %5 ], [ -87, %1 ]
  ret i32 %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @dvbdmx_close(ptr nocapture noundef %0) #7 {
  %2 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ 0, %5 ], [ -19, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvbdmx_write(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dmx_demux, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dmx_frontend, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %7
  %12 = tail call ptr @memdup_user(ptr noundef %1, i32 noundef %2) #14
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = ptrtoint ptr %12 to i32
  br label %31

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 18
  %18 = tail call i32 @mutex_lock_interruptible(ptr noundef %17) #14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @kfree(ptr noundef %12) #14
  br label %31

21:                                               ; preds = %16
  tail call fastcc void @_dvb_dmx_swfilter(ptr noundef %0, ptr noundef %12, i32 noundef %2, i32 noundef 188) #14
  tail call void @kfree(ptr noundef %12) #14
  tail call void @mutex_unlock(ptr noundef %17) #14
  %22 = tail call ptr @llvm.thread.pointer() #14
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 256
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31, !prof !10

26:                                               ; preds = %21
  %27 = load volatile i32, ptr %22, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 %2, i32 -4
  br label %31

31:                                               ; preds = %26, %21, %20, %14, %7, %3
  %32 = phi i32 [ %15, %14 ], [ -512, %20 ], [ -22, %7 ], [ -22, %3 ], [ -4, %21 ], [ %30, %26 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvbdmx_allocate_ts_feed(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 18
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %86

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %19, %11
  %15 = phi i32 [ 0, %11 ], [ %20, %19 ]
  %16 = getelementptr %struct.dvb_demux_feed, ptr %13, i32 %15, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = add nuw nsw i32 %15, 1
  %21 = icmp eq i32 %20, %9
  br i1 %21, label %84, label %14

22:                                               ; preds = %14, %7
  %23 = phi i32 [ 0, %7 ], [ %15, %14 ]
  %24 = icmp eq i32 %23, %9
  br i1 %24, label %84, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 11
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr %struct.dvb_demux_feed, ptr %27, i32 %23, i32 5
  store i32 1, ptr %28, align 8
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr %struct.dvb_demux_feed, ptr %29, i32 %23
  %31 = icmp eq ptr %30, null
  br i1 %31, label %84, label %32

32:                                               ; preds = %25
  %33 = getelementptr %struct.dvb_demux_feed, ptr %29, i32 %23, i32 4
  store i32 0, ptr %33, align 4
  %34 = getelementptr %struct.dvb_demux_feed, ptr %29, i32 %23, i32 1
  store ptr %2, ptr %34, align 8
  %35 = getelementptr %struct.dvb_demux_feed, ptr %29, i32 %23, i32 2
  store ptr %0, ptr %35, align 4
  %36 = getelementptr %struct.dvb_demux_feed, ptr %29, i32 %23, i32 6
  store i16 -1, ptr %36, align 4
  %37 = getelementptr %struct.dvb_demux_feed, ptr %29, i32 %23, i32 14
  store i16 -6, ptr %37, align 2
  %38 = getelementptr %struct.dvb_demux_feed, ptr %29, i32 %23, i32 9
  store i32 0, ptr %38, align 4
  store ptr %30, ptr %1, align 4
  %39 = getelementptr inbounds %struct.dmx_ts_feed, ptr %30, i32 0, i32 1
  store ptr %0, ptr %39, align 4
  %40 = load ptr, ptr %1, align 4
  %41 = getelementptr inbounds %struct.dmx_ts_feed, ptr %40, i32 0, i32 2
  store ptr null, ptr %41, align 4
  %42 = load ptr, ptr %1, align 4
  store i32 0, ptr %42, align 4
  %43 = load ptr, ptr %1, align 4
  %44 = getelementptr inbounds %struct.dmx_ts_feed, ptr %43, i32 0, i32 4
  store ptr @dmx_ts_feed_start_filtering, ptr %44, align 4
  %45 = load ptr, ptr %1, align 4
  %46 = getelementptr inbounds %struct.dmx_ts_feed, ptr %45, i32 0, i32 5
  store ptr @dmx_ts_feed_stop_filtering, ptr %46, align 4
  %47 = load ptr, ptr %1, align 4
  %48 = getelementptr inbounds %struct.dmx_ts_feed, ptr %47, i32 0, i32 3
  store ptr @dmx_ts_feed_set, ptr %48, align 4
  %49 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 2
  %50 = load i32, ptr %49, align 8
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %32
  %53 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 10
  %54 = load ptr, ptr %53, align 8
  br label %55

55:                                               ; preds = %60, %52
  %56 = phi i32 [ 0, %52 ], [ %61, %60 ]
  %57 = getelementptr %struct.dvb_demux_filter, ptr %54, i32 %56, i32 7
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = add nuw nsw i32 %56, 1
  %62 = icmp eq i32 %61, %50
  br i1 %62, label %66, label %55

63:                                               ; preds = %55, %32
  %64 = phi i32 [ 0, %32 ], [ %56, %55 ]
  %65 = icmp eq i32 %64, %50
  br i1 %65, label %66, label %68

66:                                               ; preds = %63, %60
  %67 = getelementptr %struct.dvb_demux_feed, ptr %29, i32 %23, i32 8
  store ptr null, ptr %67, align 8
  br label %76

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 10
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr %struct.dvb_demux_filter, ptr %70, i32 %64, i32 7
  store i32 1, ptr %71, align 4
  %72 = load ptr, ptr %69, align 8
  %73 = getelementptr %struct.dvb_demux_filter, ptr %72, i32 %64
  %74 = getelementptr %struct.dvb_demux_feed, ptr %29, i32 %23, i32 8
  store ptr %73, ptr %74, align 8
  %75 = icmp eq ptr %73, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %68, %66
  %77 = getelementptr %struct.dvb_demux_feed, ptr %29, i32 %23, i32 5
  store i32 0, ptr %77, align 8
  br label %84

78:                                               ; preds = %68
  %79 = getelementptr %struct.dvb_demux_filter, ptr %72, i32 %64, i32 8
  store i32 0, ptr %79, align 4
  %80 = load ptr, ptr %74, align 8
  %81 = getelementptr inbounds %struct.dvb_demux_filter, ptr %80, i32 0, i32 5
  store ptr %30, ptr %81, align 4
  %82 = load ptr, ptr %74, align 8
  %83 = getelementptr inbounds %struct.dvb_demux_filter, ptr %82, i32 0, i32 7
  store i32 2, ptr %83, align 4
  br label %84

84:                                               ; preds = %78, %76, %25, %22, %19
  %85 = phi i32 [ -16, %76 ], [ 0, %78 ], [ -16, %22 ], [ -16, %25 ], [ -16, %19 ]
  tail call void @mutex_unlock(ptr noundef %4) #14
  br label %86

86:                                               ; preds = %84, %3
  %87 = phi i32 [ -512, %3 ], [ %85, %84 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvbdmx_release_ts_feed(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %3) #14
  %4 = getelementptr inbounds %struct.dvb_demux_feed, ptr %1, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %53, label %7

7:                                                ; preds = %2
  store i32 0, ptr %4, align 8
  %8 = getelementptr inbounds %struct.dvb_demux_feed, ptr %1, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.dvb_demux_filter, ptr %9, i32 0, i32 7
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dvb_demux_feed, ptr %1, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dvb_demux, ptr %12, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %13) #14
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr inbounds %struct.dvb_demux, ptr %14, i32 0, i32 15
  br label %16

16:                                               ; preds = %20, %7
  %17 = phi ptr [ %15, %7 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, %15
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %18, i32 -4392
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %31, label %16

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.dvb_demux_feed, ptr %1, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %4, align 8
  %27 = getelementptr inbounds %struct.dvb_demux_feed, ptr %1, i32 0, i32 6
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dvb_demux_feed_del, i32 noundef %25, i32 noundef %26, i32 noundef %29) #16
  br label %37

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.dvb_demux_feed, ptr %1, i32 0, i32 15
  %33 = getelementptr inbounds %struct.dvb_demux_feed, ptr %1, i32 0, i32 15, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %32, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %32, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %33, align 4
  br label %37

37:                                               ; preds = %31, %23
  %38 = load ptr, ptr %11, align 4
  %39 = getelementptr inbounds %struct.dvb_demux, ptr %38, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !11
  %40 = load i16, ptr %39, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %39, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  %42 = getelementptr inbounds %struct.dvb_demux_feed, ptr %1, i32 0, i32 6
  store i16 -1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.dvb_demux_feed, ptr %1, i32 0, i32 10
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.dvb_demux_feed, ptr %1, i32 0, i32 11
  %49 = load i32, ptr %48, align 4
  %50 = icmp ult i32 %49, 20
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = getelementptr %struct.dvb_demux, ptr %0, i32 0, i32 13, i32 %49
  store ptr null, ptr %52, align 4
  br label %53

53:                                               ; preds = %51, %47, %37, %2
  %54 = phi i32 [ -22, %2 ], [ 0, %51 ], [ 0, %47 ], [ 0, %37 ]
  tail call void @mutex_unlock(ptr noundef %3) #14
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvbdmx_allocate_section_feed(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 18
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %60

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %19, %11
  %15 = phi i32 [ 0, %11 ], [ %20, %19 ]
  %16 = getelementptr %struct.dvb_demux_feed, ptr %13, i32 %15, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = add nuw nsw i32 %15, 1
  %21 = icmp eq i32 %20, %9
  br i1 %21, label %58, label %14

22:                                               ; preds = %14, %7
  %23 = phi i32 [ 0, %7 ], [ %15, %14 ]
  %24 = icmp eq i32 %23, %9
  br i1 %24, label %58, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 11
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr %struct.dvb_demux_feed, ptr %27, i32 %23, i32 5
  store i32 1, ptr %28, align 8
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr %struct.dvb_demux_feed, ptr %29, i32 %23
  %31 = icmp eq ptr %30, null
  br i1 %31, label %58, label %32

32:                                               ; preds = %25
  %33 = getelementptr %struct.dvb_demux_feed, ptr %29, i32 %23, i32 4
  store i32 1, ptr %33, align 4
  %34 = getelementptr %struct.dvb_demux_feed, ptr %29, i32 %23, i32 1
  store ptr %2, ptr %34, align 8
  %35 = getelementptr %struct.dvb_demux_feed, ptr %29, i32 %23, i32 2
  store ptr %0, ptr %35, align 4
  %36 = getelementptr %struct.dvb_demux_feed, ptr %29, i32 %23, i32 6
  store i16 -1, ptr %36, align 4
  %37 = getelementptr %struct.dvb_demux_feed, ptr %29, i32 %23, i32 9
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.dmx_section_feed, ptr %30, i32 0, i32 6
  %39 = getelementptr inbounds %struct.dmx_section_feed, ptr %30, i32 0, i32 5
  store ptr %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.dmx_section_feed, ptr %30, i32 0, i32 8
  store i16 0, ptr %40, align 2
  %41 = getelementptr inbounds %struct.dmx_section_feed, ptr %30, i32 0, i32 7
  store i16 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.dmx_section_feed, ptr %30, i32 0, i32 9
  store i16 0, ptr %42, align 8
  %43 = getelementptr %struct.dvb_demux_feed, ptr %29, i32 %23, i32 8
  store ptr null, ptr %43, align 8
  store ptr %30, ptr %1, align 4
  store i32 0, ptr %30, align 4
  %44 = load ptr, ptr %1, align 4
  %45 = getelementptr inbounds %struct.dmx_section_feed, ptr %44, i32 0, i32 1
  store ptr %0, ptr %45, align 4
  %46 = load ptr, ptr %1, align 4
  %47 = getelementptr inbounds %struct.dmx_section_feed, ptr %46, i32 0, i32 2
  store ptr null, ptr %47, align 4
  %48 = load ptr, ptr %1, align 4
  %49 = getelementptr inbounds %struct.dmx_section_feed, ptr %48, i32 0, i32 10
  store ptr @dmx_section_feed_set, ptr %49, align 4
  %50 = load ptr, ptr %1, align 4
  %51 = getelementptr inbounds %struct.dmx_section_feed, ptr %50, i32 0, i32 11
  store ptr @dmx_section_feed_allocate_filter, ptr %51, align 4
  %52 = load ptr, ptr %1, align 4
  %53 = getelementptr inbounds %struct.dmx_section_feed, ptr %52, i32 0, i32 13
  store ptr @dmx_section_feed_start_filtering, ptr %53, align 4
  %54 = load ptr, ptr %1, align 4
  %55 = getelementptr inbounds %struct.dmx_section_feed, ptr %54, i32 0, i32 14
  store ptr @dmx_section_feed_stop_filtering, ptr %55, align 4
  %56 = load ptr, ptr %1, align 4
  %57 = getelementptr inbounds %struct.dmx_section_feed, ptr %56, i32 0, i32 12
  store ptr @dmx_section_feed_release_filter, ptr %57, align 4
  br label %58

58:                                               ; preds = %32, %25, %22, %19
  %59 = phi i32 [ 0, %32 ], [ -16, %22 ], [ -16, %25 ], [ -16, %19 ]
  tail call void @mutex_unlock(ptr noundef %4) #14
  br label %60

60:                                               ; preds = %58, %3
  %61 = phi i32 [ -512, %3 ], [ %59, %58 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvbdmx_release_section_feed(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %3) #14
  %4 = getelementptr inbounds %struct.dvb_demux_feed, ptr %1, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %40, label %7

7:                                                ; preds = %2
  store i32 0, ptr %4, align 8
  %8 = getelementptr inbounds %struct.dvb_demux_feed, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dvb_demux, ptr %9, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %10) #14
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.dvb_demux, ptr %11, i32 0, i32 15
  br label %13

13:                                               ; preds = %17, %7
  %14 = phi ptr [ %12, %7 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, %12
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %15, i32 -4392
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %28, label %13

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.dvb_demux_feed, ptr %1, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %4, align 8
  %24 = getelementptr inbounds %struct.dvb_demux_feed, ptr %1, i32 0, i32 6
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dvb_demux_feed_del, i32 noundef %22, i32 noundef %23, i32 noundef %26) #16
  br label %34

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.dvb_demux_feed, ptr %1, i32 0, i32 15
  %30 = getelementptr inbounds %struct.dvb_demux_feed, ptr %1, i32 0, i32 15, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %31, ptr %33, align 4
  store volatile ptr %32, ptr %31, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %29, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %30, align 4
  br label %34

34:                                               ; preds = %28, %20
  %35 = load ptr, ptr %8, align 4
  %36 = getelementptr inbounds %struct.dvb_demux, ptr %35, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !11
  %37 = load i16, ptr %36, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %36, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  %39 = getelementptr inbounds %struct.dvb_demux_feed, ptr %1, i32 0, i32 6
  store i16 -1, ptr %39, align 4
  br label %40

40:                                               ; preds = %34, %2
  %41 = phi i32 [ 0, %34 ], [ -22, %2 ]
  tail call void @mutex_unlock(ptr noundef %3) #14
  ret i32 %41
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvbdmx_add_frontend(ptr noundef %0, ptr noundef %1) #8 {
  %3 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %1, ptr %5, align 4
  store ptr %4, ptr %1, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %3, ptr %6, align 4
  store volatile ptr %1, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvbdmx_remove_frontend(ptr noundef readonly %0, ptr noundef readnone %1) #8 {
  %3 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  br label %5

5:                                                ; preds = %8, %2
  %6 = phi ptr [ %4, %2 ], [ %9, %8 ]
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %15, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %6, align 4
  %10 = icmp eq ptr %6, %1
  br i1 %10, label %11, label %5

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  store volatile ptr %9, ptr %13, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  br label %15

15:                                               ; preds = %11, %5
  %16 = phi i32 [ 0, %11 ], [ -19, %5 ]
  ret i32 %16
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @dvbdmx_get_frontends(ptr noundef %0) #9 {
  %2 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 12
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  %5 = select i1 %4, ptr null, ptr %2
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvbdmx_connect_frontend(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dmx_demux, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %7) #14
  store ptr %1, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef %7) #14
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ 0, %6 ], [ -22, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvbdmx_disconnect_frontend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %2) #14
  %3 = getelementptr inbounds %struct.dmx_demux, ptr %0, i32 0, i32 1
  store ptr null, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef %2) #14
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @dvbdmx_get_pes_pids(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(10) %1, ptr noundef align 8 dereferenceable(10) %3, i32 10, i1 false)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dvb_dmx_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 8
  tail call void @vfree(ptr noundef %3) #14
  %4 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  tail call void @vfree(ptr noundef %5) #14
  %6 = getelementptr inbounds %struct.dvb_demux, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  tail call void @vfree(ptr noundef %7) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dvb_dmx_swfilter_section_copy_dump(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dmx_section_feed, ptr %0, i32 0, i32 9
  %7 = load i16, ptr %6, align 4
  %8 = icmp ugt i16 %7, 4283
  br i1 %8, label %146, label %9

9:                                                ; preds = %3
  %10 = zext i16 %7 to i32
  %11 = zext i8 %2 to i32
  %12 = add nuw nsw i32 %10, %11
  %13 = icmp ugt i32 %12, 4284
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, 8
  store i32 %17, ptr %15, align 4
  %18 = trunc i16 %7 to i8
  %19 = sub i8 -68, %18
  br label %20

20:                                               ; preds = %14, %9
  %21 = phi i8 [ %19, %14 ], [ %2, %9 ]
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %146, label %23

23:                                               ; preds = %20
  %24 = zext i8 %21 to i32
  %25 = getelementptr inbounds %struct.dvb_demux, ptr %5, i32 0, i32 8
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.dmx_section_feed, ptr %0, i32 0, i32 6
  %28 = getelementptr i8, ptr %27, i32 %10
  tail call void %26(ptr noundef %0, ptr noundef %28, ptr noundef %1, i32 noundef %24) #14
  %29 = load i16, ptr %6, align 4
  %30 = zext i8 %21 to i16
  %31 = add i16 %29, %30
  store i16 %31, ptr %6, align 4
  %32 = zext i16 %31 to i32
  %33 = icmp ugt i16 %31, 4284
  br i1 %33, label %146, label %34

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.dmx_section_feed, ptr %0, i32 0, i32 7
  %36 = load i16, ptr %35, align 4
  %37 = zext i16 %36 to i32
  %38 = getelementptr i8, ptr %27, i32 %37
  %39 = getelementptr inbounds %struct.dmx_section_feed, ptr %0, i32 0, i32 5
  store ptr %38, ptr %39, align 4
  %40 = add nuw nsw i32 %37, 2
  %41 = icmp ult i32 %40, %32
  br i1 %41, label %42, label %146

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.dmx_section_feed, ptr %0, i32 0, i32 8
  %44 = getelementptr inbounds %struct.dmx_section_feed, ptr %0, i32 0, i32 4
  %45 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 13
  %46 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 8
  %47 = getelementptr inbounds %struct.dmx_section_feed, ptr %0, i32 0, i32 3
  %48 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 9
  %49 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 1
  br label %50

50:                                               ; preds = %138, %42
  %51 = phi i32 [ %37, %42 ], [ %143, %138 ]
  %52 = phi ptr [ %38, %42 ], [ %142, %138 ]
  %53 = getelementptr i8, ptr %52, i32 1
  %54 = load i8, ptr %53, align 1
  %55 = and i8 %54, 15
  %56 = zext i8 %55 to i16
  %57 = shl nuw nsw i16 %56, 8
  %58 = getelementptr i8, ptr %52, i32 2
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i16
  %61 = add nuw nsw i16 %60, 3
  %62 = add nuw nsw i16 %61, %57
  %63 = zext i16 %62 to i32
  %64 = icmp ugt i16 %62, 4096
  %65 = add nuw nsw i32 %51, %63
  %66 = icmp ugt i32 %65, %32
  %67 = select i1 %64, i1 true, i1 %66
  br i1 %67, label %146, label %68

68:                                               ; preds = %50
  store i16 %62, ptr %43, align 2
  store i32 -1, ptr %44, align 4
  %69 = load i8, ptr %45, align 4, !range !16
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %135, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %4, align 4
  %73 = load ptr, ptr %46, align 8
  %74 = load i32, ptr %0, align 4
  %75 = icmp eq i32 %74, 0
  %76 = icmp eq ptr %73, null
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %138, label %78

78:                                               ; preds = %71
  %79 = load i32, ptr %47, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %85, %82, %78
  br label %93

82:                                               ; preds = %78
  %83 = load i8, ptr %53, align 1
  %84 = icmp sgt i8 %83, -1
  br i1 %84, label %81, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.dvb_demux, ptr %72, i32 0, i32 7
  %87 = load ptr, ptr %86, align 4
  %88 = tail call i32 %87(ptr noundef %0, ptr noundef %52, i32 noundef %63) #14
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %81, label %90

90:                                               ; preds = %85
  %91 = load i32, ptr %48, align 4
  %92 = or i32 %91, 1
  store i32 %92, ptr %48, align 4
  br label %138

93:                                               ; preds = %131, %81
  %94 = phi ptr [ %129, %131 ], [ %73, %81 ]
  %95 = load ptr, ptr %39, align 4
  br label %96

96:                                               ; preds = %108, %93
  %97 = phi i32 [ 0, %93 ], [ %113, %108 ]
  %98 = phi i8 [ 0, %93 ], [ %112, %108 ]
  %99 = getelementptr [18 x i8], ptr %94, i32 0, i32 %97
  %100 = load i8, ptr %99, align 1
  %101 = getelementptr i8, ptr %95, i32 %97
  %102 = load i8, ptr %101, align 1
  %103 = xor i8 %102, %100
  %104 = getelementptr %struct.dvb_demux_filter, ptr %94, i32 0, i32 1, i32 %97
  %105 = load i8, ptr %104, align 1
  %106 = and i8 %105, %103
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %127

108:                                              ; preds = %96
  %109 = getelementptr %struct.dvb_demux_filter, ptr %94, i32 0, i32 2, i32 %97
  %110 = load i8, ptr %109, align 1
  %111 = and i8 %110, %103
  %112 = or i8 %111, %98
  %113 = add nuw nsw i32 %97, 1
  %114 = icmp eq i32 %113, 18
  br i1 %114, label %115, label %96

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.dvb_demux_filter, ptr %94, i32 0, i32 3
  %117 = load i8, ptr %116, align 4, !range !16
  %118 = icmp eq i8 %117, 0
  %119 = icmp ne i8 %112, 0
  %120 = select i1 %118, i1 true, i1 %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load ptr, ptr %49, align 8
  %123 = load i16, ptr %43, align 2
  %124 = zext i16 %123 to i32
  %125 = tail call i32 %122(ptr noundef %95, i32 noundef %124, ptr noundef null, i32 noundef 0, ptr noundef %94, ptr noundef %48) #14
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %138, label %127

127:                                              ; preds = %121, %115, %96
  %128 = getelementptr inbounds %struct.dvb_demux_filter, ptr %94, i32 0, i32 4
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %127
  %132 = load i32, ptr %0, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %93

134:                                              ; preds = %131, %127
  store i16 0, ptr %43, align 2
  br label %138

135:                                              ; preds = %68
  %136 = load i32, ptr %48, align 4
  %137 = or i32 %136, 8
  store i32 %137, ptr %48, align 4
  br label %138

138:                                              ; preds = %135, %134, %121, %90, %71
  %139 = load i16, ptr %35, align 4
  %140 = add i16 %139, %62
  store i16 %140, ptr %35, align 4
  %141 = load ptr, ptr %39, align 4
  %142 = getelementptr i8, ptr %141, i32 %63
  store ptr %142, ptr %39, align 4
  %143 = zext i16 %140 to i32
  %144 = add nuw nsw i32 %143, 2
  %145 = icmp ult i32 %144, %32
  br i1 %145, label %50, label %146

146:                                              ; preds = %138, %50, %34, %23, %20, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #13

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dmx_ts_feed_start_filtering(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dvb_demux, ptr %3, i32 0, i32 18
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dvb_demux, ptr %3, i32 0, i32 4
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = tail call i32 %17(ptr noundef %0) #14
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.dvb_demux, ptr %3, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %23) #14
  store i32 1, ptr %0, align 4
  store i32 3, ptr %8, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !11
  %24 = load i16, ptr %23, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %26

26:                                               ; preds = %22, %19, %15, %11, %7
  %27 = phi i32 [ 0, %22 ], [ -22, %11 ], [ -22, %7 ], [ -19, %15 ], [ %20, %19 ]
  tail call void @mutex_unlock(ptr noundef %4) #14
  br label %28

28:                                               ; preds = %26, %1
  %29 = phi i32 [ -512, %1 ], [ %27, %26 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dmx_ts_feed_stop_filtering(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dvb_demux, ptr %3, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %4) #14
  %5 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dvb_demux, ptr %3, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(ptr noundef %0) #14
  %14 = getelementptr inbounds %struct.dvb_demux, ptr %3, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %14) #14
  store i32 0, ptr %0, align 4
  store i32 1, ptr %5, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !11
  %15 = load i16, ptr %14, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %17

17:                                               ; preds = %12, %8, %1
  %18 = phi i32 [ %13, %12 ], [ -22, %1 ], [ -19, %8 ]
  tail call void @mutex_unlock(ptr noundef %4) #14
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dmx_ts_feed_set(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ugt i16 %1, 8192
  br i1 %8, label %64, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dvb_demux, ptr %7, i32 0, i32 18
  %11 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %64

13:                                               ; preds = %9
  %14 = and i32 %2, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = icmp ugt i32 %3, 19
  br i1 %17, label %62, label %18

18:                                               ; preds = %16
  %19 = getelementptr %struct.dvb_demux, ptr %7, i32 0, i32 13, i32 %3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = icmp eq ptr %20, %0
  %23 = or i1 %21, %22
  br i1 %23, label %24, label %62

24:                                               ; preds = %18
  store ptr %0, ptr %19, align 4
  %25 = getelementptr %struct.dvb_demux, ptr %7, i32 0, i32 14, i32 %3
  store i16 %1, ptr %25, align 2
  br label %26

26:                                               ; preds = %24, %13
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr inbounds %struct.dvb_demux, ptr %27, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %28) #14
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr inbounds %struct.dvb_demux, ptr %29, i32 0, i32 15
  br label %31

31:                                               ; preds = %35, %26
  %32 = phi ptr [ %30, %26 ], [ %33, %35 ]
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, %30
  br i1 %34, label %47, label %35

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %33, i32 -4392
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %38, label %31

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 5
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 6
  %44 = load i16, ptr %43, align 4
  %45 = zext i16 %44 to i32
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dvb_demux_feed_add, i32 noundef %40, i32 noundef %42, i32 noundef %45) #16
  br label %52

47:                                               ; preds = %31
  %48 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 15
  %49 = load ptr, ptr %30, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %48, ptr %50, align 4
  store ptr %49, ptr %48, align 4
  %51 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 15, i32 1
  store ptr %30, ptr %51, align 4
  store volatile ptr %48, ptr %30, align 4
  br label %52

52:                                               ; preds = %47, %38
  %53 = load ptr, ptr %6, align 4
  %54 = getelementptr inbounds %struct.dvb_demux, ptr %53, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !11
  %55 = load i16, ptr %54, align 4
  %56 = add i16 %55, 1
  store i16 %56, ptr %54, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  %57 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 6
  store i16 %1, ptr %57, align 4
  %58 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 7
  store i64 %4, ptr %58, align 8
  %59 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 10
  store i32 %2, ptr %59, align 8
  %60 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 11
  store i32 %3, ptr %60, align 4
  %61 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 5
  store i32 2, ptr %61, align 8
  br label %62

62:                                               ; preds = %52, %18, %16
  %63 = phi i32 [ 0, %52 ], [ -22, %16 ], [ -22, %18 ]
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %64

64:                                               ; preds = %62, %9, %5
  %65 = phi i32 [ -22, %5 ], [ -512, %9 ], [ %63, %62 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dmx_section_feed_set(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = icmp ugt i16 %1, 8191
  br i1 %4, label %45, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dvb_demux, ptr %7, i32 0, i32 18
  %9 = tail call i32 @mutex_lock_interruptible(ptr noundef %8) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %5
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.dvb_demux, ptr %12, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %13) #14
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.dvb_demux, ptr %14, i32 0, i32 15
  br label %16

16:                                               ; preds = %20, %11
  %17 = phi ptr [ %15, %11 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, %15
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %18, i32 -4392
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %16

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 5
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 6
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i32
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dvb_demux_feed_add, i32 noundef %25, i32 noundef %27, i32 noundef %30) #16
  br label %37

32:                                               ; preds = %16
  %33 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 15
  %34 = load ptr, ptr %15, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %33, ptr %35, align 4
  store ptr %34, ptr %33, align 4
  %36 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 15, i32 1
  store ptr %15, ptr %36, align 4
  store volatile ptr %33, ptr %15, align 4
  br label %37

37:                                               ; preds = %32, %23
  %38 = load ptr, ptr %6, align 4
  %39 = getelementptr inbounds %struct.dvb_demux, ptr %38, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !11
  %40 = load i16, ptr %39, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %39, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  %42 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 6
  store i16 %1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.dmx_section_feed, ptr %0, i32 0, i32 3
  store i32 %2, ptr %43, align 4
  %44 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 5
  store i32 2, ptr %44, align 8
  tail call void @mutex_unlock(ptr noundef %8) #14
  br label %45

45:                                               ; preds = %37, %5, %3
  %46 = phi i32 [ 0, %37 ], [ -22, %3 ], [ -512, %5 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dmx_section_feed_allocate_filter(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_demux, ptr %4, i32 0, i32 18
  %6 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %48

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dvb_demux, ptr %4, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dvb_demux, ptr %4, i32 0, i32 10
  %14 = load ptr, ptr %13, align 8
  br label %15

15:                                               ; preds = %20, %12
  %16 = phi i32 [ 0, %12 ], [ %21, %20 ]
  %17 = getelementptr %struct.dvb_demux_filter, ptr %14, i32 %16, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = add nuw nsw i32 %16, 1
  %22 = icmp eq i32 %21, %10
  br i1 %22, label %46, label %15

23:                                               ; preds = %15, %8
  %24 = phi i32 [ 0, %8 ], [ %16, %15 ]
  %25 = icmp eq i32 %24, %10
  br i1 %25, label %46, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.dvb_demux, ptr %4, i32 0, i32 10
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr %struct.dvb_demux_filter, ptr %28, i32 %24, i32 7
  store i32 1, ptr %29, align 4
  %30 = load ptr, ptr %27, align 8
  %31 = getelementptr %struct.dvb_demux_filter, ptr %30, i32 %24
  %32 = icmp eq ptr %31, null
  br i1 %32, label %46, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.dvb_demux, ptr %4, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %34) #14
  store ptr %31, ptr %1, align 4
  %35 = getelementptr inbounds %struct.dmx_section_filter, ptr %31, i32 0, i32 3
  store ptr %0, ptr %35, align 4
  %36 = load ptr, ptr %1, align 4
  %37 = getelementptr inbounds %struct.dmx_section_filter, ptr %36, i32 0, i32 4
  store ptr null, ptr %37, align 4
  %38 = getelementptr %struct.dvb_demux_filter, ptr %30, i32 %24, i32 5
  store ptr %0, ptr %38, align 4
  %39 = getelementptr %struct.dvb_demux_filter, ptr %30, i32 %24, i32 8
  store i32 1, ptr %39, align 4
  %40 = getelementptr %struct.dvb_demux_filter, ptr %30, i32 %24, i32 7
  store i32 2, ptr %40, align 4
  %41 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 8
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr %struct.dvb_demux_filter, ptr %30, i32 %24, i32 4
  store ptr %42, ptr %43, align 4
  store ptr %31, ptr %41, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !11
  %44 = load i16, ptr %34, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %46

46:                                               ; preds = %33, %26, %23, %20
  %47 = phi i32 [ 0, %33 ], [ -16, %23 ], [ -16, %26 ], [ -16, %20 ]
  tail call void @mutex_unlock(ptr noundef %5) #14
  br label %48

48:                                               ; preds = %46, %2
  %49 = phi i32 [ -512, %2 ], [ %47, %46 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dmx_section_feed_start_filtering(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dvb_demux, ptr %3, i32 0, i32 18
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %59

7:                                                ; preds = %1
  %8 = load i32, ptr %0, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %57

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %57, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dmx_section_feed, ptr %0, i32 0, i32 9
  store i16 0, ptr %15, align 8
  %16 = getelementptr inbounds %struct.dmx_section_feed, ptr %0, i32 0, i32 6
  %17 = getelementptr inbounds %struct.dmx_section_feed, ptr %0, i32 0, i32 5
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.dmx_section_feed, ptr %0, i32 0, i32 7
  store i16 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.dmx_section_feed, ptr %0, i32 0, i32 8
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 13
  store i8 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.dvb_demux, ptr %3, i32 0, i32 4
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %57, label %24

24:                                               ; preds = %41, %14
  %25 = phi ptr [ %46, %41 ], [ %12, %14 ]
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi i8 [ 0, %24 ], [ %38, %26 ]
  %28 = phi i32 [ 0, %24 ], [ %39, %26 ]
  %29 = getelementptr %struct.dmx_section_filter, ptr %25, i32 0, i32 2, i32 %28
  %30 = load i8, ptr %29, align 1
  %31 = getelementptr %struct.dmx_section_filter, ptr %25, i32 0, i32 1, i32 %28
  %32 = load i8, ptr %31, align 1
  %33 = and i8 %32, %30
  %34 = getelementptr %struct.dvb_demux_filter, ptr %25, i32 0, i32 1, i32 %28
  store i8 %33, ptr %34, align 1
  %35 = xor i8 %30, -1
  %36 = and i8 %32, %35
  %37 = getelementptr %struct.dvb_demux_filter, ptr %25, i32 0, i32 2, i32 %28
  store i8 %36, ptr %37, align 1
  %38 = or i8 %36, %27
  %39 = add nuw nsw i32 %28, 1
  %40 = icmp eq i32 %39, 18
  br i1 %40, label %41, label %26

41:                                               ; preds = %26
  %42 = icmp ne i8 %38, 0
  %43 = getelementptr inbounds %struct.dvb_demux_filter, ptr %25, i32 0, i32 3
  %44 = zext i1 %42 to i8
  store i8 %44, ptr %43, align 4
  %45 = getelementptr inbounds %struct.dvb_demux_filter, ptr %25, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %24

48:                                               ; preds = %41
  %49 = load ptr, ptr %21, align 8
  %50 = tail call i32 %49(ptr noundef %0) #14
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.dvb_demux, ptr %3, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %53) #14
  store i32 1, ptr %0, align 4
  %54 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 5
  store i32 3, ptr %54, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !11
  %55 = load i16, ptr %53, align 4
  %56 = add i16 %55, 1
  store i16 %56, ptr %53, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %57

57:                                               ; preds = %52, %48, %14, %10, %7
  %58 = phi i32 [ 0, %52 ], [ -16, %7 ], [ -22, %10 ], [ -19, %14 ], [ %50, %48 ]
  tail call void @mutex_unlock(ptr noundef %4) #14
  br label %59

59:                                               ; preds = %57, %1
  %60 = phi i32 [ -512, %1 ], [ %58, %57 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dmx_section_feed_stop_filtering(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dvb_demux, ptr %3, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %4) #14
  %5 = getelementptr inbounds %struct.dvb_demux, ptr %3, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = tail call i32 %6(ptr noundef %0) #14
  %10 = getelementptr inbounds %struct.dvb_demux, ptr %3, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %10) #14
  %11 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 5
  store i32 2, ptr %11, align 8
  store i32 0, ptr %0, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !11
  %12 = load i16, ptr %10, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i32 [ %9, %8 ], [ -19, %1 ]
  tail call void @mutex_unlock(ptr noundef %4) #14
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dmx_section_feed_release_filter(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_demux, ptr %4, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %5) #14
  %6 = getelementptr inbounds %struct.dvb_demux_filter, ptr %1, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %9, label %37

9:                                                ; preds = %2
  %10 = load i32, ptr %0, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  tail call void @mutex_unlock(ptr noundef %5) #14
  %13 = getelementptr inbounds %struct.dmx_section_feed, ptr %0, i32 0, i32 14
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %0) #14
  tail call void @mutex_lock(ptr noundef %5) #14
  br label %16

16:                                               ; preds = %12, %9
  %17 = getelementptr inbounds %struct.dvb_demux, ptr %4, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %17) #14
  %18 = getelementptr inbounds %struct.dvb_demux_feed, ptr %0, i32 0, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.dvb_demux_filter, ptr %1, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  store ptr %23, ptr %18, align 8
  br label %33

24:                                               ; preds = %24, %16
  %25 = phi ptr [ %27, %24 ], [ %19, %16 ]
  %26 = getelementptr inbounds %struct.dvb_demux_filter, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %1
  br i1 %28, label %29, label %24

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.dvb_demux_filter, ptr %25, i32 0, i32 4
  %31 = getelementptr inbounds %struct.dvb_demux_filter, ptr %1, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  store ptr %32, ptr %30, align 4
  br label %33

33:                                               ; preds = %29, %21
  %34 = getelementptr inbounds %struct.dvb_demux_filter, ptr %1, i32 0, i32 7
  store i32 0, ptr %34, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !11
  %35 = load i16, ptr %17, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %37

37:                                               ; preds = %33, %2
  %38 = phi i32 [ 0, %33 ], [ -22, %2 ]
  tail call void @mutex_unlock(ptr noundef %5) #14
  ret i32 %38
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.usub.sat.i8(i8, i8) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readonly willreturn }

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
!8 = !{i64 1056167, i64 1056194}
!9 = !{i64 1056862, i64 1056889, i64 1056922, i64 1056943, i64 1056970, i64 1056996}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2149262607}
!12 = !{i64 2149258431}
!13 = !{i64 2149258506, i64 2149258533, i64 2149258580, i64 2149258602, i64 2149258630, i64 2149258650}
!14 = !{i64 515051}
!15 = !{i64 2149286751}
!16 = !{i8 0, i8 2}
