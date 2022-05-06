; ModuleID = '/llk/IR/drivers/clocksource/timer-imx-gpt.c_pt.bc'
source_filename = "../drivers/clocksource/timer-imx-gpt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.imx_gpt_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.delay_timer = type { ptr, i32 }
%struct.imx_timer = type { i32, ptr, i32, ptr, ptr, ptr, [40 x i8], %struct.clock_event_device }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"imx-gpt.0\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"per\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@__of_table_imx1_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx1-gpt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx1_timer_init_dt }, section "__timer_of_table", align 4
@__of_table_imx21_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx21-gpt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx21_timer_init_dt }, section "__timer_of_table", align 4
@__of_table_imx27_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx27-gpt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx21_timer_init_dt }, section "__timer_of_table", align 4
@__of_table_imx31_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx31-gpt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx31_timer_init_dt }, section "__timer_of_table", align 4
@__of_table_imx25_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx25-gpt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx31_timer_init_dt }, section "__timer_of_table", align 4
@__of_table_imx50_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx50-gpt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx31_timer_init_dt }, section "__timer_of_table", align 4
@__of_table_imx51_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx51-gpt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx31_timer_init_dt }, section "__timer_of_table", align 4
@__of_table_imx53_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-gpt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx31_timer_init_dt }, section "__timer_of_table", align 4
@__of_table_imx6q_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-gpt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx31_timer_init_dt }, section "__timer_of_table", align 4
@__of_table_imx6dl_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6dl-gpt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6dl_timer_init_dt }, section "__timer_of_table", align 4
@__of_table_imx6sl_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sl-gpt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6dl_timer_init_dt }, section "__timer_of_table", align 4
@__of_table_imx6sx_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-gpt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6dl_timer_init_dt }, section "__timer_of_table", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@imx1_gpt_data = internal constant %struct.imx_gpt_data { i32 20, i32 16, i32 8, ptr @imx1_gpt_setup_tctl, ptr @imx1_gpt_irq_enable, ptr @imx1_gpt_irq_disable, ptr @imx1_gpt_irq_acknowledge, ptr @mx1_2_set_next_event }, align 4
@imx21_gpt_data = internal constant %struct.imx_gpt_data { i32 20, i32 16, i32 8, ptr @imx1_gpt_setup_tctl, ptr @imx1_gpt_irq_enable, ptr @imx1_gpt_irq_disable, ptr @imx21_gpt_irq_acknowledge, ptr @mx1_2_set_next_event }, align 4
@imx31_gpt_data = internal constant %struct.imx_gpt_data { i32 8, i32 36, i32 16, ptr @imx31_gpt_setup_tctl, ptr @imx31_gpt_irq_enable, ptr @imx31_gpt_irq_disable, ptr @imx31_gpt_irq_acknowledge, ptr @v2_set_next_event }, align 4
@imx6dl_gpt_data = internal constant %struct.imx_gpt_data { i32 8, i32 36, i32 16, ptr @imx6dl_gpt_setup_tctl, ptr @imx31_gpt_irq_enable, ptr @imx31_gpt_irq_disable, ptr @imx31_gpt_irq_acknowledge, ptr @v2_set_next_event }, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"\013i.MX timer: unable to get clk\0A\00", align 1
@imx_delay_timer = internal global %struct.delay_timer zeroinitializer, align 4
@sched_clock_reg = internal unnamed_addr global ptr null, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"mxc_timer1\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"i.MX Timer Tick\00", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@mxc_timer_init_dt.initialized = internal unnamed_addr global i1 false, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"osc_per\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"fsl,imx6dl\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__of_table_imx1_timer, ptr @__of_table_imx21_timer, ptr @__of_table_imx25_timer, ptr @__of_table_imx27_timer, ptr @__of_table_imx31_timer, ptr @__of_table_imx50_timer, ptr @__of_table_imx51_timer, ptr @__of_table_imx53_timer, ptr @__of_table_imx6dl_timer, ptr @__of_table_imx6q_timer, ptr @__of_table_imx6sl_timer, ptr @__of_table_imx6sx_timer], section "llvm.metadata"
@switch.table._mxc_timer_init = private unnamed_addr constant [4 x ptr] [ptr @imx1_gpt_data, ptr @imx21_gpt_data, ptr @imx31_gpt_data, ptr @imx6dl_gpt_data], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @mxc_timer_init(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 section ".init.text" {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 256) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clocksource/timer-imx-gpt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 428, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

8:                                                ; preds = %3
  %9 = tail call ptr @clk_get_sys(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6
  %10 = getelementptr inbounds %struct.imx_timer, ptr %5, i32 0, i32 3
  store ptr %9, ptr %10, align 4
  %11 = tail call ptr @clk_get_sys(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #6
  %12 = getelementptr inbounds %struct.imx_timer, ptr %5, i32 0, i32 4
  store ptr %11, ptr %12, align 16
  %13 = tail call ptr @ioremap(i32 noundef %0, i32 noundef 4096) #6
  %14 = getelementptr inbounds %struct.imx_timer, ptr %5, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clocksource/timer-imx-gpt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

17:                                               ; preds = %8
  store i32 %2, ptr %5, align 64
  %18 = getelementptr inbounds %struct.imx_timer, ptr %5, i32 0, i32 2
  store i32 %1, ptr %18, align 8
  %19 = tail call fastcc i32 @_mxc_timer_init(ptr noundef nonnull %5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_sys(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @_mxc_timer_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = load i32, ptr %0, align 64
  %3 = icmp ult i32 %2, 4
  br i1 %3, label %4, label %47

4:                                                ; preds = %1
  %5 = getelementptr inbounds [4 x ptr], ptr @switch.table._mxc_timer_init, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 5
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  %13 = load ptr, ptr %8, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %47

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 16
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @clk_prepare(ptr noundef %17) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = tail call i32 @clk_enable(ptr noundef %17) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @clk_unprepare(ptr noundef %17) #6
  br label %26

26:                                               ; preds = %25, %22, %19, %15
  %27 = load ptr, ptr %8, align 4
  %28 = tail call i32 @clk_prepare(ptr noundef %27) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = tail call i32 @clk_enable(ptr noundef %27) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void @clk_unprepare(ptr noundef %27) #6
  br label %34

34:                                               ; preds = %33, %30, %26
  %35 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #6, !srcloc !11
  %37 = load ptr, ptr %35, align 4
  %38 = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #6, !srcloc !11
  %39 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.imx_gpt_data, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  tail call void %42(ptr noundef %0) #6
  %43 = tail call fastcc i32 @mxc_clocksource_init(ptr noundef %0) #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = tail call fastcc i32 @mxc_clockevent_init(ptr noundef %0) #7
  br label %47

47:                                               ; preds = %45, %34, %11, %1
  %48 = phi i32 [ %14, %11 ], [ %46, %45 ], [ -22, %1 ], [ %43, %34 ]
  ret i32 %48
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx1_timer_init_dt(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call fastcc i32 @mxc_timer_init_dt(ptr noundef %0, i32 noundef 0) #7
  ret i32 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx21_timer_init_dt(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call fastcc i32 @mxc_timer_init_dt(ptr noundef %0, i32 noundef 1) #7
  ret i32 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx31_timer_init_dt(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.7) #6
  %3 = icmp eq i32 %2, 0
  %4 = select i1 %3, i32 2, i32 3
  %5 = tail call fastcc i32 @mxc_timer_init_dt(ptr noundef %0, i32 noundef %4) #7
  ret i32 %5
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx6dl_timer_init_dt(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call fastcc i32 @mxc_timer_init_dt(ptr noundef %0, i32 noundef 3) #7
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @mxc_clocksource_init(ptr nocapture noundef readonly %0) unnamed_addr #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_get_rate(ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.imx_gpt_data, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %6, i32 %10
  store ptr @imx_read_current_timer, ptr @imx_delay_timer, align 4
  store i32 %4, ptr getelementptr inbounds (%struct.delay_timer, ptr @imx_delay_timer, i32 0, i32 1), align 4
  tail call void @register_current_timer_delay(ptr noundef nonnull @imx_delay_timer) #6
  store ptr %11, ptr @sched_clock_reg, align 4
  tail call void @sched_clock_register(ptr noundef nonnull @mxc_read_sched_clock, i32 noundef 32, i32 noundef %4) #6
  %12 = tail call i32 @clocksource_mmio_init(ptr noundef %11, ptr noundef nonnull @.str.4, i32 noundef %4, i32 noundef 200, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_up) #6
  ret i32 %12
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @mxc_clockevent_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 7
  %3 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 7, i32 21
  store ptr @.str.4, ptr %3, align 4
  %4 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 7, i32 9
  store i32 34, ptr %4, align 4
  %5 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 7, i32 14
  store ptr @mxc_shutdown, ptr %5, align 8
  %6 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 7, i32 12
  store ptr @mxc_set_oneshot, ptr %6, align 64
  %7 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 7, i32 15
  store ptr @mxc_shutdown, ptr %7, align 4
  %8 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.imx_gpt_data, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 7, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 7, i32 22
  store i32 200, ptr %13, align 8
  %14 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 7, i32 25
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr %14, align 4
  %15 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 7, i32 23
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @clk_get_rate(ptr noundef %19) #6
  tail call void @clockevents_config_and_register(ptr noundef %2, i32 noundef %20, i32 noundef 255, i32 noundef -2) #6
  %21 = load i32, ptr %15, align 8
  %22 = tail call i32 @request_threaded_irq(i32 noundef %21, ptr noundef nonnull @mxc_timer_interrupt, ptr noundef null, i32 noundef 86528, ptr noundef nonnull @.str.5, ptr noundef %2) #6
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx1_gpt_setup_tctl(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 259) #6, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx1_gpt_irq_enable(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !12
  %5 = or i32 %4, 16
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #6, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx1_gpt_irq_disable(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !12
  %5 = and i32 %4, -17
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #6, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx1_gpt_irq_acknowledge(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #6, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mx1_2_set_next_event(i32 noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr i8, ptr %1, i32 -60
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !12
  %7 = add i32 %6, %0
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #6, !srcloc !11
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !12
  %13 = sub i32 %7, %12
  %14 = icmp slt i32 %13, 0
  %15 = select i1 %14, i32 -62, i32 0
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx21_gpt_irq_acknowledge(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 3) #6, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx31_gpt_setup_tctl(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_get_rate(ptr noundef %3) #6
  %5 = icmp eq i32 %4, 3000000
  %6 = select i1 %5, i32 841, i32 649
  %7 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #6, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx31_gpt_irq_enable(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #6, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx31_gpt_irq_disable(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #6, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx31_gpt_irq_acknowledge(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #6, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v2_set_next_event(i32 noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr i8, ptr %1, i32 -60
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !12
  %7 = add i32 %6, %0
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #6, !srcloc !11
  %10 = icmp ult i32 %0, 2147483647
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 36
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !12
  %15 = sub i32 %7, %14
  %16 = icmp slt i32 %15, 0
  %17 = select i1 %16, i32 -62, i32 0
  br label %18

18:                                               ; preds = %11, %2
  %19 = phi i32 [ 0, %2 ], [ %17, %11 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx6dl_gpt_setup_tctl(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_get_rate(ptr noundef %3) #6
  %5 = icmp eq i32 %4, 3000000
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 28672) #6, !srcloc !11
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 1865, %6 ], [ 649, %1 ]
  %12 = getelementptr inbounds %struct.imx_timer, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #6, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_read_current_timer() #4 {
  %1 = load ptr, ptr @sched_clock_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !12
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_current_timer_delay(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @mxc_read_sched_clock() #4 {
  %1 = load ptr, ptr @sched_clock_reg, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %1) #6, !srcloc !12
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ 0, %0 ]
  %7 = zext i32 %6 to i64
  ret i64 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_up(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxc_shutdown(ptr noundef %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = getelementptr i8, ptr %0, i32 -44
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.imx_gpt_data, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %2) #6
  %7 = getelementptr i8, ptr %0, i32 -60
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.imx_gpt_data, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !12
  %14 = add i32 %13, -3
  %15 = load ptr, ptr %7, align 4
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr inbounds %struct.imx_gpt_data, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %15, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %14) #6, !srcloc !11
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.imx_gpt_data, ptr %20, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxc_set_oneshot(ptr noundef %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = getelementptr i8, ptr %0, i32 -44
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.imx_gpt_data, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %2) #6
  %7 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 16
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %27, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -60
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr inbounds %struct.imx_gpt_data, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !12
  %18 = add i32 %17, -3
  %19 = load ptr, ptr %11, align 4
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.imx_gpt_data, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %19, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %18) #6, !srcloc !11
  %24 = load ptr, ptr %3, align 4
  %25 = getelementptr inbounds %struct.imx_gpt_data, ptr %24, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  tail call void %26(ptr noundef %2) #6
  br label %27

27:                                               ; preds = %10, %1
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr inbounds %struct.imx_gpt_data, ptr %28, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  tail call void %30(ptr noundef %2) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxc_timer_interrupt(i32 noundef %0, ptr noundef %1) #4 {
  %3 = getelementptr i8, ptr %1, i32 -64
  %4 = getelementptr i8, ptr %1, i32 -60
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %1, i32 -44
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !12
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.imx_gpt_data, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %3) #6
  %14 = load ptr, ptr %1, align 64
  tail call void %14(ptr noundef %1) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @mxc_timer_init_dt(ptr noundef %0, i32 noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = load i1, ptr @mxc_timer_init_dt.initialized, align 4
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 256) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #6
  %10 = getelementptr inbounds %struct.imx_timer, ptr %6, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 0) #6
  %14 = getelementptr inbounds %struct.imx_timer, ptr %6, i32 0, i32 2
  store i32 %13, ptr %14, align 8
  %15 = icmp slt i32 %13, 1
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @of_clk_get_by_name(ptr noundef %0, ptr noundef nonnull @.str.2) #6
  %18 = getelementptr inbounds %struct.imx_timer, ptr %6, i32 0, i32 4
  store ptr %17, ptr %18, align 16
  %19 = tail call ptr @of_clk_get_by_name(ptr noundef %0, ptr noundef nonnull @.str.6) #6
  %20 = getelementptr inbounds %struct.imx_timer, ptr %6, i32 0, i32 3
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = tail call ptr @of_clk_get_by_name(ptr noundef %0, ptr noundef nonnull @.str.1) #6
  store ptr %23, ptr %20, align 4
  br label %24

24:                                               ; preds = %22, %16
  store i32 %1, ptr %6, align 64
  %25 = tail call fastcc i32 @_mxc_timer_init(ptr noundef nonnull %6) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i1 true, ptr @mxc_timer_init_dt.initialized, align 4
  br label %28

28:                                               ; preds = %27, %24, %12, %8, %4, %2
  %29 = phi i32 [ 0, %27 ], [ 0, %2 ], [ -12, %4 ], [ -6, %8 ], [ -22, %12 ], [ %25, %24 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind allocsize(2) }
attributes #6 = { nounwind }
attributes #7 = { cold }
attributes #8 = { cold nounwind }

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
!9 = !{i64 2151362703, i64 2151363203, i64 2151362740, i64 2151362796, i64 2151362830, i64 2151362854, i64 2151362895, i64 2151362916, i64 2151362944, i64 2151362978}
!10 = !{i64 2151363786, i64 2151364286, i64 2151363823, i64 2151363879, i64 2151363913, i64 2151363937, i64 2151363978, i64 2151363999, i64 2151364027, i64 2151364061}
!11 = !{i64 3062041}
!12 = !{i64 3062459}
