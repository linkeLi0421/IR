; ModuleID = '/llk/IR/arch/arm/kernel/module.c_pt.bc'
source_filename = "../arch/arm/kernel/module.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.elf32_shdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.elf32_rel = type { i32, i32 }
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
%struct.elf32_sym = type { i32, i32, i32, i8, i8, i16 }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }

@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [6 x i8] c".init\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c".ARM.extab.init\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c".ARM.exidx.init\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c".exit\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c".ARM.extab.exit\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c".ARM.exidx.exit\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"\013%s: section %u reloc %u: bad relocation sym offset\0A\00", align 1
@.str.7 = private unnamed_addr constant [81 x i8] c"\013%s: section %u reloc %u sym '%s': out of bounds relocation, offset %d size %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [82 x i8] c"\013%s: section %u reloc %u sym '%s': unsupported interworking call (ARM -> Thumb)\0A\00", align 1
@.str.9 = private unnamed_addr constant [78 x i8] c"\013%s: section %u reloc %u sym '%s': relocation %u out of range (%#lx -> %#x)\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"\013%s: unknown relocation: %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c".ARM.exidx.init.text\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c".ARM.exidx\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c".ARM.exidx.exit.text\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c".ARM.exidx.text.unlikely\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c".ARM.exidx.text.hot\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c".init.text\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c".exit.text\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c".text.unlikely\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c".text.hot\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c".pv_table\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c".alt.smp.init\00", align 1
@smp_on_up = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @module_alloc(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @pgprot_kernel, align 4
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = tail call noalias ptr @__vmalloc_node_range(i32 noundef %0, i32 noundef 1, i32 noundef -1090519040, i32 noundef -1075838976, i32 noundef 11456, i32 noundef %2, i32 noundef 0, i32 noundef -1, ptr noundef %3) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load ptr, ptr @high_memory, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = add i32 %8, 8388608
  %10 = and i32 %9, -8388608
  %11 = load i32, ptr @pgprot_kernel, align 4
  %12 = tail call noalias ptr @__vmalloc_node_range(i32 noundef %0, i32 noundef 1, i32 noundef %10, i32 noundef -8388608, i32 noundef 3264, i32 noundef %11, i32 noundef 0, i32 noundef -1, ptr noundef %3) #7
  br label %13

13:                                               ; preds = %6, %1
  %14 = phi ptr [ %12, %6 ], [ %4, %1 ]
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc_node_range(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @module_init_section(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(6) @.str, i32 noundef 5) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(16) @.str.1, i32 noundef 15) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(16) @.str.2, i32 noundef 15) #8
  %9 = icmp eq i32 %8, 0
  br label %10

10:                                               ; preds = %7, %4, %1
  %11 = phi i1 [ true, %4 ], [ true, %1 ], [ %9, %7 ]
  ret i1 %11
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @module_exit_section(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(6) @.str.3, i32 noundef 5) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(16) @.str.4, i32 noundef 15) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(16) @.str.5, i32 noundef 15) #8
  %9 = icmp eq i32 %8, 0
  br label %10

10:                                               ; preds = %7, %4, %1
  %11 = phi i1 [ true, %4 ], [ true, %1 ], [ %9, %7 ]
  ret i1 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @apply_relocate(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr %struct.elf32_shdr, ptr %0, i32 %3, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 8
  br i1 %8, label %167, label %9

9:                                                ; preds = %5
  %10 = getelementptr %struct.elf32_shdr, ptr %0, i32 %3, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr %struct.elf32_shdr, ptr %0, i32 %3, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.elf32_shdr, ptr %0, i32 %2, i32 5
  %16 = getelementptr %struct.elf32_shdr, ptr %0, i32 %2, i32 3
  %17 = getelementptr %struct.elf32_shdr, ptr %0, i32 %14, i32 5
  %18 = getelementptr %struct.elf32_shdr, ptr %0, i32 %14, i32 3
  br label %19

19:                                               ; preds = %161, %9
  %20 = phi ptr [ %12, %9 ], [ %163, %161 ]
  %21 = phi i32 [ 0, %9 ], [ %162, %161 ]
  %22 = getelementptr inbounds %struct.elf32_rel, ptr %20, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %23, 8
  %25 = load i32, ptr %15, align 4
  %26 = lshr i32 %25, 4
  %27 = icmp ugt i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.module, ptr %4, i32 0, i32 2
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %29, i32 noundef %3, i32 noundef %21) #9
  br label %167

31:                                               ; preds = %19
  %32 = load i32, ptr %16, align 4
  %33 = inttoptr i32 %32 to ptr
  %34 = getelementptr %struct.elf32_sym, ptr %33, i32 %24
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %20, align 4
  %37 = load i32, ptr %17, align 4
  %38 = add i32 %37, -4
  %39 = icmp ugt i32 %36, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = getelementptr i8, ptr %1, i32 %35
  %42 = getelementptr inbounds %struct.module, ptr %4, i32 0, i32 2
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %42, i32 noundef %3, i32 noundef %21, ptr noundef %41, i32 noundef %36, i32 noundef %37) #9
  br label %167

44:                                               ; preds = %31
  %45 = load i32, ptr %18, align 4
  %46 = add i32 %45, %36
  %47 = trunc i32 %23 to i8
  switch i8 %47, label %157 [
    i8 0, label %161
    i8 2, label %48
    i8 38, label %48
    i8 1, label %54
    i8 28, label %54
    i8 29, label %54
    i8 40, label %99
    i8 42, label %104
    i8 3, label %123
    i8 43, label %130
    i8 44, label %130
    i8 45, label %130
    i8 46, label %130
  ]

48:                                               ; preds = %44, %44
  %49 = getelementptr %struct.elf32_sym, ptr %33, i32 %24, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = inttoptr i32 %46 to ptr
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, %50
  store i32 %53, ptr %51, align 4
  br label %161

54:                                               ; preds = %44, %44, %44
  %55 = getelementptr %struct.elf32_sym, ptr %33, i32 %24, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 3
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = getelementptr i8, ptr %1, i32 %35
  %61 = getelementptr inbounds %struct.module, ptr %4, i32 0, i32 2
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %61, i32 noundef %3, i32 noundef %21, ptr noundef %60) #9
  br label %167

63:                                               ; preds = %54
  %64 = inttoptr i32 %46 to ptr
  %65 = load i32, ptr %64, align 4
  %66 = shl i32 %65, 2
  %67 = and i32 %66, 67108860
  %68 = and i32 %65, 8388608
  %69 = icmp eq i32 %68, 0
  %70 = or i32 %66, -67108864
  %71 = select i1 %69, i32 %67, i32 %70
  %72 = sub i32 %56, %46
  %73 = add i32 %71, %72
  %74 = add i32 %73, -33554432
  %75 = icmp ult i32 %74, -67108863
  br i1 %75, label %76, label %92

76:                                               ; preds = %63
  %77 = add i32 %56, 8
  %78 = add i32 %77, %71
  %79 = tail call i32 @get_module_plt(ptr noundef %4, i32 noundef %46, i32 noundef %78) #8
  %80 = sub i32 -8, %46
  %81 = add i32 %80, %79
  %82 = add i32 %81, -33554432
  %83 = icmp ult i32 %82, -67108863
  br i1 %83, label %84, label %92

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.elf32_rel, ptr %20, i32 0, i32 1
  %86 = getelementptr i8, ptr %1, i32 %35
  %87 = getelementptr inbounds %struct.module, ptr %4, i32 0, i32 2
  %88 = load i32, ptr %85, align 4
  %89 = and i32 %88, 255
  %90 = load i32, ptr %55, align 4
  %91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %87, i32 noundef %3, i32 noundef %21, ptr noundef %86, i32 noundef %89, i32 noundef %46, i32 noundef %90) #9
  br label %167

92:                                               ; preds = %76, %63
  %93 = phi i32 [ %81, %76 ], [ %73, %63 ]
  %94 = lshr i32 %93, 2
  %95 = and i32 %94, 16777215
  %96 = load i32, ptr %64, align 4
  %97 = and i32 %96, -16777216
  %98 = or i32 %97, %95
  store i32 %98, ptr %64, align 4
  br label %161

99:                                               ; preds = %44
  %100 = inttoptr i32 %46 to ptr
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, -268435441
  %103 = or i32 %102, 27324416
  store i32 %103, ptr %100, align 4
  br label %161

104:                                              ; preds = %44
  %105 = inttoptr i32 %46 to ptr
  %106 = load i32, ptr %105, align 4
  %107 = shl i32 %106, 1
  %108 = ashr exact i32 %107, 1
  %109 = getelementptr %struct.elf32_sym, ptr %33, i32 %24, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = sub i32 %110, %46
  %112 = add i32 %108, %111
  %113 = add i32 %112, -1073741824
  %114 = icmp sgt i32 %113, -1
  br i1 %114, label %115, label %119

115:                                              ; preds = %104
  %116 = getelementptr i8, ptr %1, i32 %35
  %117 = getelementptr inbounds %struct.module, ptr %4, i32 0, i32 2
  %118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %117, i32 noundef %3, i32 noundef %21, ptr noundef %116, i32 noundef 42, i32 noundef %46, i32 noundef %110) #9
  br label %167

119:                                              ; preds = %104
  %120 = and i32 %106, -2147483648
  %121 = and i32 %112, 2147483647
  %122 = or i32 %121, %120
  store i32 %122, ptr %105, align 4
  br label %161

123:                                              ; preds = %44
  %124 = getelementptr %struct.elf32_sym, ptr %33, i32 %24, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = sub i32 %125, %46
  %127 = inttoptr i32 %46 to ptr
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %126, %128
  store i32 %129, ptr %127, align 4
  br label %161

130:                                              ; preds = %44, %44, %44, %44
  %131 = inttoptr i32 %46 to ptr
  %132 = load i32, ptr %131, align 4
  %133 = lshr i32 %132, 4
  %134 = and i32 %133, 61440
  %135 = and i32 %132, 4095
  %136 = or i32 %134, %135
  %137 = shl nuw i32 %136, 16
  %138 = ashr exact i32 %137, 16
  %139 = getelementptr %struct.elf32_sym, ptr %33, i32 %24, i32 1
  %140 = load i32, ptr %139, align 4
  %141 = and i32 %23, 255
  %142 = add nsw i32 %141, -45
  %143 = icmp ult i32 %142, 2
  %144 = select i1 %143, i32 %46, i32 0
  %145 = sub i32 %140, %144
  %146 = add i32 %145, %138
  switch i8 %47, label %149 [
    i8 44, label %147
    i8 46, label %147
  ]

147:                                              ; preds = %130, %130
  %148 = ashr i32 %146, 16
  br label %149

149:                                              ; preds = %147, %130
  %150 = phi i32 [ %148, %147 ], [ %146, %130 ]
  %151 = and i32 %132, -987136
  %152 = shl i32 %150, 4
  %153 = and i32 %152, 983040
  %154 = and i32 %150, 4095
  %155 = or i32 %154, %151
  %156 = or i32 %155, %153
  store i32 %156, ptr %131, align 4
  br label %161

157:                                              ; preds = %44
  %158 = and i32 %23, 255
  %159 = getelementptr inbounds %struct.module, ptr %4, i32 0, i32 2
  %160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %159, i32 noundef %158) #9
  br label %167

161:                                              ; preds = %149, %123, %119, %99, %92, %48, %44
  %162 = add nuw nsw i32 %21, 1
  %163 = getelementptr %struct.elf32_rel, ptr %20, i32 1
  %164 = load i32, ptr %6, align 4
  %165 = lshr i32 %164, 3
  %166 = icmp ult i32 %162, %165
  br i1 %166, label %19, label %167

167:                                              ; preds = %161, %157, %115, %84, %59, %40, %28, %5
  %168 = phi i32 [ -8, %157 ], [ -8, %115 ], [ -8, %84 ], [ -8, %59 ], [ -8, %40 ], [ -8, %28 ], [ 0, %5 ], [ 0, %161 ]
  ret i32 %168
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_module_plt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @module_finalize(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.elf32_hdr, ptr %0, i32 0, i32 13
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = getelementptr %struct.elf32_shdr, ptr %1, i32 %6, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 %8
  %10 = getelementptr inbounds %struct.elf32_hdr, ptr %0, i32 0, i32 12
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr %struct.elf32_shdr, ptr %1, i32 %12
  %14 = icmp ugt ptr %13, %1
  br i1 %14, label %19, label %152

15:                                               ; preds = %68
  %16 = icmp eq ptr %69, null
  %17 = icmp eq ptr %70, null
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %92, label %81

19:                                               ; preds = %68, %3
  %20 = phi ptr [ %69, %68 ], [ null, %3 ]
  %21 = phi ptr [ %70, %68 ], [ null, %3 ]
  %22 = phi ptr [ %71, %68 ], [ null, %3 ]
  %23 = phi ptr [ %72, %68 ], [ null, %3 ]
  %24 = phi ptr [ %73, %68 ], [ null, %3 ]
  %25 = phi ptr [ %74, %68 ], [ null, %3 ]
  %26 = phi ptr [ %75, %68 ], [ null, %3 ]
  %27 = phi ptr [ %76, %68 ], [ null, %3 ]
  %28 = phi ptr [ %77, %68 ], [ null, %3 ]
  %29 = phi ptr [ %78, %68 ], [ null, %3 ]
  %30 = phi ptr [ %79, %68 ], [ %1, %3 ]
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %9, i32 %31
  %33 = getelementptr inbounds %struct.elf32_shdr, ptr %30, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %68, label %37

37:                                               ; preds = %19
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(21) @.str.11, ptr noundef %32)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %68, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.12, ptr noundef %32)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %68, label %43

43:                                               ; preds = %40
  %44 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(21) @.str.13, ptr noundef %32)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %68, label %46

46:                                               ; preds = %43
  %47 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(25) @.str.14, ptr noundef %32)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %68, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(20) @.str.15, ptr noundef %32)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %68, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.16, ptr noundef %32)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %52
  %56 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.17, ptr noundef %32)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %55
  %59 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.18, ptr noundef %32)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(15) @.str.19, ptr noundef %32)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.20, ptr noundef %32)
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, ptr %30, ptr %27
  br label %68

68:                                               ; preds = %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %19
  %69 = phi ptr [ %20, %19 ], [ %30, %37 ], [ %20, %40 ], [ %20, %43 ], [ %20, %46 ], [ %20, %49 ], [ %20, %52 ], [ %20, %55 ], [ %20, %58 ], [ %20, %61 ], [ %20, %64 ]
  %70 = phi ptr [ %21, %19 ], [ %21, %37 ], [ %21, %40 ], [ %21, %43 ], [ %21, %46 ], [ %21, %49 ], [ %30, %52 ], [ %21, %55 ], [ %21, %58 ], [ %21, %61 ], [ %21, %64 ]
  %71 = phi ptr [ %22, %19 ], [ %22, %37 ], [ %30, %40 ], [ %22, %43 ], [ %22, %46 ], [ %22, %49 ], [ %22, %52 ], [ %22, %55 ], [ %22, %58 ], [ %22, %61 ], [ %22, %64 ]
  %72 = phi ptr [ %23, %19 ], [ %23, %37 ], [ %23, %40 ], [ %23, %43 ], [ %23, %46 ], [ %23, %49 ], [ %23, %52 ], [ %30, %55 ], [ %23, %58 ], [ %23, %61 ], [ %23, %64 ]
  %73 = phi ptr [ %24, %19 ], [ %24, %37 ], [ %24, %40 ], [ %30, %43 ], [ %24, %46 ], [ %24, %49 ], [ %24, %52 ], [ %24, %55 ], [ %24, %58 ], [ %24, %61 ], [ %24, %64 ]
  %74 = phi ptr [ %25, %19 ], [ %25, %37 ], [ %25, %40 ], [ %25, %43 ], [ %25, %46 ], [ %25, %49 ], [ %25, %52 ], [ %25, %55 ], [ %30, %58 ], [ %25, %61 ], [ %25, %64 ]
  %75 = phi ptr [ %26, %19 ], [ %26, %37 ], [ %26, %40 ], [ %26, %43 ], [ %26, %46 ], [ %30, %49 ], [ %26, %52 ], [ %26, %55 ], [ %26, %58 ], [ %26, %61 ], [ %26, %64 ]
  %76 = phi ptr [ %27, %19 ], [ %27, %37 ], [ %27, %40 ], [ %27, %43 ], [ %27, %46 ], [ %27, %49 ], [ %27, %52 ], [ %27, %55 ], [ %27, %58 ], [ %27, %61 ], [ %67, %64 ]
  %77 = phi ptr [ %28, %19 ], [ %28, %37 ], [ %28, %40 ], [ %28, %43 ], [ %30, %46 ], [ %28, %49 ], [ %28, %52 ], [ %28, %55 ], [ %28, %58 ], [ %28, %61 ], [ %28, %64 ]
  %78 = phi ptr [ %29, %19 ], [ %29, %37 ], [ %29, %40 ], [ %29, %43 ], [ %29, %46 ], [ %29, %49 ], [ %29, %52 ], [ %29, %55 ], [ %29, %58 ], [ %30, %61 ], [ %29, %64 ]
  %79 = getelementptr %struct.elf32_shdr, ptr %30, i32 1
  %80 = icmp ult ptr %79, %13
  br i1 %80, label %19, label %15

81:                                               ; preds = %15
  %82 = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 25
  %83 = getelementptr inbounds %struct.elf32_shdr, ptr %69, i32 0, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.elf32_shdr, ptr %69, i32 0, i32 5
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.elf32_shdr, ptr %70, i32 0, i32 3
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.elf32_shdr, ptr %70, i32 0, i32 5
  %90 = load i32, ptr %89, align 4
  %91 = tail call ptr @unwind_table_add(i32 noundef %84, i32 noundef %86, i32 noundef %88, i32 noundef %90) #8
  store ptr %91, ptr %82, align 4
  br label %92

92:                                               ; preds = %81, %15
  %93 = icmp eq ptr %71, null
  %94 = icmp eq ptr %72, null
  %95 = select i1 %93, i1 true, i1 %94
  br i1 %95, label %107, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.elf32_shdr, ptr %71, i32 0, i32 3
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr inbounds %struct.elf32_shdr, ptr %71, i32 0, i32 5
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr inbounds %struct.elf32_shdr, ptr %72, i32 0, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr inbounds %struct.elf32_shdr, ptr %72, i32 0, i32 5
  %104 = load i32, ptr %103, align 4
  %105 = tail call ptr @unwind_table_add(i32 noundef %98, i32 noundef %100, i32 noundef %102, i32 noundef %104) #8
  %106 = getelementptr %struct.module, ptr %2, i32 0, i32 25, i32 0, i32 2
  store ptr %105, ptr %106, align 4
  br label %107

107:                                              ; preds = %96, %92
  %108 = icmp eq ptr %73, null
  %109 = icmp eq ptr %74, null
  %110 = select i1 %108, i1 true, i1 %109
  br i1 %110, label %122, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.elf32_shdr, ptr %73, i32 0, i32 3
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr inbounds %struct.elf32_shdr, ptr %73, i32 0, i32 5
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.elf32_shdr, ptr %74, i32 0, i32 3
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr inbounds %struct.elf32_shdr, ptr %74, i32 0, i32 5
  %119 = load i32, ptr %118, align 4
  %120 = tail call ptr @unwind_table_add(i32 noundef %113, i32 noundef %115, i32 noundef %117, i32 noundef %119) #8
  %121 = getelementptr %struct.module, ptr %2, i32 0, i32 25, i32 0, i32 3
  store ptr %120, ptr %121, align 4
  br label %122

122:                                              ; preds = %111, %107
  %123 = icmp eq ptr %75, null
  %124 = icmp eq ptr %76, null
  %125 = select i1 %123, i1 true, i1 %124
  br i1 %125, label %137, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.elf32_shdr, ptr %75, i32 0, i32 3
  %128 = load i32, ptr %127, align 4
  %129 = getelementptr inbounds %struct.elf32_shdr, ptr %75, i32 0, i32 5
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr inbounds %struct.elf32_shdr, ptr %76, i32 0, i32 3
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr inbounds %struct.elf32_shdr, ptr %76, i32 0, i32 5
  %134 = load i32, ptr %133, align 4
  %135 = tail call ptr @unwind_table_add(i32 noundef %128, i32 noundef %130, i32 noundef %132, i32 noundef %134) #8
  %136 = getelementptr %struct.module, ptr %2, i32 0, i32 25, i32 0, i32 5
  store ptr %135, ptr %136, align 4
  br label %137

137:                                              ; preds = %126, %122
  %138 = icmp eq ptr %77, null
  %139 = icmp eq ptr %78, null
  %140 = select i1 %138, i1 true, i1 %139
  br i1 %140, label %152, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.elf32_shdr, ptr %77, i32 0, i32 3
  %143 = load i32, ptr %142, align 4
  %144 = getelementptr inbounds %struct.elf32_shdr, ptr %77, i32 0, i32 5
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr inbounds %struct.elf32_shdr, ptr %78, i32 0, i32 3
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr inbounds %struct.elf32_shdr, ptr %78, i32 0, i32 5
  %149 = load i32, ptr %148, align 4
  %150 = tail call ptr @unwind_table_add(i32 noundef %143, i32 noundef %145, i32 noundef %147, i32 noundef %149) #8
  %151 = getelementptr %struct.module, ptr %2, i32 0, i32 25, i32 0, i32 6
  store ptr %150, ptr %151, align 4
  br label %152

152:                                              ; preds = %141, %137, %3
  %153 = load i16, ptr %4, align 2
  %154 = zext i16 %153 to i32
  %155 = getelementptr %struct.elf32_shdr, ptr %1, i32 %154, i32 4
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr i8, ptr %0, i32 %156
  %158 = load i16, ptr %10, align 4
  %159 = zext i16 %158 to i32
  %160 = getelementptr %struct.elf32_shdr, ptr %1, i32 %159
  %161 = icmp ugt ptr %160, %1
  br i1 %161, label %162, label %185

162:                                              ; preds = %168, %152
  %163 = phi ptr [ %169, %168 ], [ %1, %152 ]
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr i8, ptr %157, i32 %164
  %166 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.21, ptr noundef %165) #8
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %162
  %169 = getelementptr %struct.elf32_shdr, ptr %163, i32 1
  %170 = icmp ult ptr %169, %160
  br i1 %170, label %162, label %185

171:                                              ; preds = %162
  %172 = icmp eq ptr %163, null
  br i1 %172, label %185, label %173

173:                                              ; preds = %171
  %174 = getelementptr inbounds %struct.elf32_shdr, ptr %163, i32 0, i32 3
  %175 = load i32, ptr %174, align 4
  %176 = inttoptr i32 %175 to ptr
  %177 = getelementptr inbounds %struct.elf32_shdr, ptr %163, i32 0, i32 5
  %178 = load i32, ptr %177, align 4
  tail call void @fixup_pv_table(ptr noundef %176, i32 noundef %178) #8
  %179 = load i16, ptr %4, align 2
  %180 = zext i16 %179 to i32
  %181 = getelementptr %struct.elf32_shdr, ptr %1, i32 %180, i32 4
  %182 = load i32, ptr %181, align 4
  %183 = load i16, ptr %10, align 4
  %184 = zext i16 %183 to i32
  br label %185

185:                                              ; preds = %173, %171, %168, %152
  %186 = phi i32 [ %159, %152 ], [ %184, %173 ], [ %159, %171 ], [ %159, %168 ]
  %187 = phi i32 [ %156, %152 ], [ %182, %173 ], [ %156, %171 ], [ %156, %168 ]
  %188 = getelementptr i8, ptr %0, i32 %187
  %189 = getelementptr %struct.elf32_shdr, ptr %1, i32 %186
  %190 = icmp ugt ptr %189, %1
  br i1 %190, label %191, label %211

191:                                              ; preds = %197, %185
  %192 = phi ptr [ %198, %197 ], [ %1, %185 ]
  %193 = load i32, ptr %192, align 4
  %194 = getelementptr i8, ptr %188, i32 %193
  %195 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(14) @.str.22, ptr noundef %194) #8
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %191
  %198 = getelementptr %struct.elf32_shdr, ptr %192, i32 1
  %199 = icmp ult ptr %198, %189
  br i1 %199, label %191, label %211

200:                                              ; preds = %191
  %201 = icmp eq ptr %192, null
  %202 = load i32, ptr @smp_on_up, align 4
  %203 = icmp ne i32 %202, 0
  %204 = select i1 %201, i1 true, i1 %203
  br i1 %204, label %211, label %205

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.elf32_shdr, ptr %192, i32 0, i32 3
  %207 = load i32, ptr %206, align 4
  %208 = inttoptr i32 %207 to ptr
  %209 = getelementptr inbounds %struct.elf32_shdr, ptr %192, i32 0, i32 5
  %210 = load i32, ptr %209, align 4
  tail call void @fixup_smp(ptr noundef %208, i32 noundef %210) #8
  br label %211

211:                                              ; preds = %205, %200, %197, %185
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @unwind_table_add(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fixup_pv_table(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fixup_smp(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @module_arch_cleanup(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 4
  tail call void @unwind_table_del(ptr noundef %3) #8
  store ptr null, ptr %2, align 4
  %4 = getelementptr %struct.module, ptr %0, i32 0, i32 25, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @unwind_table_del(ptr noundef %5) #8
  store ptr null, ptr %4, align 4
  %6 = getelementptr %struct.module, ptr %0, i32 0, i32 25, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @unwind_table_del(ptr noundef %7) #8
  store ptr null, ptr %6, align 4
  %8 = getelementptr %struct.module, ptr %0, i32 0, i32 25, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void @unwind_table_del(ptr noundef %9) #8
  store ptr null, ptr %8, align 4
  %10 = getelementptr %struct.module, ptr %0, i32 0, i32 25, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  tail call void @unwind_table_del(ptr noundef %11) #8
  store ptr null, ptr %10, align 4
  %12 = getelementptr %struct.module, ptr %0, i32 0, i32 25, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  tail call void @unwind_table_del(ptr noundef %13) #8
  store ptr null, ptr %12, align 4
  %14 = getelementptr %struct.module, ptr %0, i32 0, i32 25, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  tail call void @unwind_table_del(ptr noundef %15) #8
  store ptr null, ptr %14, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unwind_table_del(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @module_arch_freeing_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 32
  tail call void @unwind_table_del(ptr noundef %3) #8
  store ptr null, ptr %2, align 32
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind allocsize(0) }
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
