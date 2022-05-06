; ModuleID = '/llk/IR/mm/page_isolation.c_pt.bc'
source_filename = "../mm/page_isolation.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.0, %struct.trace_event, ptr, ptr, %union.anon.2, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.0 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.2 = type { ptr }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, %struct.zone_padding, %struct.lruvec, i32, [56 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [28 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [8 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [26 x i8], %struct.zone_padding, [10 x %struct.atomic_t], [0 x %struct.atomic_t], [24 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_test_pages_isolated = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.page = type { i32, %union.anon.4, %union.anon.67, %struct.atomic_t }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.67 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_test_pages_isolated = internal constant [20 x i8] c"test_pages_isolated\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_test_pages_isolated = dso_local global %struct.static_call_key { ptr @__traceiter_test_pages_isolated }, align 4
@__tracepoint_test_pages_isolated = dso_local global %struct.tracepoint { ptr @__tpstrtab_test_pages_isolated, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_test_pages_isolated, ptr null, ptr @__traceiter_test_pages_isolated, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_test_pages_isolated = internal constant ptr @__tracepoint_test_pages_isolated, section "__tracepoints_ptrs", align 4
@str__page_isolation__trace_system_name = internal constant [15 x i8] c"page_isolation\00", align 1
@trace_event_fields_test_pages_isolated = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_test_pages_isolated = internal global %struct.trace_event_class { ptr @str__page_isolation__trace_system_name, ptr @trace_event_raw_event_test_pages_isolated, ptr @perf_trace_test_pages_isolated, ptr @trace_event_reg, ptr @trace_event_fields_test_pages_isolated, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_test_pages_isolated, i64 24), ptr getelementptr (i8, ptr @event_class_test_pages_isolated, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_test_pages_isolated = internal global %struct.trace_event_functions { ptr @trace_raw_output_test_pages_isolated, ptr null, ptr null, ptr null }, align 4
@print_fmt_test_pages_isolated = internal global [148 x i8] c"\22start_pfn=0x%lx end_pfn=0x%lx fin_pfn=0x%lx ret=%s\22, REC->start_pfn, REC->end_pfn, REC->fin_pfn, REC->end_pfn <= REC->fin_pfn ? \22success\22 : \22fail\22\00", align 1
@event_test_pages_isolated = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_test_pages_isolated, %union.anon.0 { ptr @__tracepoint_test_pages_isolated }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_test_pages_isolated }, ptr @print_fmt_test_pages_isolated, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_test_pages_isolated = internal global ptr @event_test_pages_isolated, section "_ftrace_events", align 4
@.str = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"start_pfn\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"end_pfn\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"fin_pfn\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"start_pfn=0x%lx end_pfn=0x%lx fin_pfn=0x%lx ret=%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"unmovable page\00", align 1
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__event_test_pages_isolated, ptr @__tracepoint_ptr_test_pages_isolated, ptr @__tracepoint_test_pages_isolated, ptr @event_class_test_pages_isolated, ptr @event_test_pages_isolated], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_test_pages_isolated(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_test_pages_isolated, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, i32 noundef %2, i32 noundef %3) #6
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_test_pages_isolated(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #6
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_test_pages_isolated, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_test_pages_isolated, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_test_pages_isolated, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #6
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_test_pages_isolated(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #4, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #6
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #6
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_test_pages_isolated, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_test_pages_isolated, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_test_pages_isolated, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #6
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @start_isolate_page_range(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = and i32 %0, 2047
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !10

7:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/page_isolation.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 193, 0\0A.popsection", ""() #6, !srcloc !13
  unreachable

8:                                                ; preds = %4
  %9 = and i32 %1, 2047
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !10

11:                                               ; preds = %8
  %12 = icmp ult i32 %0, %1
  br i1 %12, label %14, label %73

13:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/page_isolation.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #6, !srcloc !14
  unreachable

14:                                               ; preds = %70, %11
  %15 = phi i32 [ %71, %70 ], [ %0, %11 ]
  br label %19

16:                                               ; preds = %19
  %17 = add nuw nsw i32 %20, 1
  %18 = icmp eq i32 %17, 2048
  br i1 %18, label %70, label %19

19:                                               ; preds = %16, %14
  %20 = phi i32 [ %17, %16 ], [ 0, %14 ]
  %21 = add i32 %20, %15
  %22 = tail call i32 @pfn_valid(i32 noundef %21) #6
  %23 = icmp eq i32 %22, 0
  %24 = load ptr, ptr @mem_map, align 4
  %25 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %26 = sub i32 %21, %25
  %27 = getelementptr %struct.page, ptr %24, i32 %26
  %28 = icmp eq ptr %27, null
  %29 = select i1 %23, i1 true, i1 %28
  br i1 %29, label %16, label %30

30:                                               ; preds = %19
  %31 = load i32, ptr %27, align 4
  %32 = lshr i32 %31, 30
  %33 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %32
  %34 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %32, i32 22
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %34) #6
  %36 = load ptr, ptr @mem_map, align 4
  %37 = ptrtoint ptr %27 to i32
  %38 = ptrtoint ptr %36 to i32
  %39 = sub i32 %37, %38
  %40 = ashr exact i32 %39, 5
  %41 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %42 = add i32 %40, %41
  %43 = tail call i32 @get_pfnblock_flags_mask(ptr noundef nonnull %27, i32 noundef %42, i32 noundef 7) #6
  %44 = icmp eq i32 %43, 5
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %35) #6
  br label %69

46:                                               ; preds = %30
  %47 = tail call ptr @has_unmovable_pages(ptr noundef %33, ptr noundef nonnull %27, i32 noundef %2, i32 noundef %3) #6
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load ptr, ptr @mem_map, align 4
  %51 = ptrtoint ptr %50 to i32
  %52 = sub i32 %37, %51
  %53 = ashr exact i32 %52, 5
  %54 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %55 = add i32 %53, %54
  %56 = tail call i32 @get_pfnblock_flags_mask(ptr noundef nonnull %27, i32 noundef %55, i32 noundef 7) #6
  tail call void @set_pageblock_migratetype(ptr noundef nonnull %27, i32 noundef 5) #6
  %57 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %32, i32 16
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 4
  %60 = tail call i32 @move_freepages_block(ptr noundef %33, ptr noundef nonnull %27, i32 noundef 5, ptr noundef null) #6
  %61 = sub i32 0, %60
  tail call void @__mod_zone_page_state(ptr noundef %33, i32 noundef 0, i32 noundef %61) #6
  %62 = icmp eq i32 %56, 4
  br i1 %62, label %63, label %68, !prof !11

63:                                               ; preds = %49
  tail call void @__mod_zone_page_state(ptr noundef %33, i32 noundef 9, i32 noundef %61) #6
  br label %68

64:                                               ; preds = %46
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %35) #6
  %65 = and i32 %3, 2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  tail call void @dump_page(ptr noundef nonnull %47, ptr noundef nonnull @.str.7) #6
  br label %69

68:                                               ; preds = %63, %49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %35) #6
  br label %70

69:                                               ; preds = %67, %64, %45
  tail call void @undo_isolate_page_range(i32 noundef %0, i32 noundef %15, i32 noundef %2)
  br label %73

70:                                               ; preds = %68, %16
  %71 = add i32 %15, 2048
  %72 = icmp ult i32 %71, %1
  br i1 %72, label %14, label %73

73:                                               ; preds = %70, %69, %11
  %74 = phi i32 [ -16, %69 ], [ 0, %11 ], [ 0, %70 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @undo_isolate_page_range(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %0, 2047
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !10

6:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/page_isolation.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #6, !srcloc !15
  unreachable

7:                                                ; preds = %3
  %8 = and i32 %1, 2047
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14, !prof !10

10:                                               ; preds = %7
  %11 = icmp ult i32 %0, %1
  br i1 %11, label %12, label %63

12:                                               ; preds = %10
  %13 = icmp eq i32 %2, 4
  br label %15

14:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/page_isolation.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #6, !srcloc !16
  unreachable

15:                                               ; preds = %60, %12
  %16 = phi i32 [ %0, %12 ], [ %61, %60 ]
  br label %20

17:                                               ; preds = %20
  %18 = add nuw nsw i32 %21, 1
  %19 = icmp eq i32 %18, 2048
  br i1 %19, label %60, label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ %18, %17 ], [ 0, %15 ]
  %22 = add i32 %21, %16
  %23 = tail call i32 @pfn_valid(i32 noundef %22) #6
  %24 = icmp eq i32 %23, 0
  %25 = load ptr, ptr @mem_map, align 4
  %26 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %27 = sub i32 %22, %26
  %28 = getelementptr %struct.page, ptr %25, i32 %27
  %29 = icmp eq ptr %28, null
  %30 = select i1 %24, i1 true, i1 %29
  br i1 %30, label %17, label %31

31:                                               ; preds = %20
  %32 = shl i32 %27, 5
  %33 = ashr exact i32 %32, 5
  %34 = add i32 %33, %26
  %35 = tail call i32 @get_pfnblock_flags_mask(ptr noundef nonnull %28, i32 noundef %34, i32 noundef 7) #6
  %36 = icmp eq i32 %35, 5
  br i1 %36, label %37, label %60

37:                                               ; preds = %31
  %38 = ptrtoint ptr %28 to i32
  %39 = load i32, ptr %28, align 4
  %40 = lshr i32 %39, 30
  %41 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %40
  %42 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %40, i32 22
  %43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %42) #6
  %44 = load ptr, ptr @mem_map, align 4
  %45 = ptrtoint ptr %44 to i32
  %46 = sub i32 %38, %45
  %47 = ashr exact i32 %46, 5
  %48 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %49 = add i32 %47, %48
  %50 = tail call i32 @get_pfnblock_flags_mask(ptr noundef nonnull %28, i32 noundef %49, i32 noundef 7) #6
  %51 = icmp eq i32 %50, 5
  br i1 %51, label %52, label %59

52:                                               ; preds = %37
  %53 = tail call i32 @move_freepages_block(ptr noundef %41, ptr noundef nonnull %28, i32 noundef %2, ptr noundef null) #6
  tail call void @__mod_zone_page_state(ptr noundef %41, i32 noundef 0, i32 noundef %53) #6
  br i1 %13, label %54, label %55, !prof !11

54:                                               ; preds = %52
  tail call void @__mod_zone_page_state(ptr noundef %41, i32 noundef 9, i32 noundef %53) #6
  br label %55

55:                                               ; preds = %54, %52
  tail call void @set_pageblock_migratetype(ptr noundef nonnull %28, i32 noundef %2) #6
  %56 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %40, i32 16
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, -1
  store i32 %58, ptr %56, align 4
  br label %59

59:                                               ; preds = %55, %37
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %43) #6
  br label %60

60:                                               ; preds = %59, %31, %17
  %61 = add i32 %16, 2048
  %62 = icmp ult i32 %61, %1
  br i1 %62, label %15, label %63

63:                                               ; preds = %60, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @test_pages_isolated(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ugt i32 %1, %0
  br i1 %4, label %5, label %30

5:                                                ; preds = %27, %3
  %6 = phi i32 [ %28, %27 ], [ %0, %3 ]
  br label %10

7:                                                ; preds = %10
  %8 = add nuw nsw i32 %11, 1
  %9 = icmp eq i32 %8, 2048
  br i1 %9, label %27, label %10

10:                                               ; preds = %7, %5
  %11 = phi i32 [ %8, %7 ], [ 0, %5 ]
  %12 = add i32 %11, %6
  %13 = tail call i32 @pfn_valid(i32 noundef %12) #6
  %14 = icmp eq i32 %13, 0
  %15 = load ptr, ptr @mem_map, align 4
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %17 = sub i32 %12, %16
  %18 = getelementptr %struct.page, ptr %15, i32 %17
  %19 = icmp eq ptr %18, null
  %20 = select i1 %14, i1 true, i1 %19
  br i1 %20, label %7, label %21

21:                                               ; preds = %10
  %22 = shl i32 %17, 5
  %23 = ashr exact i32 %22, 5
  %24 = add i32 %23, %16
  %25 = tail call i32 @get_pfnblock_flags_mask(ptr noundef nonnull %18, i32 noundef %24, i32 noundef 7) #6
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %7
  %28 = add i32 %6, 2048
  %29 = icmp ult i32 %28, %1
  br i1 %29, label %5, label %30

30:                                               ; preds = %27, %21, %3
  %31 = phi i32 [ %0, %3 ], [ %6, %21 ], [ %28, %27 ]
  %32 = sub i32 %1, %0
  %33 = icmp eq i32 %1, %0
  br i1 %33, label %99, label %37

34:                                               ; preds = %37
  %35 = add nuw i32 %38, 1
  %36 = icmp eq i32 %35, %32
  br i1 %36, label %99, label %37

37:                                               ; preds = %34, %30
  %38 = phi i32 [ %35, %34 ], [ 0, %30 ]
  %39 = add i32 %38, %0
  %40 = tail call i32 @pfn_valid(i32 noundef %39) #6
  %41 = icmp eq i32 %40, 0
  %42 = load ptr, ptr @mem_map, align 4
  %43 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %44 = sub i32 %39, %43
  %45 = getelementptr %struct.page, ptr %42, i32 %44
  %46 = icmp eq ptr %45, null
  %47 = select i1 %41, i1 true, i1 %46
  br i1 %47, label %34, label %48

48:                                               ; preds = %37
  %49 = icmp ult i32 %31, %1
  br i1 %49, label %99, label %50

50:                                               ; preds = %48
  %51 = load i32, ptr %45, align 4
  %52 = lshr i32 %51, 30
  %53 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %52, i32 22
  %54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %53) #6
  br i1 %4, label %55, label %95

55:                                               ; preds = %50
  %56 = load ptr, ptr @mem_map, align 4
  %57 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %58 = and i32 %2, 1
  %59 = icmp ne i32 %58, 0
  br label %60

60:                                               ; preds = %91, %55
  %61 = phi i32 [ %0, %55 ], [ %93, %91 ]
  %62 = sub i32 %61, %57
  %63 = getelementptr %struct.page, ptr %56, i32 %62
  %64 = getelementptr %struct.page, ptr %56, i32 %62, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, -268435328
  %67 = icmp eq i32 %66, -268435456
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = getelementptr %struct.page, ptr %56, i32 %62, i32 1, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = shl nuw i32 1, %70
  br label %91

72:                                               ; preds = %60
  %73 = and i32 %65, -268435200
  %74 = icmp eq i32 %73, -268435456
  %75 = select i1 %59, i1 %74, i1 false
  br i1 %75, label %76, label %95

76:                                               ; preds = %72
  %77 = getelementptr %struct.page, ptr %56, i32 %62, i32 1
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81, !prof !10

81:                                               ; preds = %76
  %82 = add i32 %78, -1
  br label %85

83:                                               ; preds = %76
  %84 = ptrtoint ptr %63 to i32
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = inttoptr i32 %86 to ptr
  %88 = getelementptr inbounds %struct.page, ptr %87, i32 0, i32 3
  %89 = load volatile i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %85, %68
  %92 = phi i32 [ %71, %68 ], [ 1, %85 ]
  %93 = add i32 %92, %61
  %94 = icmp ult i32 %93, %1
  br i1 %94, label %60, label %95

95:                                               ; preds = %91, %85, %72, %50
  %96 = phi i32 [ %0, %50 ], [ %93, %91 ], [ %61, %85 ], [ %61, %72 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %53, i32 noundef %54) #6
  %97 = icmp ult i32 %96, %1
  %98 = select i1 %97, i32 -16, i32 0
  br label %99

99:                                               ; preds = %95, %48, %34, %30
  %100 = phi i32 [ %98, %95 ], [ -16, %48 ], [ -16, %30 ], [ -16, %34 ]
  %101 = phi i32 [ %96, %95 ], [ %31, %48 ], [ %31, %30 ], [ %31, %34 ]
  %102 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_test_pages_isolated, i32 0, i32 1), align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %99
  %105 = tail call ptr @llvm.thread.pointer() #6
  %106 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 2
  %107 = load i32, ptr %106, align 8
  %108 = lshr i32 %107, 5
  %109 = getelementptr i32, ptr @__cpu_online_mask, i32 %108
  %110 = load volatile i32, ptr %109, align 4
  %111 = and i32 %107, 31
  %112 = shl nuw i32 1, %111
  %113 = and i32 %112, %110
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %127, label %115

115:                                              ; preds = %104
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  %116 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_test_pages_isolated, i32 0, i32 7), align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %126, label %118

118:                                              ; preds = %118, %115
  %119 = phi ptr [ %123, %118 ], [ %116, %115 ]
  %120 = load volatile ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.tracepoint_func, ptr %119, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  tail call void %120(ptr noundef %122, i32 noundef %0, i32 noundef %1, i32 noundef %101) #6
  %123 = getelementptr %struct.tracepoint_func, ptr %119, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %118

126:                                              ; preds = %118, %115
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !18
  br label %127

127:                                              ; preds = %126, %104, %99
  ret i32 %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_test_pages_isolated(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_test_pages_isolated, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_test_pages_isolated, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_test_pages_isolated, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %13, %15
  %17 = select i1 %16, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %11, i32 noundef %13, i32 noundef %15, ptr noundef nonnull %17) #6
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #6
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @has_unmovable_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_pfnblock_flags_mask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pageblock_migratetype(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @move_freepages_block(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_zone_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 772184}
!13 = !{i64 2154108150, i64 2154108634, i64 2154108187, i64 2154108243, i64 2154108277, i64 2154108301, i64 2154108342, i64 2154108363, i64 2154108391, i64 2154108425}
!14 = !{i64 2154109426, i64 2154109910, i64 2154109463, i64 2154109519, i64 2154109553, i64 2154109577, i64 2154109618, i64 2154109639, i64 2154109667, i64 2154109701}
!15 = !{i64 2154110855, i64 2154111339, i64 2154110892, i64 2154110948, i64 2154110982, i64 2154111006, i64 2154111047, i64 2154111068, i64 2154111096, i64 2154111130}
!16 = !{i64 2154112131, i64 2154112615, i64 2154112168, i64 2154112224, i64 2154112258, i64 2154112282, i64 2154112323, i64 2154112344, i64 2154112372, i64 2154112406}
!17 = !{i64 2153346341}
!18 = !{i64 2153346545}
