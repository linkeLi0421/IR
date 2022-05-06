; ModuleID = '/llk/IR/drivers/i2c/algos/i2c-algo-bit.c_pt.bc'
source_filename = "../drivers/i2c/algos/i2c-algo-bit.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_bit_algo:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_bit_algo\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_bit_algo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_bit_add_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_bit_add_bus\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_bit_add_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_bit_add_numbered_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_bit_add_numbered_bus\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_bit_add_numbered_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_bit_test = internal constant [22 x i8] c"i2c_algo_bit.bit_test\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@bit_test = internal global i32 0, align 4
@__param_bit_test = internal constant %struct.kernel_param { ptr @__param_str_bit_test, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @bit_test } }, section "__param", align 4
@__UNIQUE_ID_bit_testtype247 = internal constant [35 x i8] c"i2c_algo_bit.parmtype=bit_test:int\00", section ".modinfo", align 1
@__UNIQUE_ID_bit_test248 = internal constant [76 x i8] c"i2c_algo_bit.parm=bit_test:lines testing - 0 off; 1 report; 2 fail if stuck\00", section ".modinfo", align 1
@i2c_bit_algo = dso_local constant %struct.i2c_algorithm { ptr @bit_xfer, ptr @bit_xfer_atomic, ptr null, ptr null, ptr @bit_func, ptr null, ptr null }, align 4
@__kstrtab_i2c_bit_algo = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_bit_algo = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_bit_algo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_bit_algo to i32), ptr @__kstrtab_i2c_bit_algo, ptr @__kstrtabns_i2c_bit_algo }, section "___ksymtab+i2c_bit_algo", align 4
@__kstrtab_i2c_bit_add_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_bit_add_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_bit_add_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_bit_add_bus to i32), ptr @__kstrtab_i2c_bit_add_bus, ptr @__kstrtabns_i2c_bit_add_bus }, section "___ksymtab+i2c_bit_add_bus", align 4
@__kstrtab_i2c_bit_add_numbered_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_bit_add_numbered_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_bit_add_numbered_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_bit_add_numbered_bus to i32), ptr @__kstrtab_i2c_bit_add_numbered_bus, ptr @__kstrtabns_i2c_bit_add_numbered_bus }, section "___ksymtab+i2c_bit_add_numbered_bus", align 4
@__UNIQUE_ID_author249 = internal constant [60 x i8] c"i2c_algo_bit.author=Simon G. Vogl <simon@tk.uni-linz.ac.at>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [55 x i8] c"i2c_algo_bit.description=I2C-Bus bit-banging algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [49 x i8] c"i2c_algo_bit.file=drivers/i2c/algos/i2c-algo-bit\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [25 x i8] c"i2c_algo_bit.license=GPL\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [31 x i8] c"died at extended address code\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"died at 2nd address code\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"died at repeated address code\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"readbytes: invalid block length (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"readbytes: ack/nak timeout\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"sendbytes: NAK bailout.\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"sendbytes: error %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"not flagged for atomic transfers\0A\00", align 1
@i2c_bit_quirk_no_clk_stretch = internal constant %struct.i2c_adapter_quirks { i64 16, i32 0, i16 0, i16 0, i16 0, i16 0 }, align 8
@.str.8 = private unnamed_addr constant [35 x i8] c"Not I2C compliant: can't read SCL\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Bus may be unreliable\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"\016%s: Testing SDA only, SCL is not readable\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"\014%s: bus seems to be busy (scl=%d, sda=%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"\014%s: SDA stuck high!\0A\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"\014%s: SCL unexpected low while pulling SDA low!\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"\014%s: SDA stuck low!\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"\014%s: SCL unexpected low while pulling SDA high!\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"\014%s: SCL stuck high!\0A\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"\014%s: SDA unexpected low while pulling SCL low!\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"\014%s: SCL stuck low!\0A\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"\014%s: SDA unexpected low while pulling SCL high!\0A\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"\016%s: Test OK\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_bit_test248, ptr @__UNIQUE_ID_bit_testtype247, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__ksymtab_i2c_bit_add_bus, ptr @__ksymtab_i2c_bit_add_numbered_bus, ptr @__ksymtab_i2c_bit_algo, ptr @__param_bit_test], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bit_xfer(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = tail call i32 %7(ptr noundef %0) #4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %266, label %12

12:                                               ; preds = %9, %3
  %13 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %5, align 4
  tail call void %14(ptr noundef %15, i32 noundef 0) #4
  %16 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %5, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %18(i32 noundef %17) #4
  %19 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %5, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %5, align 4
  tail call void %20(ptr noundef %21, i32 noundef 0) #4
  %22 = load i32, ptr %16, align 4
  %23 = sdiv i32 %22, 2
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %24(i32 noundef %23) #4
  %25 = icmp sgt i32 %2, 0
  br i1 %25, label %26, label %260

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 8
  %28 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  br label %29

29:                                               ; preds = %257, %26
  %30 = phi i32 [ 0, %26 ], [ %258, %257 ]
  %31 = getelementptr %struct.i2c_msg, ptr %1, i32 %30
  %32 = getelementptr %struct.i2c_msg, ptr %1, i32 %30, i32 1
  %33 = load i16, ptr %32, align 2
  %34 = and i16 %33, 4096
  %35 = and i16 %33, 16384
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %111

37:                                               ; preds = %29
  %38 = icmp eq i32 %30, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %37
  %40 = add nsw i32 %30, -1
  %41 = getelementptr %struct.i2c_msg, ptr %1, i32 %40, i32 1
  %42 = load i16, ptr %41, align 2
  %43 = icmp sgt i16 %42, -1
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  tail call fastcc void @i2c_stop(ptr noundef %5)
  %45 = load ptr, ptr %13, align 4
  %46 = load ptr, ptr %5, align 4
  tail call void %45(ptr noundef %46, i32 noundef 0) #4
  %47 = load i32, ptr %16, align 4
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %48(i32 noundef %47) #4
  %49 = load ptr, ptr %19, align 4
  %50 = load ptr, ptr %5, align 4
  tail call void %49(ptr noundef %50, i32 noundef 0) #4
  %51 = load i32, ptr %16, align 4
  %52 = sdiv i32 %51, 2
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %53(i32 noundef %52) #4
  br label %55

54:                                               ; preds = %39
  tail call fastcc void @i2c_repstart(ptr noundef %5)
  br label %55

55:                                               ; preds = %54, %44, %37
  %56 = load i16, ptr %32, align 2
  %57 = zext i16 %56 to i32
  %58 = and i16 %56, 4096
  %59 = load ptr, ptr %4, align 4
  %60 = icmp eq i16 %58, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, ptr %27, align 8
  br label %63

63:                                               ; preds = %61, %55
  %64 = phi i32 [ %62, %61 ], [ 0, %55 ]
  %65 = and i32 %57, 16
  %66 = icmp eq i32 %65, 0
  %67 = load i16, ptr %31, align 4
  br i1 %66, label %91, label %68

68:                                               ; preds = %63
  %69 = lshr i16 %67, 7
  %70 = trunc i16 %69 to i8
  %71 = and i8 %70, 6
  %72 = or i8 %71, -16
  %73 = tail call fastcc i32 @try_address(ptr noundef %0, i8 noundef zeroext %72, i32 noundef %64) #4
  %74 = icmp eq i32 %73, 1
  %75 = icmp ne i16 %58, 0
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %77, label %105

77:                                               ; preds = %68
  %78 = load i16, ptr %31, align 4
  %79 = trunc i16 %78 to i8
  %80 = tail call fastcc i32 @i2c_outb(ptr noundef %0, i8 noundef zeroext %79) #4
  %81 = icmp eq i32 %80, 1
  %82 = select i1 %81, i1 true, i1 %75
  br i1 %82, label %83, label %105

83:                                               ; preds = %77
  %84 = and i32 %57, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %111, label %86

86:                                               ; preds = %83
  tail call fastcc void @i2c_repstart(ptr noundef %59) #4
  %87 = or i8 %71, -15
  %88 = tail call fastcc i32 @try_address(ptr noundef %0, i8 noundef zeroext %87, i32 noundef %64) #4
  %89 = icmp eq i32 %88, 1
  %90 = select i1 %89, i1 true, i1 %75
  br i1 %90, label %111, label %105

91:                                               ; preds = %63
  %92 = trunc i16 %67 to i8
  %93 = shl i8 %92, 1
  %94 = trunc i16 %56 to i8
  %95 = and i8 %94, 1
  %96 = or i8 %93, %95
  %97 = lshr i16 %56, 13
  %98 = trunc i16 %97 to i8
  %99 = and i8 %98, 1
  %100 = xor i8 %96, %99
  %101 = tail call fastcc i32 @try_address(ptr noundef %0, i8 noundef zeroext %100, i32 noundef %64) #4
  %102 = icmp eq i32 %101, 1
  %103 = icmp ne i16 %58, 0
  %104 = select i1 %102, i1 true, i1 %103
  br i1 %104, label %111, label %108

105:                                              ; preds = %86, %77, %68
  %106 = phi ptr [ @.str, %68 ], [ @.str.1, %77 ], [ @.str.2, %86 ]
  %107 = phi i32 [ -6, %68 ], [ -6, %77 ], [ -5, %86 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull %106) #5
  br label %108

108:                                              ; preds = %105, %91
  %109 = phi i32 [ -6, %91 ], [ %107, %105 ]
  %110 = icmp eq i16 %34, 0
  br i1 %110, label %260, label %111

111:                                              ; preds = %108, %91, %86, %83, %29
  %112 = load i16, ptr %32, align 2
  %113 = and i16 %112, 1
  %114 = icmp eq i16 %113, 0
  %115 = getelementptr %struct.i2c_msg, ptr %1, i32 %30, i32 2
  %116 = load i16, ptr %115, align 4
  %117 = icmp eq i16 %116, 0
  br i1 %114, label %226, label %118

118:                                              ; preds = %111
  br i1 %117, label %218, label %119

119:                                              ; preds = %118
  %120 = zext i16 %112 to i32
  %121 = zext i16 %116 to i32
  %122 = getelementptr %struct.i2c_msg, ptr %1, i32 %30, i32 3
  %123 = load ptr, ptr %122, align 4
  %124 = and i32 %120, 1024
  %125 = icmp eq i32 %124, 0
  %126 = and i32 %120, 2048
  %127 = icmp eq i32 %126, 0
  br label %128

128:                                              ; preds = %216, %119
  %129 = phi i32 [ %121, %119 ], [ %212, %216 ]
  %130 = phi ptr [ %123, %119 ], [ %195, %216 ]
  %131 = phi i32 [ 0, %119 ], [ %194, %216 ]
  %132 = load ptr, ptr %4, align 4
  %133 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %132, i32 0, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = load ptr, ptr %132, align 4
  tail call void %134(ptr noundef %135, i32 noundef 1) #4
  %136 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %132, i32 0, i32 7
  %137 = load i32, ptr %136, align 4
  %138 = add i32 %137, 1
  %139 = sdiv i32 %138, 2
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %140(i32 noundef %139) #4
  %141 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %132, i32 0, i32 2
  %142 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %132, i32 0, i32 4
  %143 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %132, i32 0, i32 8
  %144 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %132, i32 0, i32 3
  br label %145

145:                                              ; preds = %173, %128
  %146 = phi i8 [ 0, %128 ], [ %182, %173 ]
  %147 = phi i32 [ 0, %128 ], [ %190, %173 ]
  %148 = load ptr, ptr %141, align 4
  %149 = load ptr, ptr %132, align 4
  tail call void %148(ptr noundef %149, i32 noundef 1) #4
  %150 = load ptr, ptr %142, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %173, label %152

152:                                              ; preds = %145
  %153 = load volatile i32, ptr @jiffies, align 64
  %154 = load ptr, ptr %132, align 4
  %155 = tail call i32 %150(ptr noundef %154) #4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %173

157:                                              ; preds = %168, %152
  %158 = load i32, ptr %143, align 4
  %159 = add i32 %158, %153
  %160 = load volatile i32, ptr @jiffies, align 64
  %161 = sub i32 %159, %160
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %157
  %164 = load ptr, ptr %142, align 4
  %165 = load ptr, ptr %132, align 4
  %166 = tail call i32 %164(ptr noundef %165) #4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %218, label %173

168:                                              ; preds = %157
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !9
  %169 = load ptr, ptr %142, align 4
  %170 = load ptr, ptr %132, align 4
  %171 = tail call i32 %169(ptr noundef %170) #4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %157, label %173

173:                                              ; preds = %168, %163, %152, %145
  %174 = load i32, ptr %136, align 4
  %175 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %175(i32 noundef %174) #4
  %176 = shl i8 %146, 1
  %177 = load ptr, ptr %144, align 4
  %178 = load ptr, ptr %132, align 4
  %179 = tail call i32 %177(ptr noundef %178) #4
  %180 = icmp ne i32 %179, 0
  %181 = zext i1 %180 to i8
  %182 = or i8 %176, %181
  %183 = load ptr, ptr %141, align 4
  %184 = load ptr, ptr %132, align 4
  tail call void %183(ptr noundef %184, i32 noundef 0) #4
  %185 = icmp eq i32 %147, 7
  %186 = load i32, ptr %136, align 4
  %187 = sdiv i32 %186, 2
  %188 = select i1 %185, i32 %187, i32 %186
  %189 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %189(i32 noundef %188) #4
  %190 = add nuw nsw i32 %147, 1
  %191 = icmp eq i32 %190, 8
  br i1 %191, label %192, label %145

192:                                              ; preds = %173
  %193 = zext i8 %182 to i32
  store i8 %182, ptr %130, align 1
  %194 = add i32 %131, 1
  %195 = getelementptr i8, ptr %130, i32 1
  %196 = add i32 %129, -1
  %197 = icmp ne i32 %131, 0
  %198 = select i1 %197, i1 true, i1 %125
  br i1 %198, label %211, label %199

199:                                              ; preds = %192
  %200 = add nsw i32 %193, -33
  %201 = icmp ult i32 %200, -32
  br i1 %201, label %202, label %206

202:                                              ; preds = %199
  br i1 %127, label %203, label %205

203:                                              ; preds = %202
  %204 = tail call fastcc i32 @acknak(ptr noundef %0, i32 noundef 0) #4
  br label %205

205:                                              ; preds = %203, %202
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.3, i32 noundef %193) #5
  br label %260

206:                                              ; preds = %199
  %207 = add i32 %196, %193
  %208 = load i16, ptr %115, align 4
  %209 = zext i8 %182 to i16
  %210 = add i16 %208, %209
  store i16 %210, ptr %115, align 4
  br label %211

211:                                              ; preds = %206, %192
  %212 = phi i32 [ %207, %206 ], [ %196, %192 ]
  br i1 %127, label %213, label %216

213:                                              ; preds = %211
  %214 = tail call fastcc i32 @acknak(ptr noundef %0, i32 noundef %212) #4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %218, label %216

216:                                              ; preds = %213, %211
  %217 = icmp sgt i32 %212, 0
  br i1 %217, label %128, label %218

218:                                              ; preds = %216, %213, %163, %118
  %219 = phi i32 [ 0, %118 ], [ %131, %163 ], [ %194, %216 ], [ %214, %213 ]
  %220 = load i16, ptr %115, align 4
  %221 = zext i16 %220 to i32
  %222 = icmp slt i32 %219, %221
  br i1 %222, label %223, label %257

223:                                              ; preds = %218
  %224 = icmp sgt i32 %219, -1
  %225 = select i1 %224, i32 -5, i32 %219
  br label %260

226:                                              ; preds = %111
  br i1 %117, label %249, label %227

227:                                              ; preds = %226
  %228 = zext i16 %116 to i32
  %229 = and i16 %112, 4096
  %230 = getelementptr %struct.i2c_msg, ptr %1, i32 %30, i32 3
  %231 = load ptr, ptr %230, align 4
  %232 = icmp ne i16 %229, 0
  br label %233

233:                                              ; preds = %242, %227
  %234 = phi i32 [ 0, %227 ], [ %244, %242 ]
  %235 = phi ptr [ %231, %227 ], [ %243, %242 ]
  %236 = load i8, ptr %235, align 1
  %237 = tail call fastcc i32 @i2c_outb(ptr noundef %0, i8 noundef zeroext %236) #4
  %238 = icmp sgt i32 %237, 0
  %239 = icmp eq i32 %237, 0
  %240 = select i1 %232, i1 %239, i1 false
  %241 = select i1 %238, i1 true, i1 %240
  br i1 %241, label %242, label %246

242:                                              ; preds = %233
  %243 = getelementptr i8, ptr %235, i32 1
  %244 = add nuw nsw i32 %234, 1
  %245 = icmp eq i32 %244, %228
  br i1 %245, label %249, label %233

246:                                              ; preds = %233
  br i1 %239, label %247, label %248

247:                                              ; preds = %246
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.5) #5
  br label %260

248:                                              ; preds = %246
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.6, i32 noundef %237) #5
  br label %249

249:                                              ; preds = %248, %242, %226
  %250 = phi i32 [ %237, %248 ], [ 0, %226 ], [ %228, %242 ]
  %251 = load i16, ptr %115, align 4
  %252 = zext i16 %251 to i32
  %253 = icmp slt i32 %250, %252
  br i1 %253, label %254, label %257

254:                                              ; preds = %249
  %255 = icmp sgt i32 %250, -1
  %256 = select i1 %255, i32 -5, i32 %250
  br label %260

257:                                              ; preds = %249, %218
  %258 = add nuw nsw i32 %30, 1
  %259 = icmp eq i32 %258, %2
  br i1 %259, label %260, label %29

260:                                              ; preds = %257, %254, %247, %223, %205, %108, %12
  %261 = phi i32 [ -71, %205 ], [ -5, %247 ], [ %225, %223 ], [ %256, %254 ], [ 0, %12 ], [ %109, %108 ], [ %2, %257 ]
  tail call fastcc void @i2c_stop(ptr noundef %5)
  %262 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %5, i32 0, i32 6
  %263 = load ptr, ptr %262, align 4
  %264 = icmp eq ptr %263, null
  br i1 %264, label %266, label %265

265:                                              ; preds = %260
  tail call void %263(ptr noundef %0) #4
  br label %266

266:                                              ; preds = %265, %260, %9
  %267 = phi i32 [ %10, %9 ], [ %261, %265 ], [ %261, %260 ]
  ret i32 %267
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bit_xfer_atomic(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %5, i32 0, i32 9
  %7 = load i8, ptr %6, align 4, !range !10
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.7) #5
  br label %11

11:                                               ; preds = %9, %3
  %12 = tail call i32 @bit_xfer(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bit_func(ptr nocapture noundef readnone %0) #1 {
  ret i32 268402719
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_bit_add_bus(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @__i2c_bit_add_bus(ptr noundef %0, ptr noundef nonnull @i2c_add_adapter)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__i2c_bit_add_bus(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @bit_test, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %182, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 12
  %9 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = tail call i32 %10(ptr noundef %0) #4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %179, label %15

15:                                               ; preds = %12, %7
  %16 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %8) #5
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %4, align 4
  %25 = tail call i32 %23(ptr noundef %24) #4
  %26 = load ptr, ptr %16, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load ptr, ptr %4, align 4
  %30 = tail call i32 %26(ptr noundef %29) #4
  br label %31

31:                                               ; preds = %28, %21
  %32 = phi i32 [ %30, %28 ], [ 1, %21 ]
  %33 = icmp ne i32 %32, 0
  %34 = icmp ne i32 %25, 0
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %8, i32 noundef %32, i32 noundef %25) #5
  br label %134

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %4, align 4
  tail call void %40(ptr noundef %41, i32 noundef 0) #4
  %42 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 7
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  %45 = sdiv i32 %44, 2
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %46(i32 noundef %45) #4
  %47 = load ptr, ptr %22, align 4
  %48 = load ptr, ptr %4, align 4
  %49 = tail call i32 %47(ptr noundef %48) #4
  %50 = load ptr, ptr %16, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %38
  %53 = load ptr, ptr %4, align 4
  %54 = tail call i32 %50(ptr noundef %53) #4
  %55 = icmp eq i32 %49, 0
  br i1 %55, label %60, label %58

56:                                               ; preds = %38
  %57 = icmp eq i32 %49, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %56, %52
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %8) #5
  br label %134

60:                                               ; preds = %52
  %61 = icmp eq i32 %54, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %60
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %8) #5
  br label %134

64:                                               ; preds = %60, %56
  %65 = load ptr, ptr %39, align 4
  %66 = load ptr, ptr %4, align 4
  tail call void %65(ptr noundef %66, i32 noundef 1) #4
  %67 = load i32, ptr %42, align 4
  %68 = add i32 %67, 1
  %69 = sdiv i32 %68, 2
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %70(i32 noundef %69) #4
  %71 = load ptr, ptr %22, align 4
  %72 = load ptr, ptr %4, align 4
  %73 = tail call i32 %71(ptr noundef %72) #4
  %74 = load ptr, ptr %16, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %64
  %77 = load ptr, ptr %4, align 4
  %78 = tail call i32 %74(ptr noundef %77) #4
  %79 = icmp eq i32 %73, 0
  br i1 %79, label %82, label %84

80:                                               ; preds = %64
  %81 = icmp eq i32 %73, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %80, %76
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %8) #5
  br label %134

84:                                               ; preds = %76
  %85 = icmp eq i32 %78, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %84
  %87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %8) #5
  br label %134

88:                                               ; preds = %84, %80
  %89 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = load ptr, ptr %4, align 4
  tail call void %90(ptr noundef %91, i32 noundef 0) #4
  %92 = load i32, ptr %42, align 4
  %93 = sdiv i32 %92, 2
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %94(i32 noundef %93) #4
  %95 = load ptr, ptr %22, align 4
  %96 = load ptr, ptr %4, align 4
  %97 = tail call i32 %95(ptr noundef %96) #4
  %98 = load ptr, ptr %16, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %106, label %100

100:                                              ; preds = %88
  %101 = load ptr, ptr %4, align 4
  %102 = tail call i32 %98(ptr noundef %101) #4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %8) #5
  br label %134

106:                                              ; preds = %100, %88
  %107 = icmp eq i32 %97, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %106
  %109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %8) #5
  br label %134

110:                                              ; preds = %106
  %111 = tail call fastcc i32 @sclhi(ptr noundef %4) #4
  %112 = load ptr, ptr %22, align 4
  %113 = load ptr, ptr %4, align 4
  %114 = tail call i32 %112(ptr noundef %113) #4
  %115 = load ptr, ptr %16, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %123, label %117

117:                                              ; preds = %110
  %118 = load ptr, ptr %4, align 4
  %119 = tail call i32 %115(ptr noundef %118) #4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %8) #5
  br label %134

123:                                              ; preds = %117, %110
  %124 = icmp eq i32 %114, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %123
  %126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %8) #5
  br label %134

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 6
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %127
  tail call void %129(ptr noundef %0) #4
  br label %132

132:                                              ; preds = %131, %127
  %133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %8) #5
  br label %182

134:                                              ; preds = %125, %121, %108, %104, %86, %82, %62, %58, %36
  %135 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = load ptr, ptr %4, align 4
  tail call void %136(ptr noundef %137, i32 noundef 1) #4
  %138 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 7
  %139 = load i32, ptr %138, align 4
  %140 = add i32 %139, 1
  %141 = sdiv i32 %140, 2
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %142(i32 noundef %141) #4
  %143 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 2
  %144 = load ptr, ptr %143, align 4
  %145 = load ptr, ptr %4, align 4
  tail call void %144(ptr noundef %145, i32 noundef 1) #4
  %146 = load ptr, ptr %16, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %171, label %148

148:                                              ; preds = %134
  %149 = load volatile i32, ptr @jiffies, align 64
  %150 = load ptr, ptr %4, align 4
  %151 = tail call i32 %146(ptr noundef %150) #4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %171

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 8
  br label %155

155:                                              ; preds = %166, %153
  %156 = load i32, ptr %154, align 4
  %157 = add i32 %156, %149
  %158 = load volatile i32, ptr @jiffies, align 64
  %159 = sub i32 %157, %158
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %155
  %162 = load ptr, ptr %16, align 4
  %163 = load ptr, ptr %4, align 4
  %164 = tail call i32 %162(ptr noundef %163) #4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %174, label %171

166:                                              ; preds = %155
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !9
  %167 = load ptr, ptr %16, align 4
  %168 = load ptr, ptr %4, align 4
  %169 = tail call i32 %167(ptr noundef %168) #4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %155, label %171

171:                                              ; preds = %166, %161, %148, %134
  %172 = load i32, ptr %138, align 4
  %173 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %173(i32 noundef %172) #4
  br label %174

174:                                              ; preds = %171, %161
  %175 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 6
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %179, label %178

178:                                              ; preds = %174
  tail call void %176(ptr noundef %0) #4
  br label %179

179:                                              ; preds = %178, %174, %12
  %180 = load i32, ptr @bit_test, align 4
  %181 = icmp sgt i32 %180, 1
  br i1 %181, label %198, label %182

182:                                              ; preds = %179, %132, %2
  %183 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 2
  store ptr @i2c_bit_algo, ptr %183, align 8
  %184 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 8
  store i32 3, ptr %184, align 8
  %185 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 4
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %190

188:                                              ; preds = %182
  %189 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 17
  store ptr @i2c_bit_quirk_no_clk_stretch, ptr %189, align 8
  br label %190

190:                                              ; preds = %188, %182
  %191 = tail call i32 %1(ptr noundef %0) #4, !callees !11
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %190
  %194 = load ptr, ptr %185, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %197, ptr noundef nonnull @.str.8) #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %197, ptr noundef nonnull @.str.9) #5
  br label %198

198:                                              ; preds = %196, %193, %190, %179
  %199 = phi i32 [ -19, %179 ], [ %191, %190 ], [ 0, %196 ], [ 0, %193 ]
  ret i32 %199
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_bit_add_numbered_bus(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @__i2c_bit_add_bus(ptr noundef %0, ptr noundef nonnull @i2c_add_numbered_adapter)
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @i2c_stop(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  tail call void %3(ptr noundef %4, i32 noundef 0) #4
  %5 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 1
  %8 = sdiv i32 %7, 2
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %9(i32 noundef %8) #4
  %10 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %0, align 4
  tail call void %11(ptr noundef %12, i32 noundef 1) #4
  %13 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %39, label %16

16:                                               ; preds = %1
  %17 = load volatile i32, ptr @jiffies, align 64
  %18 = load ptr, ptr %0, align 4
  %19 = tail call i32 %14(ptr noundef %18) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %0, i32 0, i32 8
  br label %23

23:                                               ; preds = %34, %21
  %24 = load i32, ptr %22, align 4
  %25 = add i32 %24, %17
  %26 = load volatile i32, ptr @jiffies, align 64
  %27 = sub i32 %25, %26
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load ptr, ptr %13, align 4
  %31 = load ptr, ptr %0, align 4
  %32 = tail call i32 %30(ptr noundef %31) #4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %39

34:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !9
  %35 = load ptr, ptr %13, align 4
  %36 = load ptr, ptr %0, align 4
  %37 = tail call i32 %35(ptr noundef %36) #4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %23, label %39

39:                                               ; preds = %34, %29, %16, %1
  %40 = load i32, ptr %5, align 4
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %40) #4
  br label %42

42:                                               ; preds = %39, %29
  %43 = load ptr, ptr %2, align 4
  %44 = load ptr, ptr %0, align 4
  tail call void %43(ptr noundef %44, i32 noundef 1) #4
  %45 = load i32, ptr %5, align 4
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %46(i32 noundef %45) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @i2c_repstart(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  tail call void %3(ptr noundef %4, i32 noundef 1) #4
  %5 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 1
  %8 = sdiv i32 %7, 2
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %9(i32 noundef %8) #4
  %10 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %0, align 4
  tail call void %11(ptr noundef %12, i32 noundef 1) #4
  %13 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %39, label %16

16:                                               ; preds = %1
  %17 = load volatile i32, ptr @jiffies, align 64
  %18 = load ptr, ptr %0, align 4
  %19 = tail call i32 %14(ptr noundef %18) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %0, i32 0, i32 8
  br label %23

23:                                               ; preds = %34, %21
  %24 = load i32, ptr %22, align 4
  %25 = add i32 %24, %17
  %26 = load volatile i32, ptr @jiffies, align 64
  %27 = sub i32 %25, %26
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load ptr, ptr %13, align 4
  %31 = load ptr, ptr %0, align 4
  %32 = tail call i32 %30(ptr noundef %31) #4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %39

34:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !9
  %35 = load ptr, ptr %13, align 4
  %36 = load ptr, ptr %0, align 4
  %37 = tail call i32 %35(ptr noundef %36) #4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %23, label %39

39:                                               ; preds = %34, %29, %16, %1
  %40 = load i32, ptr %5, align 4
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %40) #4
  br label %42

42:                                               ; preds = %39, %29
  %43 = load ptr, ptr %2, align 4
  %44 = load ptr, ptr %0, align 4
  tail call void %43(ptr noundef %44, i32 noundef 0) #4
  %45 = load i32, ptr %5, align 4
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %46(i32 noundef %45) #4
  %47 = load ptr, ptr %10, align 4
  %48 = load ptr, ptr %0, align 4
  tail call void %47(ptr noundef %48, i32 noundef 0) #4
  %49 = load i32, ptr %5, align 4
  %50 = sdiv i32 %49, 2
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %51(i32 noundef %50) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sclhi(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  tail call void %3(ptr noundef %4, i32 noundef 1) #4
  %5 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %1
  %9 = load volatile i32, ptr @jiffies, align 64
  %10 = load ptr, ptr %0, align 4
  %11 = tail call i32 %6(ptr noundef %10) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %0, i32 0, i32 8
  br label %15

15:                                               ; preds = %26, %13
  %16 = load i32, ptr %14, align 4
  %17 = add i32 %16, %9
  %18 = load volatile i32, ptr @jiffies, align 64
  %19 = sub i32 %17, %18
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load ptr, ptr %5, align 4
  %23 = load ptr, ptr %0, align 4
  %24 = tail call i32 %22(ptr noundef %23) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %31

26:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !9
  %27 = load ptr, ptr %5, align 4
  %28 = load ptr, ptr %0, align 4
  %29 = tail call i32 %27(ptr noundef %28) #4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %15, label %31

31:                                               ; preds = %26, %21, %8, %1
  %32 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %0, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %34(i32 noundef %33) #4
  br label %35

35:                                               ; preds = %31, %21
  %36 = phi i32 [ -110, %21 ], [ 0, %31 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @try_address(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp slt i32 %2, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %5, i32 0, i32 7
  %9 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %5, i32 0, i32 1
  %10 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %5, i32 0, i32 2
  br label %11

11:                                               ; preds = %17, %7
  %12 = phi i32 [ 0, %7 ], [ %29, %17 ]
  %13 = tail call fastcc i32 @i2c_outb(ptr noundef %0, i8 noundef zeroext %1)
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = icmp eq i32 %12, %2
  br i1 %16, label %31, label %17

17:                                               ; preds = %15
  tail call fastcc void @i2c_stop(ptr noundef %5)
  %18 = load i32, ptr %8, align 4
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %19(i32 noundef %18) #4
  tail call void @yield() #4
  %20 = load ptr, ptr %9, align 4
  %21 = load ptr, ptr %5, align 4
  tail call void %20(ptr noundef %21, i32 noundef 0) #4
  %22 = load i32, ptr %8, align 4
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %23(i32 noundef %22) #4
  %24 = load ptr, ptr %10, align 4
  %25 = load ptr, ptr %5, align 4
  tail call void %24(ptr noundef %25, i32 noundef 0) #4
  %26 = load i32, ptr %8, align 4
  %27 = sdiv i32 %26, 2
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %28(i32 noundef %27) #4
  %29 = add nuw i32 %12, 1
  %30 = icmp sgt i32 %29, %2
  br i1 %30, label %31, label %11

31:                                               ; preds = %17, %15, %11, %3
  %32 = phi i32 [ 0, %3 ], [ 1, %11 ], [ %13, %15 ], [ %13, %17 ]
  ret i32 %32
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @i2c_outb(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = zext i8 %1 to i32
  %6 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 1
  %7 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 7
  %8 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 2
  %9 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 4
  %10 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 8
  br label %11

11:                                               ; preds = %46, %2
  %12 = phi i32 [ 7, %2 ], [ %54, %46 ]
  %13 = lshr i32 %5, %12
  %14 = and i32 %13, 1
  %15 = load ptr, ptr %6, align 4
  %16 = load ptr, ptr %4, align 4
  tail call void %15(ptr noundef %16, i32 noundef %14) #4
  %17 = load i32, ptr %7, align 4
  %18 = add i32 %17, 1
  %19 = sdiv i32 %18, 2
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %20(i32 noundef %19) #4
  %21 = load ptr, ptr %8, align 4
  %22 = load ptr, ptr %4, align 4
  tail call void %21(ptr noundef %22, i32 noundef 1) #4
  %23 = load ptr, ptr %9, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %46, label %25

25:                                               ; preds = %11
  %26 = load volatile i32, ptr @jiffies, align 64
  %27 = load ptr, ptr %4, align 4
  %28 = tail call i32 %23(ptr noundef %27) #4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %41, %25
  %31 = load i32, ptr %10, align 4
  %32 = add i32 %31, %26
  %33 = load volatile i32, ptr @jiffies, align 64
  %34 = sub i32 %32, %33
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load ptr, ptr %9, align 4
  %38 = load ptr, ptr %4, align 4
  %39 = tail call i32 %37(ptr noundef %38) #4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %102, label %46

41:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !9
  %42 = load ptr, ptr %9, align 4
  %43 = load ptr, ptr %4, align 4
  %44 = tail call i32 %42(ptr noundef %43) #4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %30, label %46

46:                                               ; preds = %41, %36, %25, %11
  %47 = load i32, ptr %7, align 4
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %48(i32 noundef %47) #4
  %49 = load ptr, ptr %8, align 4
  %50 = load ptr, ptr %4, align 4
  tail call void %49(ptr noundef %50, i32 noundef 0) #4
  %51 = load i32, ptr %7, align 4
  %52 = sdiv i32 %51, 2
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %53(i32 noundef %52) #4
  %54 = add nsw i32 %12, -1
  %55 = icmp sgt i32 %12, 0
  br i1 %55, label %11, label %56

56:                                               ; preds = %46
  %57 = load ptr, ptr %6, align 4
  %58 = load ptr, ptr %4, align 4
  tail call void %57(ptr noundef %58, i32 noundef 1) #4
  %59 = load i32, ptr %7, align 4
  %60 = add i32 %59, 1
  %61 = sdiv i32 %60, 2
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %62(i32 noundef %61) #4
  %63 = load ptr, ptr %8, align 4
  %64 = load ptr, ptr %4, align 4
  tail call void %63(ptr noundef %64, i32 noundef 1) #4
  %65 = load ptr, ptr %9, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %88, label %67

67:                                               ; preds = %56
  %68 = load volatile i32, ptr @jiffies, align 64
  %69 = load ptr, ptr %4, align 4
  %70 = tail call i32 %65(ptr noundef %69) #4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %83, %67
  %73 = load i32, ptr %10, align 4
  %74 = add i32 %73, %68
  %75 = load volatile i32, ptr @jiffies, align 64
  %76 = sub i32 %74, %75
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load ptr, ptr %9, align 4
  %80 = load ptr, ptr %4, align 4
  %81 = tail call i32 %79(ptr noundef %80) #4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %102, label %88

83:                                               ; preds = %72
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !9
  %84 = load ptr, ptr %9, align 4
  %85 = load ptr, ptr %4, align 4
  %86 = tail call i32 %84(ptr noundef %85) #4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %72, label %88

88:                                               ; preds = %83, %78, %67, %56
  %89 = load i32, ptr %7, align 4
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %90(i32 noundef %89) #4
  %91 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 3
  %92 = load ptr, ptr %91, align 4
  %93 = load ptr, ptr %4, align 4
  %94 = tail call i32 %92(ptr noundef %93) #4
  %95 = load ptr, ptr %8, align 4
  %96 = load ptr, ptr %4, align 4
  tail call void %95(ptr noundef %96, i32 noundef 0) #4
  %97 = load i32, ptr %7, align 4
  %98 = sdiv i32 %97, 2
  %99 = icmp eq i32 %94, 0
  %100 = zext i1 %99 to i32
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %101(i32 noundef %98) #4
  br label %102

102:                                              ; preds = %88, %78, %36
  %103 = phi i32 [ -110, %78 ], [ %100, %88 ], [ -110, %36 ]
  ret i32 %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @yield() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @acknak(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %4, align 4
  tail call void %8(ptr noundef %9, i32 noundef 0) #4
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  %14 = sdiv i32 %13, 2
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %15(i32 noundef %14) #4
  %16 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %4, align 4
  tail call void %17(ptr noundef %18, i32 noundef 1) #4
  %19 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %45, label %22

22:                                               ; preds = %10
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = load ptr, ptr %4, align 4
  %25 = tail call i32 %20(ptr noundef %24) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %4, i32 0, i32 8
  br label %29

29:                                               ; preds = %40, %27
  %30 = load i32, ptr %28, align 4
  %31 = add i32 %30, %23
  %32 = load volatile i32, ptr @jiffies, align 64
  %33 = sub i32 %31, %32
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load ptr, ptr %19, align 4
  %37 = load ptr, ptr %4, align 4
  %38 = tail call i32 %36(ptr noundef %37) #4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %53, label %45

40:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !9
  %41 = load ptr, ptr %19, align 4
  %42 = load ptr, ptr %4, align 4
  %43 = tail call i32 %41(ptr noundef %42) #4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %29, label %45

45:                                               ; preds = %40, %35, %22, %10
  %46 = load i32, ptr %11, align 4
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %47(i32 noundef %46) #4
  %48 = load ptr, ptr %16, align 4
  %49 = load ptr, ptr %4, align 4
  tail call void %48(ptr noundef %49, i32 noundef 0) #4
  %50 = load i32, ptr %11, align 4
  %51 = sdiv i32 %50, 2
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %52(i32 noundef %51) #4
  br label %55

53:                                               ; preds = %35
  %54 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.4) #5
  br label %55

55:                                               ; preds = %53, %45
  %56 = phi i32 [ -110, %53 ], [ 0, %45 ]
  ret i32 %56
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2154061566}
!9 = !{i64 2154061408}
!10 = !{i8 0, i8 2}
!11 = !{ptr @i2c_add_adapter, ptr @i2c_add_numbered_adapter}
