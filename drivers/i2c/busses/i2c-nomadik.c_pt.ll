; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-nomadik.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-nomadik.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.i2c_vendor_data = type { i8, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.nmk_i2c_dev = type { ptr, ptr, %struct.i2c_adapter, i32, ptr, ptr, %struct.i2c_nmk_client, i32, i8, i8, i32, i32, i32, %struct.completion, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_nmk_client = type { i16, i32, ptr, i32, i32 }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@nmk_i2c_driver = internal global %struct.amba_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nmk_i2c_pm, ptr null, ptr null }, ptr @nmk_i2c_probe, ptr @nmk_i2c_remove, ptr null, ptr @nmk_i2c_ids }, align 4
@__initcall__kmod_i2c_nomadik__248_1120_nmk_i2c_init4 = internal global ptr @nmk_i2c_init, section ".initcall4.init", align 4
@__exitcall_nmk_i2c_exit = internal global ptr @nmk_i2c_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author249 = internal constant [32 x i8] c"i2c_nomadik.author=Sachin Verma\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [36 x i8] c"i2c_nomadik.author=Srinidhi KASAGAR\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [49 x i8] c"i2c_nomadik.description=Nomadik/Ux500 I2C driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [48 x i8] c"i2c_nomadik.file=drivers/i2c/busses/i2c-nomadik\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [24 x i8] c"i2c_nomadik.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"nmk-i2c\00", align 1
@nmk_i2c_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nmk_i2c_suspend_late, ptr @nmk_i2c_resume_early, ptr @nmk_i2c_suspend_late, ptr @nmk_i2c_resume_early, ptr @nmk_i2c_suspend_late, ptr @nmk_i2c_resume_early, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nmk_i2c_runtime_suspend, ptr @nmk_i2c_runtime_resume, ptr null }, align 4
@nmk_i2c_ids = internal constant [3 x %struct.amba_id] [%struct.amba_id { i32 1572900, i32 16777215, ptr @vendor_stn8815 }, %struct.amba_id { i32 3670052, i32 16777215, ptr @vendor_db8500 }, %struct.amba_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"can't prepare_enable clock\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.2 = private unnamed_addr constant [57 x i8] c"flushing operation timed out giving up after %d attempts\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"cannot allocate memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"requested TX FIFO threshold %u, adjusted down to %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"requested RX FIFO threshold %u, adjusted down to %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"cannot claim the irq %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"could not get i2c clock\0A\00", align 1
@nmk_i2c_algo = internal constant %struct.i2c_algorithm { ptr @nmk_i2c_xfer, ptr null, ptr null, ptr null, ptr @nmk_i2c_functionality, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"Nomadik I2C at %pR\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"initialize %s on virtual base %p\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"%lu bytes still remain to be xfered\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Tx Fifo Over run\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"unhandled Interrupt\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"spurious Interrupt..\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"do not support this mode defaulting to std. mode\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"unknown reason\00", align 1
@abort_causes = internal unnamed_addr constant [7 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], align 4
@.str.18 = private unnamed_addr constant [32 x i8] c"read from slave 0x%x timed out\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"write to slave 0x%x timed out\0A\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"no ack received after address transmission\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"no ack received during data phase\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"ack received after xmission of master code\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"master lost arbitration\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"slave restarts\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"slave reset\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"overflow, maxsize is 2047 bytes\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@vendor_stn8815 = internal global %struct.i2c_vendor_data { i8 0, i32 16 }, align 4
@vendor_db8500 = internal global %struct.i2c_vendor_data { i8 1, i32 32 }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_nmk_i2c_exit, ptr @__initcall__kmod_i2c_nomadik__248_1120_nmk_i2c_init4, ptr @nmk_i2c_exit], section "llvm.metadata"
@switch.table.nmk_i2c_xfer = private unnamed_addr constant [3 x i32] [i32 99, i32 9, i32 99], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @nmk_i2c_exit() #0 section ".exit.text" {
  tail call void @amba_driver_unregister(ptr noundef nonnull @nmk_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @nmk_i2c_init() #0 section ".init.text" {
  %1 = tail call i32 @amba_driver_register(ptr noundef nonnull @nmk_i2c_driver) #8
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmk_i2c_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.amba_id, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.i2c_vendor_data, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %8, 1
  %10 = add nsw i32 %9, -1
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 736, i32 noundef 3520) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3) #9
  br label %89

14:                                               ; preds = %2
  store ptr %6, ptr %11, align 8
  %15 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %11, i32 0, i32 1
  store ptr %0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %11, i32 0, i32 7
  %17 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.10, ptr noundef %16, i32 noundef 1, i32 noundef 0) #8
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 100000, ptr %16, align 8
  br label %24

20:                                               ; preds = %14
  %21 = load i32, ptr %16, align 8
  %22 = icmp ugt i32 %21, 100000
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %20, %19
  %25 = phi i32 [ 0, %19 ], [ %23, %20 ]
  %26 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %11, i32 0, i32 11
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %11, i32 0, i32 8
  store i8 1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %11, i32 0, i32 9
  store i8 8, ptr %28, align 1
  %29 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %11, i32 0, i32 10
  store i32 200, ptr %29, align 8
  %30 = icmp eq i32 %10, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef 1, i32 noundef 0) #9
  store i8 0, ptr %27, align 4
  %32 = load i8, ptr %28, align 1
  %33 = zext i8 %32 to i32
  br label %34

34:                                               ; preds = %31, %24
  %35 = phi i32 [ %33, %31 ], [ 8, %24 ]
  %36 = icmp ult i32 %10, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %35, i32 noundef %10) #9
  %38 = trunc i32 %10 to i8
  store i8 %38, ptr %28, align 1
  br label %39

39:                                               ; preds = %37, %34
  %40 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %11, ptr %40, align 8
  %41 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = sub i32 1, %42
  %46 = add i32 %45, %44
  %47 = tail call ptr @devm_ioremap(ptr noundef %0, i32 noundef %42, i32 noundef %46) #8
  %48 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %11, i32 0, i32 4
  store ptr %47, ptr %48, align 4
  %49 = icmp eq ptr %47, null
  br i1 %49, label %89, label %50

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 7
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %11, i32 0, i32 3
  store i32 %52, ptr %53, align 8
  %54 = tail call i32 @devm_request_threaded_irq(ptr noundef %0, i32 noundef %52, ptr noundef nonnull @i2c_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %11) #8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %50
  %57 = load i32, ptr %53, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %57) #9
  br label %89

58:                                               ; preds = %50
  %59 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef null) #8
  %60 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %11, i32 0, i32 5
  store ptr %59, ptr %60, align 8
  %61 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7) #9
  %63 = load ptr, ptr %60, align 8
  %64 = ptrtoint ptr %63 to i32
  br label %89

65:                                               ; preds = %58
  %66 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %59)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1) #9
  br label %89

69:                                               ; preds = %65
  %70 = tail call fastcc i32 @init_hw(ptr noundef nonnull %11)
  %71 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %11, i32 0, i32 2
  %72 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %11, i32 0, i32 2, i32 9, i32 25
  store ptr %4, ptr %72, align 8
  %73 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %11, i32 0, i32 2, i32 9, i32 1
  store ptr %0, ptr %73, align 4
  store ptr null, ptr %71, align 8
  %74 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %11, i32 0, i32 2, i32 1
  store i32 256, ptr %74, align 4
  %75 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %11, i32 0, i32 2, i32 2
  store ptr @nmk_i2c_algo, ptr %75, align 8
  %76 = load i32, ptr %29, align 8
  %77 = tail call i32 @__msecs_to_jiffies(i32 noundef %76) #8
  %78 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %11, i32 0, i32 2, i32 7
  store i32 %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %11, i32 0, i32 2, i32 12
  %80 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %79, i32 noundef 48, ptr noundef nonnull @.str.8, ptr noundef %41)
  %81 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %11, i32 0, i32 2, i32 9, i32 8
  store ptr %11, ptr %81, align 8
  %82 = load ptr, ptr %48, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %79, ptr noundef %82) #9
  %83 = tail call i32 @i2c_add_adapter(ptr noundef %71) #8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %69
  %86 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 5) #8
  br label %89

87:                                               ; preds = %69
  %88 = load ptr, ptr %60, align 8
  tail call void @clk_disable(ptr noundef %88) #8
  tail call void @clk_unprepare(ptr noundef %88) #8
  br label %89

89:                                               ; preds = %87, %85, %68, %62, %56, %39, %13
  %90 = phi i32 [ 0, %85 ], [ %54, %56 ], [ %64, %62 ], [ %66, %68 ], [ %83, %87 ], [ -12, %13 ], [ -12, %39 ]
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nmk_i2c_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %3, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %4) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %5 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %3, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 384) #8, !srcloc !9
  %7 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %3, i32 0, i32 2, i32 7
  br label %8

8:                                                ; preds = %22, %1
  %9 = phi i32 [ 0, %1 ], [ %23, %22 ]
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, %10
  br label %13

13:                                               ; preds = %17, %8
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = sub i32 %12, %14
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load ptr, ptr %5, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %20 = and i32 %19, 384
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %13

22:                                               ; preds = %13
  %23 = add nuw nsw i32 %9, 1
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %25, label %8

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %3, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.2, i32 noundef 10) #9
  br label %28

28:                                               ; preds = %25, %17
  %29 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr i8, ptr %30, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr i8, ptr %32, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 320798847) #8, !srcloc !9
  %34 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %36 = and i32 %35, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %36) #8, !srcloc !9
  %37 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %3, i32 0, i32 5
  %38 = load ptr, ptr %37, align 8
  tail call void @clk_disable(ptr noundef %38) #8
  tail call void @clk_unprepare(ptr noundef %38) #8
  %39 = load i32, ptr %29, align 4
  %40 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = sub i32 1, %39
  %43 = add i32 %42, %41
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %39, i32 noundef %43) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmk_i2c_suspend_late(ptr noundef %0) #2 {
  %2 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #8
  br label %6

6:                                                ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmk_i2c_resume_early(ptr noundef %0) #2 {
  %2 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #8
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmk_i2c_runtime_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %6 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmk_i2c_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %9, %11 ], [ %6, %1 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1) #9
  br label %21

14:                                               ; preds = %8
  %15 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #8
  %16 = tail call fastcc i32 @init_hw(ptr noundef %3)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %4, align 8
  tail call void @clk_disable(ptr noundef %19) #8
  tail call void @clk_unprepare(ptr noundef %19) #8
  %20 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %0) #8
  br label %21

21:                                               ; preds = %18, %14, %12
  %22 = phi i32 [ %13, %12 ], [ %16, %18 ], [ 0, %14 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_idle_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #3 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #8
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @init_hw(ptr nocapture noundef %0) unnamed_addr #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %2 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 384) #8, !srcloc !9
  %4 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %0, i32 0, i32 2, i32 7
  br label %5

5:                                                ; preds = %19, %1
  %6 = phi i32 [ 0, %1 ], [ %20, %19 ]
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = load i32, ptr %4, align 4
  %9 = add i32 %8, %7
  br label %10

10:                                               ; preds = %14, %5
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = sub i32 %9, %11
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %17 = and i32 %16, 384
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %10

19:                                               ; preds = %10
  %20 = add nuw nsw i32 %6, 1
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %22, label %5

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.2, i32 noundef 10) #9
  br label %34

25:                                               ; preds = %14
  %26 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %28 = and i32 %27, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %28) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr i8, ptr %29, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr i8, ptr %31, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 320798847) #8, !srcloc !9
  %33 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %0, i32 0, i32 6, i32 4
  store i32 255, ptr %33, align 4
  br label %34

34:                                               ; preds = %25, %22
  %35 = phi i32 [ -110, %22 ], [ 0, %25 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 28
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 32
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 52
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  %13 = tail call i32 @llvm.cttz.i32(i32 %12, i1 false) #8, !range !19
  %14 = shl nuw i32 1, %13
  switch i32 %14, label %262 [
    i32 2, label %117
    i32 32, label %113
    i32 64, label %15
    i32 524288, label %182
    i32 268435456, label %182
    i32 16777216, label %230
    i32 33554432, label %238
    i32 8, label %253
    i32 1, label %259
    i32 4, label %259
    i32 16, label %259
    i32 65536, label %259
    i32 131072, label %259
    i32 262144, label %259
    i32 1048576, label %259
  ]

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 6, i32 2
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr i8, ptr %17, i32 24
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %18) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %20 = load ptr, ptr %16, align 4
  store i8 %19, ptr %20, align 1
  %21 = load ptr, ptr %16, align 4
  %22 = getelementptr i8, ptr %21, i32 1
  store ptr %22, ptr %16, align 4
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr i8, ptr %23, i32 24
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %24) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %26 = load ptr, ptr %16, align 4
  store i8 %25, ptr %26, align 1
  %27 = load ptr, ptr %16, align 4
  %28 = getelementptr i8, ptr %27, i32 1
  store ptr %28, ptr %16, align 4
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr i8, ptr %29, i32 24
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %30) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %32 = load ptr, ptr %16, align 4
  store i8 %31, ptr %32, align 1
  %33 = load ptr, ptr %16, align 4
  %34 = getelementptr i8, ptr %33, i32 1
  store ptr %34, ptr %16, align 4
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr i8, ptr %35, i32 24
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %36) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %38 = load ptr, ptr %16, align 4
  store i8 %37, ptr %38, align 1
  %39 = load ptr, ptr %16, align 4
  %40 = getelementptr i8, ptr %39, i32 1
  store ptr %40, ptr %16, align 4
  %41 = load ptr, ptr %3, align 4
  %42 = getelementptr i8, ptr %41, i32 24
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %42) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %44 = load ptr, ptr %16, align 4
  store i8 %43, ptr %44, align 1
  %45 = load ptr, ptr %16, align 4
  %46 = getelementptr i8, ptr %45, i32 1
  store ptr %46, ptr %16, align 4
  %47 = load ptr, ptr %3, align 4
  %48 = getelementptr i8, ptr %47, i32 24
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %48) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %50 = load ptr, ptr %16, align 4
  store i8 %49, ptr %50, align 1
  %51 = load ptr, ptr %16, align 4
  %52 = getelementptr i8, ptr %51, i32 1
  store ptr %52, ptr %16, align 4
  %53 = load ptr, ptr %3, align 4
  %54 = getelementptr i8, ptr %53, i32 24
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %54) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %56 = load ptr, ptr %16, align 4
  store i8 %55, ptr %56, align 1
  %57 = load ptr, ptr %16, align 4
  %58 = getelementptr i8, ptr %57, i32 1
  store ptr %58, ptr %16, align 4
  %59 = load ptr, ptr %3, align 4
  %60 = getelementptr i8, ptr %59, i32 24
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %60) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %62 = load ptr, ptr %16, align 4
  store i8 %61, ptr %62, align 1
  %63 = load ptr, ptr %16, align 4
  %64 = getelementptr i8, ptr %63, i32 1
  store ptr %64, ptr %16, align 4
  %65 = load ptr, ptr %3, align 4
  %66 = getelementptr i8, ptr %65, i32 24
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %66) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %68 = load ptr, ptr %16, align 4
  store i8 %67, ptr %68, align 1
  %69 = load ptr, ptr %16, align 4
  %70 = getelementptr i8, ptr %69, i32 1
  store ptr %70, ptr %16, align 4
  %71 = load ptr, ptr %3, align 4
  %72 = getelementptr i8, ptr %71, i32 24
  %73 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %72) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %74 = load ptr, ptr %16, align 4
  store i8 %73, ptr %74, align 1
  %75 = load ptr, ptr %16, align 4
  %76 = getelementptr i8, ptr %75, i32 1
  store ptr %76, ptr %16, align 4
  %77 = load ptr, ptr %3, align 4
  %78 = getelementptr i8, ptr %77, i32 24
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %78) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %80 = load ptr, ptr %16, align 4
  store i8 %79, ptr %80, align 1
  %81 = load ptr, ptr %16, align 4
  %82 = getelementptr i8, ptr %81, i32 1
  store ptr %82, ptr %16, align 4
  %83 = load ptr, ptr %3, align 4
  %84 = getelementptr i8, ptr %83, i32 24
  %85 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %84) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %86 = load ptr, ptr %16, align 4
  store i8 %85, ptr %86, align 1
  %87 = load ptr, ptr %16, align 4
  %88 = getelementptr i8, ptr %87, i32 1
  store ptr %88, ptr %16, align 4
  %89 = load ptr, ptr %3, align 4
  %90 = getelementptr i8, ptr %89, i32 24
  %91 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %90) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %92 = load ptr, ptr %16, align 4
  store i8 %91, ptr %92, align 1
  %93 = load ptr, ptr %16, align 4
  %94 = getelementptr i8, ptr %93, i32 1
  store ptr %94, ptr %16, align 4
  %95 = load ptr, ptr %3, align 4
  %96 = getelementptr i8, ptr %95, i32 24
  %97 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %96) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %98 = load ptr, ptr %16, align 4
  store i8 %97, ptr %98, align 1
  %99 = load ptr, ptr %16, align 4
  %100 = getelementptr i8, ptr %99, i32 1
  store ptr %100, ptr %16, align 4
  %101 = load ptr, ptr %3, align 4
  %102 = getelementptr i8, ptr %101, i32 24
  %103 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %102) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %104 = load ptr, ptr %16, align 4
  store i8 %103, ptr %104, align 1
  %105 = load ptr, ptr %16, align 4
  %106 = getelementptr i8, ptr %105, i32 1
  store ptr %106, ptr %16, align 4
  %107 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 6, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %108, -15
  store i32 %109, ptr %107, align 4
  %110 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 6, i32 3
  %111 = load i32, ptr %110, align 4
  %112 = add i32 %111, 15
  store i32 %112, ptr %110, align 4
  br label %265

113:                                              ; preds = %2
  %114 = icmp eq i32 %9, 0
  br i1 %114, label %175, label %115

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 6, i32 2
  br label %165

117:                                              ; preds = %2
  %118 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 6, i32 4
  %119 = load i32, ptr %118, align 4
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %128

121:                                              ; preds = %117
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %122 = load ptr, ptr %3, align 4
  %123 = getelementptr i8, ptr %122, i32 44
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  %125 = and i32 %124, -3
  %126 = load ptr, ptr %3, align 4
  %127 = getelementptr i8, ptr %126, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %125) #8, !srcloc !9
  br label %265

128:                                              ; preds = %117
  %129 = sub i32 13, %6
  %130 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 6, i32 1
  %131 = icmp sgt i32 %129, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = load i32, ptr %130, align 4
  br label %155

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 6, i32 2
  %136 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 6, i32 3
  %137 = load i32, ptr %130, align 4
  br label %138

138:                                              ; preds = %142, %134
  %139 = phi i32 [ %137, %134 ], [ %150, %142 ]
  %140 = phi i32 [ %129, %134 ], [ %153, %142 ]
  %141 = icmp eq i32 %139, 0
  br i1 %141, label %158, label %142

142:                                              ; preds = %138
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  %143 = load ptr, ptr %135, align 4
  %144 = load i8, ptr %143, align 1
  %145 = load ptr, ptr %3, align 4
  %146 = getelementptr i8, ptr %145, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %146, i8 %144) #8, !srcloc !25
  %147 = load ptr, ptr %135, align 4
  %148 = getelementptr i8, ptr %147, i32 1
  store ptr %148, ptr %135, align 4
  %149 = load i32, ptr %130, align 4
  %150 = add i32 %149, -1
  store i32 %150, ptr %130, align 4
  %151 = load i32, ptr %136, align 4
  %152 = add i32 %151, 1
  store i32 %152, ptr %136, align 4
  %153 = add nsw i32 %140, -1
  %154 = icmp sgt i32 %140, 1
  br i1 %154, label %138, label %155

155:                                              ; preds = %142, %132
  %156 = phi i32 [ %133, %132 ], [ %150, %142 ]
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %265

158:                                              ; preds = %155, %138
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %159 = load ptr, ptr %3, align 4
  %160 = getelementptr i8, ptr %159, i32 44
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  %162 = and i32 %161, -3
  %163 = load ptr, ptr %3, align 4
  %164 = getelementptr i8, ptr %163, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 %162) #8, !srcloc !9
  br label %265

165:                                              ; preds = %165, %115
  %166 = phi i32 [ %9, %115 ], [ %173, %165 ]
  %167 = load ptr, ptr %3, align 4
  %168 = getelementptr i8, ptr %167, i32 24
  %169 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %168) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !26
  %170 = load ptr, ptr %116, align 4
  store i8 %169, ptr %170, align 1
  %171 = load ptr, ptr %116, align 4
  %172 = getelementptr i8, ptr %171, i32 1
  store ptr %172, ptr %116, align 4
  %173 = add i32 %166, -1
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %165

175:                                              ; preds = %165, %113
  %176 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 6, i32 1
  %177 = load i32, ptr %176, align 4
  %178 = sub i32 %177, %9
  store i32 %178, ptr %176, align 4
  %179 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 6, i32 3
  %180 = load i32, ptr %179, align 4
  %181 = add i32 %180, %9
  store i32 %181, ptr %179, align 4
  br label %265

182:                                              ; preds = %2, %2
  %183 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 6, i32 4
  %184 = load i32, ptr %183, align 4
  %185 = icmp eq i32 %184, 1
  br i1 %185, label %186, label %215

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 6, i32 1
  %188 = load ptr, ptr %3, align 4
  %189 = getelementptr i8, ptr %188, i32 48
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !27
  %191 = and i32 %190, 16
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %215

193:                                              ; preds = %186
  %194 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 6, i32 2
  %195 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 6, i32 3
  br label %196

196:                                              ; preds = %199, %193
  %197 = load i32, ptr %187, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %215, label %199

199:                                              ; preds = %196
  %200 = load ptr, ptr %3, align 4
  %201 = getelementptr i8, ptr %200, i32 24
  %202 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %201) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !28
  %203 = load ptr, ptr %194, align 4
  store i8 %202, ptr %203, align 1
  %204 = load ptr, ptr %194, align 4
  %205 = getelementptr i8, ptr %204, i32 1
  store ptr %205, ptr %194, align 4
  %206 = load i32, ptr %187, align 4
  %207 = add i32 %206, -1
  store i32 %207, ptr %187, align 4
  %208 = load i32, ptr %195, align 4
  %209 = add i32 %208, 1
  store i32 %209, ptr %195, align 4
  %210 = load ptr, ptr %3, align 4
  %211 = getelementptr i8, ptr %210, i32 48
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %211) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !27
  %213 = and i32 %212, 16
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %196, label %215

215:                                              ; preds = %199, %196, %186, %182
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %216 = load ptr, ptr %3, align 4
  %217 = getelementptr i8, ptr %216, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %217, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %218 = load ptr, ptr %3, align 4
  %219 = getelementptr i8, ptr %218, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %219, i32 320798847) #8, !srcloc !9
  %220 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 6, i32 1
  %221 = load i32, ptr %220, align 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %228, label %223

223:                                              ; preds = %215
  %224 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 14
  store i32 -5, ptr %224, align 4
  %225 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 1
  %226 = load ptr, ptr %225, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %226, ptr noundef nonnull @.str.11, i32 noundef %221) #9
  %227 = tail call fastcc i32 @init_hw(ptr noundef %1)
  br label %228

228:                                              ; preds = %223, %215
  %229 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 13
  tail call void @complete(ptr noundef %229) #8
  br label %265

230:                                              ; preds = %2
  %231 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 14
  store i32 -5, ptr %231, align 4
  %232 = tail call fastcc i32 @init_hw(ptr noundef %1)
  %233 = load ptr, ptr %3, align 4
  %234 = getelementptr i8, ptr %233, i32 56
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !29
  tail call void @arm_heavy_mb() #8
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %234) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !30
  %236 = or i32 %235, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %234, i32 %236) #8, !srcloc !9
  %237 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 13
  tail call void @complete(ptr noundef %237) #8
  br label %265

238:                                              ; preds = %2
  %239 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 14
  store i32 -5, ptr %239, align 4
  %240 = load ptr, ptr %3, align 4
  %241 = getelementptr i8, ptr %240, i32 20
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %241) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !31
  %243 = and i32 %242, 12
  %244 = icmp eq i32 %243, 12
  br i1 %244, label %245, label %247

245:                                              ; preds = %238
  %246 = tail call fastcc i32 @init_hw(ptr noundef %1)
  br label %247

247:                                              ; preds = %245, %238
  %248 = load ptr, ptr %3, align 4
  %249 = getelementptr i8, ptr %248, i32 56
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !29
  tail call void @arm_heavy_mb() #8
  %250 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %249) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !30
  %251 = or i32 %250, 33554432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %249, i32 %251) #8, !srcloc !9
  %252 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 13
  tail call void @complete(ptr noundef %252) #8
  br label %265

253:                                              ; preds = %2
  %254 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 14
  store i32 -5, ptr %254, align 4
  %255 = tail call fastcc i32 @init_hw(ptr noundef %1)
  %256 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 1
  %257 = load ptr, ptr %256, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %257, ptr noundef nonnull @.str.12) #9
  %258 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 13
  tail call void @complete(ptr noundef %258) #8
  br label %265

259:                                              ; preds = %2, %2, %2, %2, %2, %2, %2
  %260 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 1
  %261 = load ptr, ptr %260, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %261, ptr noundef nonnull @.str.13) #9
  br label %265

262:                                              ; preds = %2
  %263 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 1
  %264 = load ptr, ptr %263, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %264, ptr noundef nonnull @.str.14) #9
  br label %265

265:                                              ; preds = %262, %259, %253, %247, %230, %228, %175, %158, %155, %121, %15
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmk_i2c_xfer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #8
  %9 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %5, i32 0, i32 4
  %10 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %5, i32 0, i32 5
  %11 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %5, i32 0, i32 11
  %12 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %5, i32 0, i32 7
  %13 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %5, i32 0, i32 8
  %14 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %5, i32 0, i32 9
  %15 = icmp sgt i32 %2, 0
  %16 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %5, i32 0, i32 6
  %17 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %5, i32 0, i32 6, i32 2
  %18 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %5, i32 0, i32 6, i32 1
  %19 = add nsw i32 %2, -1
  %20 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %5, i32 0, i32 12
  %21 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %5, i32 0, i32 14
  %22 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %5, i32 0, i32 6, i32 4
  %23 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %5, i32 0, i32 13
  %24 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %5, i32 0, i32 13, i32 1
  %25 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %5, i32 0, i32 2, i32 7
  %26 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %5, i32 0, i32 6, i32 3
  br label %27

27:                                               ; preds = %264, %3
  %28 = phi i32 [ 0, %3 ], [ %266, %264 ]
  %29 = phi i32 [ 0, %3 ], [ %265, %264 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !32
  tail call void @arm_heavy_mb() #8
  %30 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !33
  tail call void @arm_heavy_mb() #8
  %31 = load ptr, ptr %9, align 4
  %32 = getelementptr i8, ptr %31, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !34
  tail call void @arm_heavy_mb() #8
  %33 = load ptr, ptr %9, align 4
  %34 = getelementptr i8, ptr %33, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !35
  tail call void @arm_heavy_mb() #8
  %35 = load ptr, ptr %9, align 4
  %36 = getelementptr i8, ptr %35, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !36
  tail call void @arm_heavy_mb() #8
  %37 = load ptr, ptr %9, align 4
  %38 = getelementptr i8, ptr %37, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #8, !srcloc !9
  %39 = load ptr, ptr %10, align 8
  %40 = tail call i32 @clk_get_rate(ptr noundef %39) #8
  %41 = zext i32 %40 to i64
  %42 = add nuw nsw i64 %41, 999999999
  %43 = icmp ult i32 %40, -999999999
  br i1 %43, label %44, label %47, !prof !37

44:                                               ; preds = %27
  %45 = trunc i64 %42 to i32
  %46 = udiv i32 %45, %40
  br label %51

47:                                               ; preds = %27
  %48 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %40, i64 %42) #10, !srcloc !38
  %49 = extractvalue { i64, i64 } %48, 1
  %50 = trunc i64 %49 to i32
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi i32 [ %46, %44 ], [ %50, %47 ]
  %53 = load i32, ptr %11, align 4
  %54 = add i32 %53, -1
  %55 = icmp ult i32 %54, 3
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = getelementptr inbounds [3 x i32], ptr @switch.table.nmk_i2c_xfer, i32 0, i32 %54
  %58 = load i32, ptr %57, align 4
  br label %59

59:                                               ; preds = %56, %51
  %60 = phi i32 [ %58, %56 ], [ 249, %51 ]
  %61 = add i32 %60, %52
  %62 = udiv i32 %61, %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !39
  tail call void @arm_heavy_mb() #8
  %63 = shl i32 %62, 16
  %64 = add i32 %63, 65536
  %65 = load ptr, ptr %9, align 4
  %66 = getelementptr i8, ptr %65, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #8, !srcloc !9
  %67 = load i32, ptr %12, align 8
  %68 = icmp ugt i32 %67, 100000
  %69 = select i1 %68, i32 3, i32 2
  %70 = mul i32 %69, %67
  %71 = udiv i32 %40, %70
  %72 = and i32 %71, 65535
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !40
  tail call void @arm_heavy_mb() #8
  %73 = load ptr, ptr %9, align 4
  %74 = getelementptr i8, ptr %73, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #8, !srcloc !9
  %75 = load i32, ptr %11, align 4
  %76 = icmp ugt i32 %75, 1
  br i1 %76, label %77, label %83

77:                                               ; preds = %59
  %78 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.15) #9
  %79 = udiv i32 %40, 200000
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %80 = load ptr, ptr %9, align 4
  %81 = getelementptr i8, ptr %80, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %82 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 0) #8, !srcloc !9
  br label %83

83:                                               ; preds = %77, %59
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !43
  tail call void @arm_heavy_mb() #8
  %84 = load i32, ptr %11, align 4
  %85 = shl i32 %84, 4
  %86 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %85) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !44
  tail call void @arm_heavy_mb() #8
  %87 = load i8, ptr %13, align 4
  %88 = zext i8 %87 to i32
  %89 = load ptr, ptr %9, align 4
  %90 = getelementptr i8, ptr %89, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !45
  tail call void @arm_heavy_mb() #8
  %91 = load i8, ptr %14, align 1
  %92 = zext i8 %91 to i32
  %93 = load ptr, ptr %9, align 4
  %94 = getelementptr i8, ptr %93, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %92) #8, !srcloc !9
  br i1 %15, label %95, label %262

95:                                               ; preds = %259, %83
  %96 = phi i32 [ %260, %259 ], [ 0, %83 ]
  %97 = getelementptr %struct.i2c_msg, ptr %1, i32 %96
  %98 = load i16, ptr %97, align 4
  store i16 %98, ptr %16, align 4
  %99 = getelementptr %struct.i2c_msg, ptr %1, i32 %96, i32 3
  %100 = load ptr, ptr %99, align 4
  store ptr %100, ptr %17, align 4
  %101 = getelementptr %struct.i2c_msg, ptr %1, i32 %96, i32 2
  %102 = load i16, ptr %101, align 4
  %103 = zext i16 %102 to i32
  store i32 %103, ptr %18, align 4
  %104 = icmp sge i32 %96, %19
  %105 = zext i1 %104 to i32
  store i32 %105, ptr %20, align 8
  store i32 0, ptr %21, align 4
  %106 = getelementptr %struct.i2c_msg, ptr %1, i32 %96, i32 1
  %107 = load i16, ptr %106, align 2
  %108 = and i16 %107, 1
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %156, label %110

110:                                              ; preds = %95
  store i32 1, ptr %22, align 4
  %111 = and i16 %107, 16
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %118, label %113, !prof !37

113:                                              ; preds = %110
  %114 = shl i16 %98, 1
  %115 = and i16 %114, 1792
  %116 = or i16 %115, 8192
  %117 = zext i16 %116 to i32
  br label %118

118:                                              ; preds = %113, %110
  %119 = phi i32 [ %117, %113 ], [ 4096, %110 ]
  %120 = zext i16 %98 to i32
  %121 = shl nuw nsw i32 %120, 1
  %122 = and i32 %121, 254
  %123 = shl nuw nsw i32 %103, 15
  %124 = and i32 %123, 67076096
  %125 = select i1 %104, i32 16385, i32 1
  %126 = or i32 %125, %122
  %127 = or i32 %126, %124
  %128 = or i32 %127, %119
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !46
  tail call void @arm_heavy_mb() #8
  %129 = load ptr, ptr %9, align 4
  %130 = getelementptr i8, ptr %129, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  %131 = load ptr, ptr %9, align 4
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !48
  %133 = or i32 %132, 3
  %134 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %133) #8, !srcloc !9
  %135 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !29
  tail call void @arm_heavy_mb() #8
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !30
  %137 = or i32 %136, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %137) #8, !srcloc !9
  store i32 0, ptr %23, align 4
  tail call void @__init_swait_queue_head(ptr noundef %24, ptr noundef nonnull @.str.19, ptr noundef nonnull @init_completion.__key) #8
  %138 = load i32, ptr %20, align 8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %118
  %141 = load ptr, ptr %5, align 8
  %142 = load i8, ptr %141, align 4, !range !49
  %143 = icmp eq i8 %142, 0
  %144 = select i1 %143, i32 50856032, i32 318767200
  br label %145

145:                                              ; preds = %140, %118
  %146 = phi i32 [ 50856032, %118 ], [ %144, %140 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !50
  tail call void @arm_heavy_mb() #8
  %147 = load ptr, ptr %9, align 4
  %148 = getelementptr i8, ptr %147, i32 44
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !51
  %150 = or i32 %149, %146
  %151 = load ptr, ptr %9, align 4
  %152 = getelementptr i8, ptr %151, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %150) #8, !srcloc !9
  %153 = load i32, ptr %25, align 4
  %154 = tail call i32 @wait_for_completion_timeout(ptr noundef %23, i32 noundef %153) #8
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %229, label %226

156:                                              ; preds = %95
  store i32 0, ptr %22, align 4
  %157 = and i16 %107, 16
  %158 = icmp eq i16 %157, 0
  br i1 %158, label %164, label %159, !prof !37

159:                                              ; preds = %156
  %160 = shl i16 %98, 1
  %161 = and i16 %160, 1792
  %162 = or i16 %161, 8192
  %163 = zext i16 %162 to i32
  br label %164

164:                                              ; preds = %159, %156
  %165 = phi i32 [ %163, %159 ], [ 4096, %156 ]
  %166 = zext i16 %98 to i32
  %167 = shl nuw nsw i32 %166, 1
  %168 = and i32 %167, 254
  %169 = select i1 %104, i32 16384, i32 0
  %170 = shl nuw nsw i32 %103, 15
  %171 = and i32 %170, 67076096
  %172 = or i32 %168, %169
  %173 = or i32 %172, %171
  %174 = or i32 %173, %165
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %175 = load ptr, ptr %9, align 4
  %176 = getelementptr i8, ptr %175, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %174) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !53
  tail call void @arm_heavy_mb() #8
  %177 = load ptr, ptr %9, align 4
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !54
  %179 = or i32 %178, 3
  %180 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %180, i32 %179) #8, !srcloc !9
  %181 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !29
  tail call void @arm_heavy_mb() #8
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %181) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !30
  %183 = or i32 %182, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %183) #8, !srcloc !9
  store i32 0, ptr %23, align 4
  tail call void @__init_swait_queue_head(ptr noundef %24, ptr noundef nonnull @.str.19, ptr noundef nonnull @init_completion.__key) #8
  %184 = load i32, ptr %18, align 4
  br label %185

185:                                              ; preds = %189, %164
  %186 = phi i32 [ %184, %164 ], [ %197, %189 ]
  %187 = phi i32 [ 13, %164 ], [ %200, %189 ]
  %188 = icmp eq i32 %186, 0
  br i1 %188, label %204, label %189

189:                                              ; preds = %185
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  %190 = load ptr, ptr %17, align 4
  %191 = load i8, ptr %190, align 1
  %192 = load ptr, ptr %9, align 4
  %193 = getelementptr i8, ptr %192, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %193, i8 %191) #8, !srcloc !25
  %194 = load ptr, ptr %17, align 4
  %195 = getelementptr i8, ptr %194, i32 1
  store ptr %195, ptr %17, align 4
  %196 = load i32, ptr %18, align 4
  %197 = add i32 %196, -1
  store i32 %197, ptr %18, align 4
  %198 = load i32, ptr %26, align 4
  %199 = add i32 %198, 1
  store i32 %199, ptr %26, align 4
  %200 = add nsw i32 %187, -1
  %201 = icmp ugt i32 %187, 1
  br i1 %201, label %185, label %202

202:                                              ; preds = %189
  %203 = icmp eq i32 %197, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %202, %185
  br label %205

205:                                              ; preds = %204, %202
  %206 = phi i32 [ 50331656, %204 ], [ 50331658, %202 ]
  %207 = load i32, ptr %20, align 8
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %205
  %210 = load ptr, ptr %5, align 8
  %211 = load i8, ptr %210, align 4, !range !49
  %212 = icmp eq i8 %211, 0
  %213 = select i1 %212, i32 524288, i32 268435456
  br label %214

214:                                              ; preds = %209, %205
  %215 = phi i32 [ 524288, %205 ], [ %213, %209 ]
  %216 = or i32 %215, %206
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !55
  tail call void @arm_heavy_mb() #8
  %217 = load ptr, ptr %9, align 4
  %218 = getelementptr i8, ptr %217, i32 44
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %218) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !56
  %220 = or i32 %216, %219
  %221 = load ptr, ptr %9, align 4
  %222 = getelementptr i8, ptr %221, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %222, i32 %220) #8, !srcloc !9
  %223 = load i32, ptr %25, align 4
  %224 = tail call i32 @wait_for_completion_timeout(ptr noundef %23, i32 noundef %223) #8
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %214, %145
  %227 = load i32, ptr %21, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %259, label %234

229:                                              ; preds = %214, %145
  %230 = phi ptr [ @.str.18, %145 ], [ @.str.20, %214 ]
  %231 = load ptr, ptr %6, align 4
  %232 = load i16, ptr %16, align 4
  %233 = zext i16 %232 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %231, ptr noundef nonnull %230, i32 noundef %233) #9
  br label %234

234:                                              ; preds = %229, %226
  %235 = phi i1 [ true, %226 ], [ false, %229 ]
  %236 = phi i32 [ 0, %226 ], [ -110, %229 ]
  %237 = load ptr, ptr %9, align 4
  %238 = getelementptr i8, ptr %237, i32 20
  %239 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %238) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !57
  %240 = and i32 %239, 12
  %241 = icmp eq i32 %240, 12
  br i1 %241, label %242, label %252

242:                                              ; preds = %234
  %243 = lshr i32 %239, 4
  %244 = and i32 %243, 7
  %245 = load ptr, ptr %6, align 4
  %246 = icmp eq i32 %244, 7
  br i1 %246, label %250, label %247

247:                                              ; preds = %242
  %248 = getelementptr [7 x ptr], ptr @abort_causes, i32 0, i32 %244
  %249 = load ptr, ptr %248, align 4
  br label %250

250:                                              ; preds = %247, %242
  %251 = phi ptr [ %249, %247 ], [ @.str.17, %242 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %245, ptr noundef nonnull @.str.16, ptr noundef %251) #9
  br label %252

252:                                              ; preds = %250, %234
  %253 = tail call fastcc i32 @init_hw(ptr noundef %5) #8
  br i1 %235, label %254, label %256

254:                                              ; preds = %252
  %255 = load i32, ptr %21, align 4
  br label %256

256:                                              ; preds = %254, %252
  %257 = phi i32 [ %255, %254 ], [ %236, %252 ]
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %256, %226
  %260 = add nuw nsw i32 %96, 1
  %261 = icmp eq i32 %260, %2
  br i1 %261, label %268, label %95

262:                                              ; preds = %83
  %263 = icmp eq i32 %29, 0
  br i1 %263, label %268, label %264

264:                                              ; preds = %262, %256
  %265 = phi i32 [ %29, %262 ], [ %257, %256 ]
  %266 = add nuw nsw i32 %28, 1
  %267 = icmp eq i32 %266, 3
  br i1 %267, label %268, label %27

268:                                              ; preds = %264, %262, %259
  %269 = phi i32 [ %2, %259 ], [ %265, %264 ], [ %2, %262 ]
  %270 = load ptr, ptr %6, align 4
  %271 = tail call i32 @__pm_runtime_idle(ptr noundef %270, i32 noundef 4) #8
  ret i32 %269
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nmk_i2c_functionality(ptr nocapture noundef readnone %0) #7 {
  ret i32 251592715
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2154136412}
!9 = !{i64 4672945}
!10 = !{i64 4673363}
!11 = !{i64 2154137304}
!12 = !{i64 2154138333}
!13 = !{i64 2154138712}
!14 = !{i64 2154135720}
!15 = !{i64 2154136157}
!16 = !{i64 2154161320}
!17 = !{i64 2154161680}
!18 = !{i64 2154162040}
!19 = !{i32 0, i32 33}
!20 = !{i64 4673143}
!21 = !{i64 2154162547}
!22 = !{i64 2154160423}
!23 = !{i64 2154160935}
!24 = !{i64 2154154485}
!25 = !{i64 4672748}
!26 = !{i64 2154162310}
!27 = !{i64 2154162937}
!28 = !{i64 2154163171}
!29 = !{i64 2154134477}
!30 = !{i64 2154134913}
!31 = !{i64 2154164247}
!32 = !{i64 2154139733}
!33 = !{i64 2154140067}
!34 = !{i64 2154140401}
!35 = !{i64 2154140735}
!36 = !{i64 2154141069}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i64 2147929108, i64 2147929388, i64 2147929722, i64 2147930056}
!39 = !{i64 2154147476}
!40 = !{i64 2154147843}
!41 = !{i64 2154148934}
!42 = !{i64 2154149316}
!43 = !{i64 2154149707}
!44 = !{i64 2154150064}
!45 = !{i64 2154150413}
!46 = !{i64 2154150757}
!47 = !{i64 2154151690}
!48 = !{i64 2154152206}
!49 = !{i8 0, i8 2}
!50 = !{i64 2154153112}
!51 = !{i64 2154153612}
!52 = !{i64 2154154758}
!53 = !{i64 2154155691}
!54 = !{i64 2154156207}
!55 = !{i64 2154157116}
!56 = !{i64 2154157616}
!57 = !{i64 2154158638}
