; ModuleID = '/llk/IR/drivers/tty/serial/earlycon.c_pt.bc'
source_filename = "../drivers/tty/serial/earlycon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }

@early_con = internal global %struct.console { [16 x i8] c"uart\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i16 9, i16 0, i32 0, i32 0, i32 0, ptr null, ptr null }, align 4
@__earlycon_table = external dso_local constant [0 x %struct.earlycon_id], align 4
@__earlycon_table_end = external dso_local constant [0 x %struct.earlycon_id], align 4
@__setup_str_param_setup_earlycon = internal constant [9 x i8] c"earlycon\00", section ".init.rodata", align 1
@__setup_param_setup_earlycon = internal global %struct.obs_kernel_param { ptr @__setup_str_param_setup_earlycon, ptr @param_setup_earlycon, i32 1 }, section ".init.setup", align 4
@early_console_dev = internal global %struct.earlycon_device { ptr @early_con, %struct.uart_port zeroinitializer, [16 x i8] zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [30 x i8] c"\014earlycon: [%s] bad address\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"reg-offset\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"reg-shift\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"big-endian\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"reg-io-width\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"\014earlycon: [%s] unsupported reg-io-width\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"current-speed\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@earlycon_acpi_spcr_enable = dso_local local_unnamed_addr global i8 0, section ".init.data", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"\016earlycon: %s%d at MMIO%s %pa (options '%s')\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"16\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"32be\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"\016earlycon: %s%d at I/O port 0x%lx (options '%s')\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__setup_param_setup_earlycon], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @setup_earlycon(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %35, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %3
  %7 = load i16, ptr getelementptr inbounds (%struct.console, ptr @early_con, i32 0, i32 8), align 4
  %8 = and i16 %7, 4
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %34, %6
  %11 = phi i1 [ false, %34 ], [ true, %6 ]
  br i1 icmp ult (ptr @__earlycon_table, ptr @__earlycon_table_end), label %12, label %34

12:                                               ; preds = %31, %10
  %13 = phi ptr [ %32, %31 ], [ @__earlycon_table, %10 ]
  %14 = tail call i32 @strlen(ptr noundef %13)
  %15 = tail call i32 @strncmp(ptr noundef nonnull %0, ptr noundef %13, i32 noundef %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %12
  br i1 %11, label %18, label %22

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.earlycon_id, ptr %13, i32 0, i32 2
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18, %17
  %23 = getelementptr i8, ptr %0, i32 %14
  %24 = load i8, ptr %23, align 1
  switch i8 %24, label %31 [
    i8 0, label %28
    i8 44, label %25
  ]

25:                                               ; preds = %22
  %26 = add i32 %14, 1
  %27 = getelementptr i8, ptr %0, i32 %26
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi ptr [ %27, %25 ], [ null, %22 ]
  %30 = tail call fastcc i32 @register_earlycon(ptr noundef %29, ptr noundef %13) #7
  br label %35

31:                                               ; preds = %22, %18, %12
  %32 = getelementptr %struct.earlycon_id, ptr %13, i32 1
  %33 = icmp ult ptr %32, @__earlycon_table_end
  br i1 %33, label %12, label %34

34:                                               ; preds = %31, %10
  br i1 %11, label %10, label %35

35:                                               ; preds = %34, %28, %6, %3, %1
  %36 = phi i32 [ %30, %28 ], [ -22, %3 ], [ -22, %1 ], [ -114, %6 ], [ -2, %34 ]
  ret i32 %36
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @register_earlycon(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = tail call fastcc i32 @parse_options(ptr noundef nonnull %0) #7
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, ptr null, ptr %0
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi ptr [ null, %2 ], [ %7, %4 ]
  store i32 0, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1), align 4
  store i32 1843200, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 22), align 4
  %10 = load i32, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 43), align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = and i32 %10, -4096
  tail call void @__set_fixmap(i32 noundef 0, i32 noundef %13, i32 noundef 1619) #8
  %14 = and i32 %10, 4095
  %15 = getelementptr i8, ptr inttoptr (i32 -1052672 to ptr), i32 %14
  store ptr %15, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 2), align 4
  br label %16

16:                                               ; preds = %12, %8
  tail call fastcc void @earlycon_init(ptr noundef %1) #7
  %17 = getelementptr inbounds %struct.earlycon_id, ptr %1, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef nonnull @early_console_dev, ptr noundef %9) #8
  tail call fastcc void @earlycon_print_info() #7
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr @early_console_dev, align 4
  %23 = getelementptr inbounds %struct.console, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void @register_console(ptr noundef %22) #8
  br label %27

27:                                               ; preds = %26, %21, %16
  %28 = phi i32 [ 0, %26 ], [ %19, %16 ], [ -19, %21 ]
  ret i32 %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @param_setup_earlycon(ptr noundef %0) #0 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 @early_init_dt_scan_chosen_stdout() #8
  br label %8

5:                                                ; preds = %1
  %6 = tail call i32 @setup_earlycon(ptr noundef nonnull %0) #7
  switch i32 %6, label %7 [
    i32 -2, label %8
    i32 -114, label %8
  ]

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %7, %5, %5, %3
  %9 = phi i32 [ %6, %7 ], [ %4, %3 ], [ 0, %5 ], [ 0, %5 ]
  ret i32 %9
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @of_setup_earlycon(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 section ".init.text" {
  store i32 0, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1), align 4
  store i8 2, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 26), align 2
  %4 = tail call i64 @of_flat_dt_translate_address(i32 noundef %1) #8
  %5 = icmp eq i64 %4, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0) #9
  br label %73

8:                                                ; preds = %3
  %9 = trunc i64 %4 to i32
  store i32 %9, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 43), align 4
  %10 = tail call ptr @of_get_flat_dt_prop(i32 noundef %1, ptr noundef nonnull @.str.1, ptr noundef null) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 43), align 4
  br label %19

14:                                               ; preds = %8
  %15 = load i32, ptr %10, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = load i32, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 43), align 4
  %18 = add i32 %17, %16
  store i32 %18, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 43), align 4
  br label %19

19:                                               ; preds = %14, %12
  %20 = phi i32 [ %13, %12 ], [ %18, %14 ]
  %21 = and i32 %20, -4096
  tail call void @__set_fixmap(i32 noundef 0, i32 noundef %21, i32 noundef 1619) #8
  %22 = and i32 %20, 4095
  %23 = getelementptr i8, ptr inttoptr (i32 -1052672 to ptr), i32 %22
  store ptr %23, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 2), align 4
  %24 = tail call ptr @of_get_flat_dt_prop(i32 noundef %1, ptr noundef nonnull @.str.2, ptr noundef null) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = load i32, ptr %24, align 4
  %28 = lshr i32 %27, 24
  %29 = trunc i32 %28 to i8
  store i8 %29, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 25), align 1
  br label %30

30:                                               ; preds = %26, %19
  %31 = tail call ptr @of_get_flat_dt_prop(i32 noundef %1, ptr noundef nonnull @.str.3, ptr noundef null) #8
  %32 = icmp eq ptr %31, null
  %33 = tail call ptr @of_get_flat_dt_prop(i32 noundef %1, ptr noundef nonnull @.str.4, ptr noundef null) #8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = load i32, ptr %33, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  switch i32 %37, label %41 [
    i32 1, label %43
    i32 2, label %38
    i32 4, label %39
  ]

38:                                               ; preds = %35
  br label %43

39:                                               ; preds = %35
  %40 = select i1 %32, i8 3, i8 6
  br label %43

41:                                               ; preds = %35
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %0) #9
  br label %73

43:                                               ; preds = %39, %38, %35
  %44 = phi i8 [ 7, %38 ], [ %40, %39 ], [ 2, %35 ]
  store i8 %44, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 26), align 2
  br label %45

45:                                               ; preds = %43, %30
  %46 = tail call ptr @of_get_flat_dt_prop(i32 noundef %1, ptr noundef nonnull @.str.6, ptr noundef null) #8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr %46, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  store i32 %50, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 3), align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = tail call ptr @of_get_flat_dt_prop(i32 noundef %1, ptr noundef nonnull @.str.7, ptr noundef null) #8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, ptr %52, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  store i32 %56, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 22), align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = icmp eq ptr %2, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %57
  %60 = tail call i32 @simple_strtoul(ptr noundef nonnull %2, ptr noundef null, i32 noundef 0) #8
  store i32 %60, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 3), align 4
  %61 = tail call i32 @strlcpy(ptr noundef getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 2), ptr noundef nonnull %2, i32 noundef 16) #8
  br label %62

62:                                               ; preds = %59, %57
  tail call fastcc void @earlycon_init(ptr noundef %0) #7
  %63 = getelementptr inbounds %struct.earlycon_id, ptr %0, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = tail call i32 %64(ptr noundef nonnull @early_console_dev, ptr noundef %2) #8
  tail call fastcc void @earlycon_print_info() #7
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = load ptr, ptr @early_console_dev, align 4
  %69 = getelementptr inbounds %struct.console, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  tail call void @register_console(ptr noundef %68) #8
  br label %73

73:                                               ; preds = %72, %67, %62, %41, %6
  %74 = phi i32 [ -6, %6 ], [ -22, %41 ], [ 0, %72 ], [ %65, %62 ], [ -19, %67 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_flat_dt_translate_address(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_flat_dt_prop(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @earlycon_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = load ptr, ptr @early_console_dev, align 4
  %3 = tail call i32 @strlen(ptr noundef %0)
  %4 = getelementptr i8, ptr %0, i32 %3
  br label %5

5:                                                ; preds = %8, %1
  %6 = phi ptr [ %4, %1 ], [ %9, %8 ]
  %7 = icmp ugt ptr %6, %0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = getelementptr i8, ptr %6, i32 -1
  %10 = load i8, ptr %9, align 1
  %11 = add i8 %10, -48
  %12 = icmp ult i8 %11, 10
  br i1 %12, label %5, label %13

13:                                               ; preds = %8, %5
  %14 = load i8, ptr %6, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @simple_strtoul(ptr noundef %6, ptr noundef null, i32 noundef 10) #8
  %18 = trunc i32 %17 to i16
  %19 = getelementptr inbounds %struct.console, ptr %2, i32 0, i32 9
  store i16 %18, ptr %19, align 2
  br label %20

20:                                               ; preds = %16, %13
  %21 = ptrtoint ptr %6 to i32
  %22 = ptrtoint ptr %0 to i32
  %23 = sub i32 1, %22
  %24 = add i32 %23, %21
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 16)
  %26 = tail call i32 @strlcpy(ptr noundef %2, ptr noundef %0, i32 noundef %25) #8
  %27 = getelementptr inbounds %struct.console, ptr %2, i32 0, i32 13
  store ptr @early_console_dev, ptr %27, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @earlycon_print_info() unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr @early_console_dev, align 4
  %2 = load i8, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 26), align 2
  switch i8 %2, label %14 [
    i8 2, label %3
    i8 7, label %3
    i8 3, label %3
    i8 6, label %3
  ]

3:                                                ; preds = %0, %0, %0, %0
  %4 = getelementptr inbounds %struct.console, ptr %1, i32 0, i32 9
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  switch i8 %2, label %7 [
    i8 2, label %11
    i8 7, label %10
  ]

7:                                                ; preds = %3
  %8 = icmp eq i8 %2, 3
  %9 = select i1 %8, ptr @.str.13, ptr @.str.14
  br label %11

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %10, %7, %3
  %12 = phi ptr [ @.str.11, %3 ], [ %9, %7 ], [ @.str.12, %10 ]
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %1, i32 noundef %6, ptr noundef nonnull %12, ptr noundef getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 43), ptr noundef getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 2)) #9
  br label %20

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct.console, ptr %1, i32 0, i32 9
  %16 = load i16, ptr %15, align 2
  %17 = sext i16 %16 to i32
  %18 = load i32, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 1), align 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %1, i32 noundef %17, i32 noundef %18, ptr noundef getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 2)) #9
  br label %20

20:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @parse_options(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call i32 @uart_parse_earlycon(ptr noundef %0, ptr noundef getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 26), ptr noundef nonnull %3, ptr noundef nonnull %2) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = load i8, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 26), align 2
  switch i8 %7, label %26 [
    i8 2, label %8
    i8 7, label %10
    i8 3, label %12
    i8 6, label %12
    i8 0, label %14
  ]

8:                                                ; preds = %6
  %9 = load i32, ptr %3, align 4
  store i32 %9, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 43), align 4
  br label %16

10:                                               ; preds = %6
  store i8 1, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 25), align 1
  %11 = load i32, ptr %3, align 4
  store i32 %11, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 43), align 4
  br label %16

12:                                               ; preds = %6, %6
  store i8 2, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 25), align 1
  %13 = load i32, ptr %3, align 4
  store i32 %13, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 43), align 4
  br label %16

14:                                               ; preds = %6
  %15 = load i32, ptr %3, align 4
  store i32 %15, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 1), align 4
  br label %16

16:                                               ; preds = %14, %12, %10, %8
  %17 = load ptr, ptr %2, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = call i32 @simple_strtoul(ptr noundef nonnull %17, ptr noundef null, i32 noundef 0) #8
  store i32 %20, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 3), align 4
  %21 = load ptr, ptr %2, align 4
  %22 = call i32 @strcspn(ptr noundef %21, ptr noundef nonnull @.str.8)
  %23 = add i32 %22, 1
  %24 = call i32 @llvm.umin.i32(i32 %23, i32 16)
  %25 = call i32 @strlcpy(ptr noundef getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 2), ptr noundef %21, i32 noundef %24) #8
  br label %26

26:                                               ; preds = %19, %16, %6, %1
  %27 = phi i32 [ -22, %1 ], [ -22, %6 ], [ 0, %19 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_parse_earlycon(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @early_init_dt_scan_chosen_stdout() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_fixmap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
