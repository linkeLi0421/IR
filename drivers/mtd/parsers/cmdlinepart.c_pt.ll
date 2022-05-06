; ModuleID = '/llk/IR/drivers/mtd/parsers/cmdlinepart.c_pt.bc'
source_filename = "../drivers/mtd/parsers/cmdlinepart.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.mtd_part_parser = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.5 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.5 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.cmdline_mtd_partition = type { ptr, ptr, i32, ptr }
%struct.mtd_partition = type { ptr, ptr, i64, i64, i32, i32, ptr }

@__setup_str_mtdpart_setup = internal constant [10 x i8] c"mtdparts=\00", section ".init.rodata", align 1
@__setup_mtdpart_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_mtdpart_setup, ptr @mtdpart_setup, i32 0 }, section ".init.setup", align 4
@cmdline_parser = internal global %struct.mtd_part_parser { %struct.list_head zeroinitializer, ptr null, ptr @.str, ptr null, ptr @parse_cmdline_partitions, ptr null }, align 4
@__initcall__kmod_cmdlinepart__168_429_cmdline_parser_init6 = internal global ptr @cmdline_parser_init, section ".initcall6.init", align 4
@__exitcall_cmdline_parser_exit = internal global ptr @cmdline_parser_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_mtdparts169 = internal constant [53 x i8] c"cmdlinepart.parm=mtdparts:Partitioning specification\00", section ".modinfo", align 1
@__param_str_mtdparts = internal constant [21 x i8] c"cmdlinepart.mtdparts\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mtdparts = internal global ptr null, align 4
@__param_mtdparts = internal constant %struct.kernel_param { ptr @__param_str_mtdparts, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @mtdparts } }, section "__param", align 4
@__UNIQUE_ID_mtdpartstype170 = internal constant [36 x i8] c"cmdlinepart.parmtype=mtdparts:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_file171 = internal constant [49 x i8] c"cmdlinepart.file=drivers/mtd/parsers/cmdlinepart\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [24 x i8] c"cmdlinepart.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author173 = internal constant [49 x i8] c"cmdlinepart.author=Marius Groeger <mag@sysgo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description174 = internal constant [69 x i8] c"cmdlinepart.description=Command line configuration of MTD partitions\00", section ".modinfo", align 1
@cmdline = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [12 x i8] c"cmdlinepart\00", align 1
@cmdline_parsed = internal unnamed_addr global i1 false, align 4
@partitions = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"\014mtd: %s: partitioning exceeds flash size, truncating\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"\014mtd: %s: skipping zero sized partition\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\013mtd: no mtd-id\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"\013mtd: bad character after partition (%c)\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"\013mtd: partition has size 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"\013mtd: no closing %c found in partition name\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"lk\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"slc\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"\013mtd: no partitions allowed after a fill-up partition\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Partition_%03d\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file171, ptr @__UNIQUE_ID_license172, ptr @__UNIQUE_ID_mtdparts169, ptr @__UNIQUE_ID_mtdpartstype170, ptr @__exitcall_cmdline_parser_exit, ptr @__initcall__kmod_cmdlinepart__168_429_cmdline_parser_init6, ptr @__param_mtdparts, ptr @__setup_mtdpart_setup, ptr @cmdline_parser_exit], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mtdpart_setup(ptr noundef %0) #0 section ".init.text" {
  store ptr %0, ptr @cmdline, align 4
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @cmdline_parser_exit() #1 section ".exit.text" {
  tail call void @deregister_mtd_parser(ptr noundef nonnull @cmdline_parser) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deregister_mtd_parser(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cmdline_parser_init() #1 section ".init.text" {
  %1 = load ptr, ptr @mtdparts, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  store ptr %1, ptr @cmdline, align 4
  br label %4

4:                                                ; preds = %3, %0
  %5 = tail call i32 @__register_mtd_parser(ptr noundef nonnull @cmdline_parser, ptr noundef null) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @parse_cmdline_partitions(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2) #3 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 13
  %8 = load ptr, ptr %7, align 8
  %9 = load i1, ptr @cmdline_parsed, align 4
  br i1 %9, label %69, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr @cmdline, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store ptr %11, ptr %4, align 4
  store i1 true, ptr @cmdline_parsed, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %65, label %16

13:                                               ; preds = %43
  %14 = getelementptr i8, ptr %59, i32 1
  store ptr %14, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %65, label %16

16:                                               ; preds = %13, %10
  %17 = phi ptr [ %14, %13 ], [ %11, %10 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store ptr null, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !8
  %18 = call ptr @strchr(ptr noundef nonnull %17, i32 noundef 59) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i8 0, ptr %18, align 1
  br label %21

21:                                               ; preds = %20, %16
  %22 = call ptr @strchr(ptr noundef nonnull %17, i32 noundef 40) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call ptr @strrchr(ptr noundef nonnull %17, i32 noundef 58) #11
  br label %28

26:                                               ; preds = %21
  store i8 0, ptr %22, align 1
  %27 = call ptr @strrchr(ptr noundef nonnull %17, i32 noundef 58) #11
  store i8 40, ptr %22, align 1
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi ptr [ %25, %24 ], [ %27, %26 ]
  br i1 %19, label %31, label %30

30:                                               ; preds = %28
  store i8 59, ptr %18, align 1
  br label %31

31:                                               ; preds = %30, %28
  %32 = icmp eq ptr %29, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #12
  br label %66

35:                                               ; preds = %31
  %36 = ptrtoint ptr %29 to i32
  %37 = ptrtoint ptr %17 to i32
  %38 = sub i32 %36, %37
  %39 = getelementptr i8, ptr %29, i32 1
  %40 = add i32 %38, 20
  %41 = call fastcc ptr @newpart(ptr noundef %39, ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef 0, ptr noundef nonnull %5, i32 noundef %40) #11
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %67, label %43

43:                                               ; preds = %35
  %44 = add i32 %38, 1
  %45 = load ptr, ptr %5, align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = add i32 %46, 3
  %48 = and i32 %47, -4
  %49 = inttoptr i32 %48 to ptr
  store ptr %49, ptr %5, align 4
  %50 = getelementptr inbounds %struct.cmdline_mtd_partition, ptr %49, i32 0, i32 3
  store ptr %41, ptr %50, align 4
  %51 = load i32, ptr %6, align 4
  %52 = getelementptr inbounds %struct.cmdline_mtd_partition, ptr %49, i32 0, i32 2
  store i32 %51, ptr %52, align 4
  %53 = getelementptr %struct.cmdline_mtd_partition, ptr %49, i32 1
  %54 = getelementptr inbounds %struct.cmdline_mtd_partition, ptr %49, i32 0, i32 1
  store ptr %53, ptr %54, align 4
  %55 = call i32 @strlcpy(ptr noundef %53, ptr noundef nonnull %17, i32 noundef %44) #11
  %56 = load ptr, ptr @partitions, align 4
  %57 = load ptr, ptr %5, align 4
  store ptr %56, ptr %57, align 4
  %58 = load ptr, ptr %5, align 4
  store ptr %58, ptr @partitions, align 4
  %59 = load ptr, ptr %4, align 4
  %60 = load i8, ptr %59, align 1
  switch i8 %60, label %61 [
    i8 0, label %64
    i8 59, label %13
  ]

61:                                               ; preds = %43
  %62 = zext i8 %60 to i32
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %62) #12
  br label %66

64:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  br label %65

65:                                               ; preds = %64, %13, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %69

66:                                               ; preds = %61, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %157

67:                                               ; preds = %35
  %68 = ptrtoint ptr %41 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %157

69:                                               ; preds = %65, %3
  %70 = icmp ne ptr %8, null
  br label %71

71:                                               ; preds = %76, %69
  %72 = phi ptr [ @partitions, %69 ], [ %73, %76 ]
  %73 = load ptr, ptr %72, align 4
  %74 = icmp ne ptr %73, null
  %75 = select i1 %74, i1 %70, i1 false
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.cmdline_mtd_partition, ptr %73, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = call i32 @strcmp(ptr noundef %78, ptr noundef nonnull %8)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %71

81:                                               ; preds = %71
  br i1 %74, label %82, label %157

82:                                               ; preds = %81, %76
  %83 = getelementptr inbounds %struct.cmdline_mtd_partition, ptr %73, i32 0, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %148

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.cmdline_mtd_partition, ptr %73, i32 0, i32 3
  %88 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %89 = getelementptr inbounds %struct.cmdline_mtd_partition, ptr %73, i32 0, i32 1
  br label %90

90:                                               ; preds = %143, %86
  %91 = phi i64 [ 0, %86 ], [ %128, %143 ]
  %92 = phi i32 [ 0, %86 ], [ %145, %143 ]
  %93 = load ptr, ptr %87, align 4
  %94 = getelementptr %struct.mtd_partition, ptr %93, i32 %92, i32 3
  %95 = load i64, ptr %94, align 8
  %96 = icmp eq i64 %95, -1
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  store i64 %91, ptr %94, align 8
  %98 = load ptr, ptr %87, align 4
  br label %99

99:                                               ; preds = %97, %90
  %100 = phi ptr [ %98, %97 ], [ %93, %90 ]
  %101 = phi i64 [ %91, %97 ], [ %95, %90 ]
  %102 = getelementptr %struct.mtd_partition, ptr %100, i32 %92, i32 2
  %103 = load i64, ptr %102, align 8
  %104 = icmp eq i64 %103, -1
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load i64, ptr %88, align 8
  %107 = sub i64 %106, %101
  store i64 %107, ptr %102, align 8
  %108 = load ptr, ptr %87, align 4
  %109 = getelementptr %struct.mtd_partition, ptr %108, i32 %92, i32 2
  %110 = load i64, ptr %109, align 8
  br label %111

111:                                              ; preds = %105, %99
  %112 = phi i64 [ %110, %105 ], [ %103, %99 ]
  %113 = add i64 %112, %101
  %114 = load i64, ptr %88, align 8
  %115 = icmp ugt i64 %113, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %111
  %117 = load ptr, ptr %89, align 4
  %118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %117) #12
  %119 = load i64, ptr %88, align 8
  %120 = sub i64 %119, %101
  %121 = load ptr, ptr %87, align 4
  %122 = getelementptr %struct.mtd_partition, ptr %121, i32 %92, i32 2
  store i64 %120, ptr %122, align 8
  %123 = load ptr, ptr %87, align 4
  %124 = getelementptr %struct.mtd_partition, ptr %123, i32 %92, i32 2
  %125 = load i64, ptr %124, align 8
  %126 = add i64 %125, %101
  br label %127

127:                                              ; preds = %116, %111
  %128 = phi i64 [ %126, %116 ], [ %113, %111 ]
  %129 = phi i64 [ %125, %116 ], [ %112, %111 ]
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %127
  %132 = load ptr, ptr %89, align 4
  %133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %132) #12
  %134 = load i32, ptr %83, align 4
  %135 = add i32 %134, -1
  store i32 %135, ptr %83, align 4
  %136 = load ptr, ptr %87, align 4
  %137 = getelementptr %struct.mtd_partition, ptr %136, i32 %92
  %138 = add nsw i32 %92, 1
  %139 = getelementptr %struct.mtd_partition, ptr %136, i32 %138
  %140 = sub i32 %135, %92
  %141 = mul i32 %140, 40
  call void @llvm.memmove.p0.p0.i32(ptr align 8 %137, ptr align 8 %139, i32 %141, i1 false)
  %142 = add i32 %92, -1
  br label %143

143:                                              ; preds = %131, %127
  %144 = phi i32 [ %142, %131 ], [ %92, %127 ]
  %145 = add i32 %144, 1
  %146 = load i32, ptr %83, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %90, label %148

148:                                              ; preds = %143, %82
  %149 = phi i32 [ %84, %82 ], [ %146, %143 ]
  %150 = getelementptr inbounds %struct.cmdline_mtd_partition, ptr %73, i32 0, i32 3
  %151 = load ptr, ptr %150, align 4
  %152 = mul i32 %149, 40
  %153 = call ptr @kmemdup(ptr noundef %151, i32 noundef %152, i32 noundef 3264) #11
  store ptr %153, ptr %1, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %148
  %156 = load i32, ptr %83, align 4
  br label %157

157:                                              ; preds = %155, %148, %81, %67, %66
  %158 = phi i32 [ %156, %155 ], [ %68, %67 ], [ 0, %81 ], [ -12, %148 ], [ -22, %66 ]
  ret i32 %158
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @newpart(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, i32 noundef %3, ptr noundef writeonly %4, i32 noundef %5) unnamed_addr #3 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store ptr null, ptr %8, align 4, !annotation !8
  %9 = load i8, ptr %0, align 1
  %10 = icmp eq i8 %9, 45
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %0, i32 1
  store ptr %12, ptr %7, align 4
  br label %20

13:                                               ; preds = %6
  %14 = call i64 @memparse(ptr noundef %0, ptr noundef nonnull %7) #11
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %7, align 4
  br label %20

18:                                               ; preds = %13
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %116

20:                                               ; preds = %16, %11
  %21 = phi ptr [ %12, %11 ], [ %17, %16 ]
  %22 = phi i64 [ -1, %11 ], [ %14, %16 ]
  %23 = load i8, ptr %21, align 1
  %24 = icmp eq i8 %23, 64
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %21, i32 1
  store ptr %26, ptr %7, align 4
  %27 = call i64 @memparse(ptr noundef %26, ptr noundef nonnull %7) #11
  %28 = load ptr, ptr %7, align 4
  %29 = load i8, ptr %28, align 1
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i8 [ %29, %25 ], [ %23, %20 ]
  %32 = phi ptr [ %28, %25 ], [ %21, %20 ]
  %33 = phi i64 [ %27, %25 ], [ -1, %20 ]
  %34 = icmp eq i8 %31, 40
  %35 = select i1 %34, i32 41, i32 0
  br i1 %34, label %36, label %48

36:                                               ; preds = %30
  %37 = getelementptr i8, ptr %32, i32 1
  store ptr %37, ptr %7, align 4
  %38 = call ptr @strchr(ptr noundef %37, i32 noundef %35)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %35) #12
  br label %116

42:                                               ; preds = %36
  %43 = ptrtoint ptr %38 to i32
  %44 = ptrtoint ptr %37 to i32
  %45 = sub i32 %43, %44
  %46 = getelementptr i8, ptr %38, i32 1
  store ptr %46, ptr %7, align 4
  %47 = add i32 %45, 1
  br label %48

48:                                               ; preds = %42, %30
  %49 = phi ptr [ %46, %42 ], [ %32, %30 ]
  %50 = phi ptr [ %37, %42 ], [ null, %30 ]
  %51 = phi i32 [ %47, %42 ], [ 14, %30 ]
  %52 = add i32 %51, %5
  %53 = call i32 @strncmp(ptr noundef %49, ptr noundef nonnull dereferenceable(3) @.str.7, i32 noundef 2)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = getelementptr i8, ptr %49, i32 2
  store ptr %56, ptr %7, align 4
  br label %57

57:                                               ; preds = %55, %48
  %58 = phi ptr [ %56, %55 ], [ %49, %48 ]
  %59 = phi i32 [ 1024, %55 ], [ 0, %48 ]
  %60 = call i32 @strncmp(ptr noundef %58, ptr noundef nonnull dereferenceable(3) @.str.8, i32 noundef 2)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = or i32 %59, 8192
  %64 = getelementptr i8, ptr %58, i32 2
  store ptr %64, ptr %7, align 4
  br label %65

65:                                               ; preds = %62, %57
  %66 = phi ptr [ %64, %62 ], [ %58, %57 ]
  %67 = phi i32 [ %63, %62 ], [ %59, %57 ]
  %68 = call i32 @strncmp(ptr noundef %66, ptr noundef nonnull dereferenceable(4) @.str.9, i32 noundef 3)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = getelementptr i8, ptr %66, i32 3
  store ptr %71, ptr %7, align 4
  br label %72

72:                                               ; preds = %70, %65
  %73 = phi ptr [ %66, %65 ], [ %71, %70 ]
  %74 = phi i32 [ 0, %65 ], [ 16384, %70 ]
  %75 = load i8, ptr %73, align 1
  %76 = icmp eq i8 %75, 44
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = icmp eq i64 %22, -1
  br i1 %78, label %79, label %81

79:                                               ; preds = %77
  %80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br label %116

81:                                               ; preds = %77
  %82 = getelementptr i8, ptr %73, i32 1
  %83 = add i32 %3, 1
  %84 = call fastcc ptr @newpart(ptr noundef %82, ptr noundef nonnull %7, ptr noundef %2, i32 noundef %83, ptr noundef nonnull %8, i32 noundef %52)
  %85 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  br i1 %85, label %116, label %95

86:                                               ; preds = %72
  %87 = add i32 %3, 1
  store i32 %87, ptr %2, align 4
  %88 = mul i32 %87, 40
  %89 = add i32 %52, %88
  %90 = call noalias align 64 ptr @__kmalloc(i32 noundef %89, i32 noundef 3520) #13
  %91 = icmp eq ptr %90, null
  br i1 %91, label %116, label %92

92:                                               ; preds = %86
  %93 = load i32, ptr %2, align 4
  %94 = getelementptr %struct.mtd_partition, ptr %90, i32 %93
  store ptr %94, ptr %8, align 4
  br label %95

95:                                               ; preds = %92, %81
  %96 = phi ptr [ %84, %81 ], [ %90, %92 ]
  %97 = getelementptr %struct.mtd_partition, ptr %96, i32 %3
  %98 = getelementptr %struct.mtd_partition, ptr %96, i32 %3, i32 2
  store i64 %22, ptr %98, align 8
  %99 = getelementptr %struct.mtd_partition, ptr %96, i32 %3, i32 3
  store i64 %33, ptr %99, align 8
  %100 = getelementptr %struct.mtd_partition, ptr %96, i32 %3, i32 4
  store i32 %67, ptr %100, align 8
  %101 = getelementptr %struct.mtd_partition, ptr %96, i32 %3, i32 5
  store i32 %74, ptr %101, align 4
  %102 = icmp eq ptr %50, null
  %103 = load ptr, ptr %8, align 4
  br i1 %102, label %106, label %104

104:                                              ; preds = %95
  %105 = call i32 @strlcpy(ptr noundef %103, ptr noundef nonnull %50, i32 noundef %51) #11
  br label %108

106:                                              ; preds = %95
  %107 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %103, ptr noundef nonnull @.str.11, i32 noundef %3)
  br label %108

108:                                              ; preds = %106, %104
  %109 = load ptr, ptr %8, align 4
  store ptr %109, ptr %97, align 8
  %110 = load ptr, ptr %8, align 4
  %111 = getelementptr i8, ptr %110, i32 %51
  store ptr %111, ptr %8, align 4
  %112 = icmp eq ptr %4, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  store ptr %111, ptr %4, align 4
  br label %114

114:                                              ; preds = %113, %108
  %115 = load ptr, ptr %7, align 4
  store ptr %115, ptr %1, align 4
  br label %116

116:                                              ; preds = %114, %86, %81, %79, %40, %18
  %117 = phi ptr [ inttoptr (i32 -22 to ptr), %79 ], [ %96, %114 ], [ inttoptr (i32 -22 to ptr), %18 ], [ %84, %81 ], [ inttoptr (i32 -22 to ptr), %40 ], [ inttoptr (i32 -12 to ptr), %86 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  ret ptr %117
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_mtd_parser(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

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
