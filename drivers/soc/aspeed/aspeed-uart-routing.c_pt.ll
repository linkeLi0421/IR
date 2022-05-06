; ModuleID = '/llk/IR/drivers/soc/aspeed/aspeed-uart-routing.c_pt.bc'
source_filename = "../drivers/soc/aspeed/aspeed-uart-routing.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.aspeed_uart_routing = type { ptr, ptr }
%struct.aspeed_uart_routing_selector = type { %struct.device_attribute, i8, i8, i8, [0 x ptr] }

@__initcall__kmod_aspeed_uart_routing__162_598_aspeed_uart_routing_driver_init6 = internal global ptr @aspeed_uart_routing_driver_init, section ".initcall6.init", align 4
@aspeed_uart_routing_driver = internal global %struct.platform_driver { ptr @aspeed_uart_routing_probe, ptr @aspeed_uart_routing_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aspeed_uart_routing_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_aspeed_uart_routing_driver_exit = internal global ptr @aspeed_uart_routing_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author163 = internal constant [56 x i8] c"aspeed_uart_routing.author=Oskar Senft <osk@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author164 = internal constant [71 x i8] c"aspeed_uart_routing.author=Chia-Wei Wang <chiawei_wang@aspeedtech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file165 = internal constant [64 x i8] c"aspeed_uart_routing.file=drivers/soc/aspeed/aspeed-uart-routing\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [35 x i8] c"aspeed_uart_routing.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description167 = internal constant [72 x i8] c"aspeed_uart_routing.description=Driver to configure Aspeed UART routing\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [20 x i8] c"aspeed-uart-routing\00", align 1
@aspeed_uart_routing_table = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-uart-routing\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2500_uart_routing_attr_group }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-uart-routing\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2500_uart_routing_attr_group }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-uart-routing\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2600_uart_routing_attr_group }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"cannot get regmap\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"module loaded\0A\00", align 1
@ast2500_uart_routing_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ast2500_uart_routing_attrs, ptr null }, align 4
@ast2600_uart_routing_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ast2600_uart_routing_attrs, ptr null }, align 4
@ast2500_uart_routing_attrs = internal global [12 x ptr] [ptr @ast2500_io6_sel, ptr @ast2500_uart5_sel, ptr @ast2500_uart4_sel, ptr @ast2500_uart3_sel, ptr @ast2500_uart2_sel, ptr @ast2500_uart1_sel, ptr @ast2500_io5_sel, ptr @ast2500_io4_sel, ptr @ast2500_io3_sel, ptr @ast2500_io2_sel, ptr @ast2500_io1_sel, ptr null], align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"io6\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"uart1\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"uart2\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"uart3\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"uart4\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"uart5\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"io1\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"io2\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"io3\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"io4\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"io5\00", align 1
@ast2500_io6_sel = internal global { %struct.device_attribute, i8, i8, i8, [11 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 420 }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -104, i8 15, i8 8, [11 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr null] }, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"[unknown(%d)]\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"invalid value \22%s\22\0A\00", align 1
@ast2500_uart5_sel = internal global { %struct.device_attribute, i8, i8, i8, [11 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 420 }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 15, i8 28, [11 x ptr] [ptr @.str.13, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.3, ptr null] }, align 4
@ast2500_uart4_sel = internal global { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 420 }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 25, [9 x ptr] [ptr @.str.12, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.3, ptr null] }, align 4
@ast2500_uart3_sel = internal global { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 420 }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 22, [9 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.9, ptr @.str.10, ptr @.str.7, ptr @.str.4, ptr @.str.5, ptr @.str.3, ptr null] }, align 4
@ast2500_uart2_sel = internal global { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420 }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 19, [9 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.9, ptr @.str.6, ptr @.str.7, ptr @.str.4, ptr @.str.3, ptr null] }, align 4
@ast2500_uart1_sel = internal global { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 420 }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 16, [9 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.3, ptr null] }, align 4
@ast2500_io5_sel = internal global { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420 }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 12, [9 x ptr] [ptr @.str.8, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.3, ptr null] }, align 4
@ast2500_io4_sel = internal global { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420 }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 9, [9 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.3, ptr null] }, align 4
@ast2500_io3_sel = internal global { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420 }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 6, [9 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.4, ptr @.str.5, ptr @.str.9, ptr @.str.10, ptr @.str.3, ptr null] }, align 4
@ast2500_io2_sel = internal global { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420 }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 3, [9 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.4, ptr @.str.11, ptr @.str.12, ptr @.str.3, ptr null] }, align 4
@ast2500_io1_sel = internal global { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420 }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 0, [9 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.3, ptr null] }, align 4
@ast2600_uart_routing_attrs = internal global [11 x ptr] [ptr @ast2600_uart10_sel, ptr @ast2600_io10_sel, ptr @ast2600_uart4_sel, ptr @ast2600_uart3_sel, ptr @ast2600_uart2_sel, ptr @ast2600_uart1_sel, ptr @ast2600_io4_sel, ptr @ast2600_io3_sel, ptr @ast2600_io2_sel, ptr @ast2600_io1_sel, ptr null], align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"uart10\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"io10\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@ast2600_uart10_sel = internal global { %struct.device_attribute, i8, i8, i8, [11 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420 }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -104, i8 15, i8 12, [11 x ptr] [ptr @.str.31, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.32, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr null] }, align 4
@ast2600_io10_sel = internal global { %struct.device_attribute, i8, i8, i8, [12 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420 }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -104, i8 15, i8 8, [12 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.32, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.32, ptr @.str.30, ptr null] }, align 4
@ast2600_uart4_sel = internal global { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 420 }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 25, [9 x ptr] [ptr @.str.12, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.31, ptr null] }, align 4
@ast2600_uart3_sel = internal global { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 420 }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 22, [9 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.9, ptr @.str.10, ptr @.str.7, ptr @.str.4, ptr @.str.5, ptr @.str.31, ptr null] }, align 4
@ast2600_uart2_sel = internal global { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420 }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 19, [9 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.9, ptr @.str.6, ptr @.str.7, ptr @.str.4, ptr @.str.31, ptr null] }, align 4
@ast2600_uart1_sel = internal global { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 420 }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 16, [9 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.31, ptr null] }, align 4
@ast2600_io4_sel = internal global { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420 }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 9, [9 x ptr] [ptr @.str.7, ptr @.str.30, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.31, ptr null] }, align 4
@ast2600_io3_sel = internal global { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420 }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 6, [9 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.30, ptr @.str.4, ptr @.str.5, ptr @.str.9, ptr @.str.10, ptr @.str.31, ptr null] }, align 4
@ast2600_io2_sel = internal global { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420 }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 3, [9 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.30, ptr @.str.4, ptr @.str.11, ptr @.str.12, ptr @.str.31, ptr null] }, align 4
@ast2600_io1_sel = internal global { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420 }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 0, [9 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.30, ptr @.str.11, ptr @.str.12, ptr @.str.31, ptr null] }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_author164, ptr @__UNIQUE_ID_description167, ptr @__UNIQUE_ID_file165, ptr @__UNIQUE_ID_license166, ptr @__exitcall_aspeed_uart_routing_driver_exit, ptr @__initcall__kmod_aspeed_uart_routing__162_598_aspeed_uart_routing_driver_init6, ptr @aspeed_uart_routing_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @aspeed_uart_routing_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_uart_routing_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @aspeed_uart_routing_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_uart_routing_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_uart_routing_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 8, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @syscon_node_to_regmap(ptr noundef %9) #5
  store ptr %10, ptr %3, align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  %13 = ptrtoint ptr %10 to i32
  br label %21

14:                                               ; preds = %5
  %15 = tail call ptr @of_device_get_match_data(ptr noundef %2) #5
  %16 = getelementptr inbounds %struct.aspeed_uart_routing, ptr %3, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  %17 = tail call i32 @sysfs_create_group(ptr noundef %2, ptr noundef %15) #5
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %20, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  br label %21

21:                                               ; preds = %19, %14, %12, %1
  %22 = phi i32 [ %13, %12 ], [ 0, %19 ], [ -12, %1 ], [ %17, %14 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_uart_routing_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.aspeed_uart_routing, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @sysfs_remove_group(ptr noundef %2, ptr noundef %6) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_uart_routing_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.aspeed_uart_routing_selector, ptr %1, i32 0, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = call i32 @regmap_read(ptr noundef %7, i32 noundef %10, ptr noundef nonnull %4) #5
  %12 = load i32, ptr %4, align 4
  %13 = getelementptr inbounds %struct.aspeed_uart_routing_selector, ptr %1, i32 0, i32 3
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  %16 = ashr i32 %12, %15
  %17 = getelementptr inbounds %struct.aspeed_uart_routing_selector, ptr %1, i32 0, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %16, %19
  store i32 %20, ptr %4, align 4
  %21 = getelementptr %struct.aspeed_uart_routing_selector, ptr %1, i32 0, i32 4, i32 0
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %3
  %25 = icmp eq i32 %20, 0
  %26 = select i1 %25, ptr @.str.15, ptr @.str.16
  %27 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %26, ptr noundef nonnull %22) #5
  %28 = getelementptr %struct.aspeed_uart_routing_selector, ptr %1, i32 0, i32 4, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %31, %24
  %32 = phi ptr [ %42, %31 ], [ %29, %24 ]
  %33 = phi i32 [ %40, %31 ], [ 1, %24 ]
  %34 = phi i32 [ %39, %31 ], [ %27, %24 ]
  %35 = load i32, ptr %4, align 4
  %36 = icmp eq i32 %33, %35
  %37 = select i1 %36, ptr @.str.15, ptr @.str.16
  %38 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %34, ptr noundef nonnull %37, ptr noundef nonnull %32) #5
  %39 = add i32 %38, %34
  %40 = add i32 %33, 1
  %41 = getelementptr %struct.aspeed_uart_routing_selector, ptr %1, i32 0, i32 4, i32 %40
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %31

44:                                               ; preds = %31, %24
  %45 = phi i32 [ %27, %24 ], [ %39, %31 ]
  %46 = phi i32 [ 1, %24 ], [ %40, %31 ]
  %47 = load i32, ptr %4, align 4
  %48 = icmp slt i32 %47, %46
  br i1 %48, label %54, label %49

49:                                               ; preds = %44, %3
  %50 = phi i32 [ %45, %44 ], [ 0, %3 ]
  %51 = phi i32 [ %47, %44 ], [ %20, %3 ]
  %52 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %50, ptr noundef nonnull @.str.17, i32 noundef %51) #5
  %53 = add i32 %52, %50
  br label %54

54:                                               ; preds = %49, %44
  %55 = phi i32 [ %53, %49 ], [ %45, %44 ]
  %56 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %55, ptr noundef nonnull @.str.18) #5
  %57 = add i32 %56, %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_uart_routing_store(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.aspeed_uart_routing_selector, ptr %1, i32 0, i32 4
  %8 = tail call i32 @match_string(ptr noundef %7, i32 noundef -1, ptr noundef %2) #5
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %2) #6
  br label %26

11:                                               ; preds = %4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.aspeed_uart_routing_selector, ptr %1, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.aspeed_uart_routing_selector, ptr %1, i32 0, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.aspeed_uart_routing_selector, ptr %1, i32 0, i32 3
  %20 = load i8, ptr %19, align 2
  %21 = zext i8 %20 to i32
  %22 = shl i32 %18, %21
  %23 = and i32 %8, %18
  %24 = shl i32 %23, %21
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %15, i32 noundef %22, i32 noundef %24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %26

26:                                               ; preds = %11, %10
  %27 = phi i32 [ -22, %10 ], [ %3, %11 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
