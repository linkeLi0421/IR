; ModuleID = '/llk/IR/drivers/mtd/parsers/ofpart_core.c_pt.bc'
source_filename = "../drivers/mtd/parsers/ofpart_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mtd_part_parser = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fixed_partitions_quirks = type { ptr }
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
%struct.mtd_partition = type { ptr, ptr, i64, i64, i32, i32, ptr }
%struct.anon.6 = type { i32, i32 }

@ofpart_parser = internal global %struct.mtd_part_parser { %struct.list_head zeroinitializer, ptr null, ptr @.str, ptr @parse_ofpart_match_table, ptr @parse_fixed_partitions, ptr null }, align 4
@ofoldpart_parser = internal global %struct.mtd_part_parser { %struct.list_head zeroinitializer, ptr null, ptr @.str.10, ptr null, ptr @parse_ofoldpart_partitions, ptr null }, align 4
@__initcall__kmod_ofpart__168_261_ofpart_parser_init6 = internal global ptr @ofpart_parser_init, section ".initcall6.init", align 4
@__exitcall_ofpart_parser_exit = internal global ptr @ofpart_parser_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file169 = internal constant [39 x i8] c"ofpart.file=drivers/mtd/parsers/ofpart\00", section ".modinfo", align 1
@__UNIQUE_ID_license170 = internal constant [19 x i8] c"ofpart.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description171 = internal constant [74 x i8] c"ofpart.description=Parser for MTD partitioning information in device tree\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [40 x i8] c"ofpart.author=Vitaly Wool, David Gibson\00", section ".modinfo", align 1
@__UNIQUE_ID_alias173 = internal constant [30 x i8] c"ofpart.alias=fixed-partitions\00", section ".modinfo", align 1
@__UNIQUE_ID_alias174 = internal constant [23 x i8] c"ofpart.alias=ofoldpart\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [17 x i8] c"fixed-partitions\00", align 1
@parse_ofpart_match_table = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fixed-partitions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4908-partitions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm4908_partitions_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"linksys,ns-partitions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @linksys_ns_partitions_quirks }, %struct.of_device_id zeroinitializer], align 4
@bcm4908_partitions_quirks = internal global %struct.fixed_partitions_quirks { ptr @bcm4908_partitions_post_parse }, align 4
@linksys_ns_partitions_quirks = internal global %struct.fixed_partitions_quirks { ptr @linksys_ns_partitions_post_parse }, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"partitions\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"slc-mode\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"\013%s: error parsing ofpart partition %pOF (%pOF)\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"ofoldpart\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"\014Device tree uses obsolete partition map binding: %pOF\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"partition-names\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"unnamed\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias173, ptr @__UNIQUE_ID_alias174, ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file169, ptr @__UNIQUE_ID_license170, ptr @__exitcall_ofpart_parser_exit, ptr @__initcall__kmod_ofpart__168_261_ofpart_parser_init6, ptr @ofpart_parser_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ofpart_parser_exit() #0 section ".exit.text" {
  tail call void @deregister_mtd_parser(ptr noundef nonnull @ofpart_parser) #9
  tail call void @deregister_mtd_parser(ptr noundef nonnull @ofoldpart_parser) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deregister_mtd_parser(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ofpart_parser_init() #0 section ".init.text" {
  %1 = tail call i32 @__register_mtd_parser(ptr noundef nonnull @ofpart_parser, ptr noundef null) #9
  %2 = tail call i32 @__register_mtd_parser(ptr noundef nonnull @ofoldpart_parser, ptr noundef null) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @parse_fixed_partitions(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %167, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 62
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %6, ptr noundef nonnull @.str.1) #9
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr %6, ptr %13
  %16 = xor i1 %14, true
  br label %17

17:                                               ; preds = %12, %8
  %18 = phi ptr [ %15, %12 ], [ %6, %8 ]
  %19 = phi i1 [ %16, %12 ], [ true, %8 ]
  %20 = tail call ptr @of_match_node(ptr noundef nonnull @parse_ofpart_match_table, ptr noundef nonnull %18) #9
  %21 = xor i1 %19, true
  %22 = icmp ne ptr %20, null
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %24, label %167

24:                                               ; preds = %17
  br i1 %22, label %25, label %28

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.of_device_id, ptr %20, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %24
  %29 = phi ptr [ %27, %25 ], [ null, %24 ]
  %30 = tail call ptr @of_get_next_child(ptr noundef nonnull %18, ptr noundef null) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %167, label %32

32:                                               ; preds = %40, %28
  %33 = phi i32 [ %41, %40 ], [ 0, %28 ]
  %34 = phi ptr [ %42, %40 ], [ %30, %28 ]
  br i1 %19, label %38, label %35

35:                                               ; preds = %32
  %36 = tail call ptr @of_get_property(ptr noundef nonnull %34, ptr noundef nonnull @.str.9, ptr noundef null) #9
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35, %32
  %39 = add i32 %33, 1
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi i32 [ %39, %38 ], [ %33, %35 ]
  %42 = tail call ptr @of_get_next_child(ptr noundef %18, ptr noundef nonnull %34) #9
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %32

44:                                               ; preds = %40
  %45 = icmp eq i32 %41, 0
  br i1 %45, label %167, label %46

46:                                               ; preds = %44
  %47 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %41, i32 40) #9
  %48 = extractvalue { i32, i1 } %47, 1
  br i1 %48, label %167, label %49, !prof !8

49:                                               ; preds = %46
  %50 = extractvalue { i32, i1 } %47, 0
  %51 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %50, i32 noundef 3520) #10
  %52 = icmp eq ptr %51, null
  br i1 %52, label %167, label %53

53:                                               ; preds = %49
  %54 = tail call ptr @of_get_next_child(ptr noundef %18, ptr noundef null) #9
  %55 = icmp eq ptr %54, null
  br i1 %55, label %151, label %56

56:                                               ; preds = %144, %53
  %57 = phi i32 [ %146, %144 ], [ 0, %53 ]
  %58 = phi i32 [ %145, %144 ], [ %41, %53 ]
  %59 = phi ptr [ %147, %144 ], [ %54, %53 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  br i1 %19, label %63, label %60

60:                                               ; preds = %56
  %61 = call ptr @of_get_property(ptr noundef nonnull %59, ptr noundef nonnull @.str.9, ptr noundef null) #9
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %144

63:                                               ; preds = %56
  %64 = call ptr @of_get_property(ptr noundef nonnull %59, ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #9
  %65 = icmp eq ptr %64, null
  br i1 %65, label %160, label %71

66:                                               ; preds = %60
  %67 = call ptr @of_get_property(ptr noundef nonnull %59, ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #9
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = add i32 %58, -1
  br label %144

71:                                               ; preds = %66, %63
  %72 = phi ptr [ %67, %66 ], [ %64, %63 ]
  %73 = call i32 @of_n_addr_cells(ptr noundef nonnull %59) #9
  %74 = call i32 @of_n_size_cells(ptr noundef nonnull %59) #9
  %75 = load i32, ptr %4, align 4
  %76 = sdiv i32 %75, 4
  %77 = add i32 %74, %73
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %160

79:                                               ; preds = %71
  %80 = icmp eq i32 %73, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %81, %79
  %82 = phi i64 [ %90, %81 ], [ 0, %79 ]
  %83 = phi i32 [ %85, %81 ], [ %73, %79 ]
  %84 = phi ptr [ %91, %81 ], [ %72, %79 ]
  %85 = add i32 %83, -1
  %86 = shl i64 %82, 32
  %87 = load i32, ptr %84, align 4
  %88 = call i32 @llvm.bswap.i32(i32 %87) #9
  %89 = zext i32 %88 to i64
  %90 = or i64 %86, %89
  %91 = getelementptr i32, ptr %84, i32 1
  %92 = icmp eq i32 %85, 0
  br i1 %92, label %93, label %81

93:                                               ; preds = %81, %79
  %94 = phi i64 [ 0, %79 ], [ %90, %81 ]
  %95 = getelementptr %struct.mtd_partition, ptr %51, i32 %57
  %96 = getelementptr %struct.mtd_partition, ptr %51, i32 %57, i32 3
  store i64 %94, ptr %96, align 8
  %97 = icmp eq i32 %74, 0
  br i1 %97, label %112, label %98

98:                                               ; preds = %93
  %99 = getelementptr i32, ptr %72, i32 %73
  br label %100

100:                                              ; preds = %100, %98
  %101 = phi i64 [ %109, %100 ], [ 0, %98 ]
  %102 = phi i32 [ %104, %100 ], [ %74, %98 ]
  %103 = phi ptr [ %110, %100 ], [ %99, %98 ]
  %104 = add i32 %102, -1
  %105 = shl i64 %101, 32
  %106 = load i32, ptr %103, align 4
  %107 = call i32 @llvm.bswap.i32(i32 %106) #9
  %108 = zext i32 %107 to i64
  %109 = or i64 %105, %108
  %110 = getelementptr i32, ptr %103, i32 1
  %111 = icmp eq i32 %104, 0
  br i1 %111, label %112, label %100

112:                                              ; preds = %100, %93
  %113 = phi i64 [ 0, %93 ], [ %109, %100 ]
  %114 = getelementptr %struct.mtd_partition, ptr %51, i32 %57, i32 2
  store i64 %113, ptr %114, align 8
  %115 = getelementptr %struct.mtd_partition, ptr %51, i32 %57, i32 6
  store ptr %59, ptr %115, align 8
  %116 = call ptr @of_get_property(ptr noundef nonnull %59, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #9
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = call ptr @of_get_property(ptr noundef nonnull %59, ptr noundef nonnull @.str.4, ptr noundef nonnull %4) #9
  br label %120

120:                                              ; preds = %118, %112
  %121 = phi ptr [ %116, %112 ], [ %119, %118 ]
  store ptr %121, ptr %95, align 8
  %122 = call ptr @of_get_property(ptr noundef nonnull %59, ptr noundef nonnull @.str.5, ptr noundef nonnull %4) #9
  %123 = icmp eq ptr %122, null
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = getelementptr %struct.mtd_partition, ptr %51, i32 %57, i32 4
  %126 = load i32, ptr %125, align 8
  %127 = or i32 %126, 1024
  store i32 %127, ptr %125, align 8
  br label %128

128:                                              ; preds = %124, %120
  %129 = call ptr @of_get_property(ptr noundef nonnull %59, ptr noundef nonnull @.str.6, ptr noundef nonnull %4) #9
  %130 = icmp eq ptr %129, null
  br i1 %130, label %135, label %131

131:                                              ; preds = %128
  %132 = getelementptr %struct.mtd_partition, ptr %51, i32 %57, i32 4
  %133 = load i32, ptr %132, align 8
  %134 = or i32 %133, 8192
  store i32 %134, ptr %132, align 8
  br label %135

135:                                              ; preds = %131, %128
  %136 = call ptr @of_find_property(ptr noundef nonnull %59, ptr noundef nonnull @.str.7, ptr noundef null) #9
  %137 = icmp eq ptr %136, null
  br i1 %137, label %142, label %138

138:                                              ; preds = %135
  %139 = getelementptr %struct.mtd_partition, ptr %51, i32 %57, i32 5
  %140 = load i32, ptr %139, align 4
  %141 = or i32 %140, 16384
  store i32 %141, ptr %139, align 4
  br label %142

142:                                              ; preds = %138, %135
  %143 = add i32 %57, 1
  br label %144

144:                                              ; preds = %142, %69, %60
  %145 = phi i32 [ %58, %60 ], [ %58, %142 ], [ %70, %69 ]
  %146 = phi i32 [ %57, %60 ], [ %143, %142 ], [ %57, %69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %147 = call ptr @of_get_next_child(ptr noundef %18, ptr noundef nonnull %59) #9
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %56

149:                                              ; preds = %144
  %150 = icmp eq i32 %145, 0
  br i1 %150, label %164, label %151

151:                                              ; preds = %149, %53
  %152 = phi i32 [ %145, %149 ], [ %41, %53 ]
  %153 = icmp eq ptr %29, null
  br i1 %153, label %159, label %154

154:                                              ; preds = %151
  %155 = load ptr, ptr %29, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %159, label %157

157:                                              ; preds = %154
  %158 = call i32 %155(ptr noundef %0, ptr noundef nonnull %51, i32 noundef %152) #9
  br label %159

159:                                              ; preds = %157, %154, %151
  store ptr %51, ptr %1, align 4
  br label %167

160:                                              ; preds = %71, %63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %161 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 13
  %162 = load ptr, ptr %161, align 8
  %163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %162, ptr noundef nonnull %59, ptr noundef nonnull %6) #11
  br label %164

164:                                              ; preds = %160, %149
  %165 = phi ptr [ %59, %160 ], [ null, %149 ]
  %166 = phi i32 [ -22, %160 ], [ 0, %149 ]
  call void @of_node_put(ptr noundef %165) #9
  call void @kfree(ptr noundef nonnull %51) #9
  br label %167

167:                                              ; preds = %164, %159, %49, %46, %44, %28, %17, %3
  %168 = phi i32 [ %166, %164 ], [ %152, %159 ], [ 0, %3 ], [ 0, %17 ], [ 0, %44 ], [ -12, %49 ], [ -12, %46 ], [ 0, %28 ]
  ret i32 %168
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bcm4908_partitions_post_parse(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #3 {
  ret i32 -95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @linksys_ns_partitions_post_parse(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_n_addr_cells(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_n_size_cells(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @parse_ofoldpart_partitions(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %63, label %8

8:                                                ; preds = %3
  %9 = call ptr @of_get_property(ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef nonnull %4) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %63, label %11

11:                                               ; preds = %8
  %12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %6) #11
  %13 = load i32, ptr %4, align 4
  %14 = lshr i32 %13, 3
  %15 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 40) #9
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %63, label %17, !prof !8

17:                                               ; preds = %11
  %18 = extractvalue { i32, i1 } %15, 0
  %19 = call noalias align 64 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %63, label %21

21:                                               ; preds = %17
  %22 = call ptr @of_get_property(ptr noundef nonnull %6, ptr noundef nonnull @.str.12, ptr noundef nonnull %4) #9
  %23 = icmp ult i32 %13, 8
  br i1 %23, label %62, label %24

24:                                               ; preds = %21
  %25 = call i32 @llvm.umax.i32(i32 %14, i32 1)
  br label %26

26:                                               ; preds = %57, %24
  %27 = phi ptr [ %58, %57 ], [ %22, %24 ]
  %28 = phi ptr [ %59, %57 ], [ %9, %24 ]
  %29 = phi i32 [ %60, %57 ], [ 0, %24 ]
  %30 = load i32, ptr %28, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %32 = zext i32 %31 to i64
  %33 = getelementptr %struct.mtd_partition, ptr %19, i32 %29
  %34 = getelementptr %struct.mtd_partition, ptr %19, i32 %29, i32 3
  store i64 %32, ptr %34, align 8
  %35 = getelementptr inbounds %struct.anon.6, ptr %28, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, -16777217
  %38 = call i32 @llvm.bswap.i32(i32 %37)
  %39 = zext i32 %38 to i64
  %40 = getelementptr %struct.mtd_partition, ptr %19, i32 %29, i32 2
  store i64 %39, ptr %40, align 8
  %41 = load i32, ptr %35, align 4
  %42 = and i32 %41, 16777216
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %26
  %45 = getelementptr %struct.mtd_partition, ptr %19, i32 %29, i32 4
  store i32 1024, ptr %45, align 8
  br label %46

46:                                               ; preds = %44, %26
  %47 = icmp ne ptr %27, null
  %48 = load i32, ptr %4, align 4
  %49 = icmp sgt i32 %48, 0
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = call i32 @strlen(ptr noundef nonnull %27)
  %53 = add i32 %52, 1
  store ptr %27, ptr %33, align 8
  %54 = sub i32 %48, %53
  store i32 %54, ptr %4, align 4
  %55 = getelementptr i8, ptr %27, i32 %53
  br label %57

56:                                               ; preds = %46
  store ptr @.str.13, ptr %33, align 8
  br label %57

57:                                               ; preds = %56, %51
  %58 = phi ptr [ %55, %51 ], [ %27, %56 ]
  %59 = getelementptr %struct.anon.6, ptr %28, i32 1
  %60 = add nuw nsw i32 %29, 1
  %61 = icmp eq i32 %60, %25
  br i1 %61, label %62, label %26

62:                                               ; preds = %57, %21
  store ptr %19, ptr %1, align 4
  br label %63

63:                                               ; preds = %62, %17, %11, %8, %3
  %64 = phi i32 [ %14, %62 ], [ 0, %3 ], [ 0, %8 ], [ -12, %17 ], [ -12, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %64
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_mtd_parser(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

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
!9 = !{!"auto-init"}
