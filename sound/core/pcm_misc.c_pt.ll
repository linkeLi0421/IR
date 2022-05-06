; ModuleID = '/llk/IR/sound/core/pcm_misc.c_pt.bc'
source_filename = "../sound/core/pcm_misc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_format_signed:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_format_signed\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_format_signed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_format_unsigned:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_format_unsigned\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_format_unsigned:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_format_linear:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_format_linear\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_format_linear:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_format_little_endian:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_format_little_endian\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_format_little_endian:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_format_big_endian:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_format_big_endian\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_format_big_endian:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_format_width:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_format_width\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_format_width:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_format_physical_width:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_format_physical_width\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_format_physical_width:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_format_size:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_format_size\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_format_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_format_silence_64:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_format_silence_64\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_format_silence_64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_format_set_silence:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_format_set_silence\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_format_set_silence:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_hw_limit_rates:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_hw_limit_rates\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_hw_limit_rates:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_rate_to_rate_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_rate_to_rate_bit\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_rate_to_rate_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_rate_bit_to_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_rate_bit_to_rate\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_rate_bit_to_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_rate_mask_intersect:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_rate_mask_intersect\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_rate_mask_intersect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_rate_range_to_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_rate_range_to_bits\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_rate_range_to_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pcm_format_data = type { i8, i8, i8, i8, [8 x i8] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@pcm_formats = internal constant [53 x %struct.pcm_format_data] [%struct.pcm_format_data { i8 8, i8 8, i8 -1, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 8, i8 8, i8 -1, i8 0, [8 x i8] c"\80\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 16, i8 16, i8 1, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 16, i8 16, i8 0, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 16, i8 16, i8 1, i8 0, [8 x i8] c"\00\80\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 16, i8 16, i8 0, i8 0, [8 x i8] c"\80\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 24, i8 32, i8 1, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 24, i8 32, i8 0, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 24, i8 32, i8 1, i8 0, [8 x i8] c"\00\00\80\00\00\00\00\00" }, %struct.pcm_format_data { i8 24, i8 32, i8 0, i8 0, [8 x i8] c"\00\80\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 32, i8 32, i8 1, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 32, i8 32, i8 0, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 32, i8 32, i8 1, i8 0, [8 x i8] c"\00\00\00\80\00\00\00\00" }, %struct.pcm_format_data { i8 32, i8 32, i8 0, i8 0, [8 x i8] c"\80\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 32, i8 32, i8 1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 32, i8 32, i8 0, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 64, i8 64, i8 1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 64, i8 64, i8 0, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 32, i8 32, i8 1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 32, i8 32, i8 0, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 8, i8 8, i8 -1, i8 -1, [8 x i8] c"\7F\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 8, i8 8, i8 -1, i8 -1, [8 x i8] c"U\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 4, i8 4, i8 -1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 0, i8 0, i8 -1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 0, i8 0, i8 -1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 20, i8 32, i8 1, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 20, i8 32, i8 0, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 20, i8 32, i8 1, i8 0, [8 x i8] c"\00\00\08\00\00\00\00\00" }, %struct.pcm_format_data { i8 20, i8 32, i8 0, i8 0, [8 x i8] c"\00\08\00\00\00\00\00\00" }, %struct.pcm_format_data zeroinitializer, %struct.pcm_format_data zeroinitializer, %struct.pcm_format_data { i8 0, i8 0, i8 -1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 24, i8 24, i8 1, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 24, i8 24, i8 0, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 24, i8 24, i8 1, i8 0, [8 x i8] c"\00\00\80\00\00\00\00\00" }, %struct.pcm_format_data { i8 24, i8 24, i8 0, i8 0, [8 x i8] c"\80\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 20, i8 24, i8 1, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 20, i8 24, i8 0, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 20, i8 24, i8 1, i8 0, [8 x i8] c"\00\00\08\00\00\00\00\00" }, %struct.pcm_format_data { i8 20, i8 24, i8 0, i8 0, [8 x i8] c"\08\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 18, i8 24, i8 1, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 18, i8 24, i8 0, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 18, i8 24, i8 1, i8 0, [8 x i8] c"\00\00\02\00\00\00\00\00" }, %struct.pcm_format_data { i8 18, i8 24, i8 0, i8 0, [8 x i8] c"\02\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 3, i8 3, i8 -1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 3, i8 8, i8 -1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 5, i8 5, i8 -1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 5, i8 8, i8 -1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 8, i8 8, i8 1, i8 0, [8 x i8] c"i\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 16, i8 16, i8 1, i8 0, [8 x i8] c"ii\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 32, i8 32, i8 1, i8 0, [8 x i8] c"iiii\00\00\00\00" }, %struct.pcm_format_data { i8 16, i8 16, i8 0, i8 0, [8 x i8] c"ii\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 32, i8 32, i8 0, i8 0, [8 x i8] c"iiii\00\00\00\00" }], align 1
@__kstrtab_snd_pcm_format_signed = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_format_signed = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_format_signed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_format_signed to i32), ptr @__kstrtab_snd_pcm_format_signed, ptr @__kstrtabns_snd_pcm_format_signed }, section "___ksymtab+snd_pcm_format_signed", align 4
@__kstrtab_snd_pcm_format_unsigned = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_format_unsigned = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_format_unsigned = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_format_unsigned to i32), ptr @__kstrtab_snd_pcm_format_unsigned, ptr @__kstrtabns_snd_pcm_format_unsigned }, section "___ksymtab+snd_pcm_format_unsigned", align 4
@__kstrtab_snd_pcm_format_linear = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_format_linear = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_format_linear = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_format_linear to i32), ptr @__kstrtab_snd_pcm_format_linear, ptr @__kstrtabns_snd_pcm_format_linear }, section "___ksymtab+snd_pcm_format_linear", align 4
@__kstrtab_snd_pcm_format_little_endian = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_format_little_endian = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_format_little_endian = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_format_little_endian to i32), ptr @__kstrtab_snd_pcm_format_little_endian, ptr @__kstrtabns_snd_pcm_format_little_endian }, section "___ksymtab+snd_pcm_format_little_endian", align 4
@__kstrtab_snd_pcm_format_big_endian = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_format_big_endian = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_format_big_endian = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_format_big_endian to i32), ptr @__kstrtab_snd_pcm_format_big_endian, ptr @__kstrtabns_snd_pcm_format_big_endian }, section "___ksymtab+snd_pcm_format_big_endian", align 4
@__kstrtab_snd_pcm_format_width = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_format_width = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_format_width = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_format_width to i32), ptr @__kstrtab_snd_pcm_format_width, ptr @__kstrtabns_snd_pcm_format_width }, section "___ksymtab+snd_pcm_format_width", align 4
@__kstrtab_snd_pcm_format_physical_width = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_format_physical_width = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_format_physical_width = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_format_physical_width to i32), ptr @__kstrtab_snd_pcm_format_physical_width, ptr @__kstrtabns_snd_pcm_format_physical_width }, section "___ksymtab+snd_pcm_format_physical_width", align 4
@__kstrtab_snd_pcm_format_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_format_size = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_format_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_format_size to i32), ptr @__kstrtab_snd_pcm_format_size, ptr @__kstrtabns_snd_pcm_format_size }, section "___ksymtab+snd_pcm_format_size", align 4
@__kstrtab_snd_pcm_format_silence_64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_format_silence_64 = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_format_silence_64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_format_silence_64 to i32), ptr @__kstrtab_snd_pcm_format_silence_64, ptr @__kstrtabns_snd_pcm_format_silence_64 }, section "___ksymtab+snd_pcm_format_silence_64", align 4
@__kstrtab_snd_pcm_format_set_silence = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_format_set_silence = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_format_set_silence = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_format_set_silence to i32), ptr @__kstrtab_snd_pcm_format_set_silence, ptr @__kstrtabns_snd_pcm_format_set_silence }, section "___ksymtab+snd_pcm_format_set_silence", align 4
@snd_pcm_known_rates = external dso_local local_unnamed_addr constant %struct.snd_pcm_hw_constraint_list, align 4
@__kstrtab_snd_pcm_hw_limit_rates = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_hw_limit_rates = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_hw_limit_rates = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_hw_limit_rates to i32), ptr @__kstrtab_snd_pcm_hw_limit_rates, ptr @__kstrtabns_snd_pcm_hw_limit_rates }, section "___ksymtab+snd_pcm_hw_limit_rates", align 4
@__kstrtab_snd_pcm_rate_to_rate_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_rate_to_rate_bit = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_rate_to_rate_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_rate_to_rate_bit to i32), ptr @__kstrtab_snd_pcm_rate_to_rate_bit, ptr @__kstrtabns_snd_pcm_rate_to_rate_bit }, section "___ksymtab+snd_pcm_rate_to_rate_bit", align 4
@__kstrtab_snd_pcm_rate_bit_to_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_rate_bit_to_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_rate_bit_to_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_rate_bit_to_rate to i32), ptr @__kstrtab_snd_pcm_rate_bit_to_rate, ptr @__kstrtabns_snd_pcm_rate_bit_to_rate }, section "___ksymtab+snd_pcm_rate_bit_to_rate", align 4
@__kstrtab_snd_pcm_rate_mask_intersect = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_rate_mask_intersect = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_rate_mask_intersect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_rate_mask_intersect to i32), ptr @__kstrtab_snd_pcm_rate_mask_intersect, ptr @__kstrtabns_snd_pcm_rate_mask_intersect }, section "___ksymtab_gpl+snd_pcm_rate_mask_intersect", align 4
@__kstrtab_snd_pcm_rate_range_to_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_rate_range_to_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_rate_range_to_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_rate_range_to_bits to i32), ptr @__kstrtab_snd_pcm_rate_range_to_bits, ptr @__kstrtabns_snd_pcm_rate_range_to_bits }, section "___ksymtab_gpl+snd_pcm_rate_range_to_bits", align 4
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_snd_pcm_format_big_endian, ptr @__ksymtab_snd_pcm_format_linear, ptr @__ksymtab_snd_pcm_format_little_endian, ptr @__ksymtab_snd_pcm_format_physical_width, ptr @__ksymtab_snd_pcm_format_set_silence, ptr @__ksymtab_snd_pcm_format_signed, ptr @__ksymtab_snd_pcm_format_silence_64, ptr @__ksymtab_snd_pcm_format_size, ptr @__ksymtab_snd_pcm_format_unsigned, ptr @__ksymtab_snd_pcm_format_width, ptr @__ksymtab_snd_pcm_hw_limit_rates, ptr @__ksymtab_snd_pcm_rate_bit_to_rate, ptr @__ksymtab_snd_pcm_rate_mask_intersect, ptr @__ksymtab_snd_pcm_rate_range_to_bits, ptr @__ksymtab_snd_pcm_rate_to_rate_bit], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_pcm_format_signed(i32 noundef %0) #0 {
  %2 = icmp ult i32 %0, 53
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = getelementptr [53 x %struct.pcm_format_data], ptr @pcm_formats, i32 0, i32 %0, i32 3
  %5 = load i8, ptr %4, align 1
  %6 = icmp slt i8 %5, 0
  %7 = select i1 %6, i8 -22, i8 %5
  %8 = sext i8 %7 to i32
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi i32 [ -22, %1 ], [ %8, %3 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_pcm_format_unsigned(i32 noundef %0) #0 {
  %2 = icmp ult i32 %0, 53
  br i1 %2, label %3, label %11

3:                                                ; preds = %1
  %4 = getelementptr [53 x %struct.pcm_format_data], ptr @pcm_formats, i32 0, i32 %0, i32 3
  %5 = load i8, ptr %4, align 1
  %6 = icmp slt i8 %5, 0
  %7 = select i1 %6, i8 -22, i8 %5
  %8 = sext i8 %7 to i32
  %9 = icmp eq i8 %7, 0
  %10 = zext i1 %9 to i32
  br i1 %6, label %11, label %13

11:                                               ; preds = %3, %1
  %12 = phi i32 [ %8, %3 ], [ -22, %1 ]
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi i32 [ %12, %11 ], [ %10, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_pcm_format_linear(i32 noundef %0) #0 {
  %2 = icmp ult i32 %0, 53
  br i1 %2, label %3, label %11

3:                                                ; preds = %1
  %4 = getelementptr [53 x %struct.pcm_format_data], ptr @pcm_formats, i32 0, i32 %0, i32 3
  %5 = load i8, ptr %4, align 1
  %6 = icmp slt i8 %5, 0
  %7 = xor i8 %5, -1
  %8 = lshr i8 %7, 7
  %9 = select i1 %6, i8 0, i8 %8
  %10 = zext i8 %9 to i32
  br label %11

11:                                               ; preds = %3, %1
  %12 = phi i32 [ 0, %1 ], [ %10, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_pcm_format_little_endian(i32 noundef %0) #0 {
  %2 = icmp ult i32 %0, 53
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = getelementptr [53 x %struct.pcm_format_data], ptr @pcm_formats, i32 0, i32 %0, i32 2
  %5 = load i8, ptr %4, align 1
  %6 = icmp slt i8 %5, 0
  %7 = select i1 %6, i8 -22, i8 %5
  %8 = sext i8 %7 to i32
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi i32 [ -22, %1 ], [ %8, %3 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_pcm_format_big_endian(i32 noundef %0) #0 {
  %2 = icmp ult i32 %0, 53
  br i1 %2, label %3, label %11

3:                                                ; preds = %1
  %4 = getelementptr [53 x %struct.pcm_format_data], ptr @pcm_formats, i32 0, i32 %0, i32 2
  %5 = load i8, ptr %4, align 1
  %6 = icmp slt i8 %5, 0
  %7 = select i1 %6, i8 -22, i8 %5
  %8 = sext i8 %7 to i32
  %9 = icmp eq i8 %7, 0
  %10 = zext i1 %9 to i32
  br i1 %6, label %11, label %13

11:                                               ; preds = %3, %1
  %12 = phi i32 [ %8, %3 ], [ -22, %1 ]
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi i32 [ %12, %11 ], [ %10, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_pcm_format_width(i32 noundef %0) #0 {
  %2 = icmp ult i32 %0, 53
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = getelementptr [53 x %struct.pcm_format_data], ptr @pcm_formats, i32 0, i32 %0
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i8 %5 to i32
  %8 = select i1 %6, i32 -22, i32 %7
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi i32 [ -22, %1 ], [ %8, %3 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_pcm_format_physical_width(i32 noundef %0) #0 {
  %2 = icmp ult i32 %0, 53
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = getelementptr [53 x %struct.pcm_format_data], ptr @pcm_formats, i32 0, i32 %0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i8 %5 to i32
  %8 = select i1 %6, i32 -22, i32 %7
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi i32 [ -22, %1 ], [ %8, %3 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_pcm_format_size(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp ult i32 %0, 53
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = getelementptr [53 x %struct.pcm_format_data], ptr @pcm_formats, i32 0, i32 %0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = zext i8 %6 to i32
  %10 = mul i32 %9, %1
  %11 = lshr i32 %10, 3
  br label %12

12:                                               ; preds = %8, %4, %2
  %13 = phi i32 [ %11, %8 ], [ -22, %2 ], [ -22, %4 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @snd_pcm_format_silence_64(i32 noundef %0) #0 {
  %2 = icmp ult i32 %0, 53
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = getelementptr [53 x %struct.pcm_format_data], ptr @pcm_formats, i32 0, i32 %0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr [53 x %struct.pcm_format_data], ptr @pcm_formats, i32 0, i32 %0, i32 4
  %8 = select i1 %6, ptr null, ptr %7
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi ptr [ null, %1 ], [ %8, %3 ]
  ret ptr %10
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_format_set_silence(i32 noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #1 {
  %4 = icmp ult i32 %0, 53
  br i1 %4, label %5, label %55

5:                                                ; preds = %3
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %55, label %7

7:                                                ; preds = %5
  %8 = getelementptr [53 x %struct.pcm_format_data], ptr @pcm_formats, i32 0, i32 %0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr [53 x %struct.pcm_format_data], ptr @pcm_formats, i32 0, i32 %0, i32 4
  %12 = icmp eq i8 %9, 0
  br i1 %12, label %55, label %13

13:                                               ; preds = %7
  %14 = getelementptr [53 x %struct.pcm_format_data], ptr @pcm_formats, i32 0, i32 %0, i32 3
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 1
  %17 = icmp ult i8 %9, 9
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = mul i32 %10, %2
  %21 = lshr i32 %20, 3
  %22 = load i8, ptr %11, align 1
  tail call void @llvm.memset.p0.i32(ptr align 1 %1, i8 %22, i32 %21, i1 false)
  br label %55

23:                                               ; preds = %13
  %24 = lshr i32 %10, 3
  switch i32 %24, label %55 [
    i32 2, label %29
    i32 3, label %37
    i32 4, label %27
    i32 8, label %25
  ]

25:                                               ; preds = %23
  %26 = load i64, ptr %11, align 1
  br label %49

27:                                               ; preds = %23
  %28 = load i32, ptr %11, align 1
  br label %43

29:                                               ; preds = %23
  %30 = load i16, ptr %11, align 1
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi ptr [ %35, %31 ], [ %1, %29 ]
  %33 = phi i32 [ %34, %31 ], [ %2, %29 ]
  %34 = add i32 %33, -1
  store i16 %30, ptr %32, align 1
  %35 = getelementptr i8, ptr %32, i32 2
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %55, label %31

37:                                               ; preds = %37, %23
  %38 = phi ptr [ %41, %37 ], [ %1, %23 ]
  %39 = phi i32 [ %40, %37 ], [ %2, %23 ]
  %40 = add i32 %39, -1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %38, ptr noundef align 1 dereferenceable(3) %11, i32 3, i1 false)
  %41 = getelementptr i8, ptr %38, i32 3
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %55, label %37

43:                                               ; preds = %43, %27
  %44 = phi ptr [ %47, %43 ], [ %1, %27 ]
  %45 = phi i32 [ %46, %43 ], [ %2, %27 ]
  %46 = add i32 %45, -1
  store i32 %28, ptr %44, align 1
  %47 = getelementptr i8, ptr %44, i32 4
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %55, label %43

49:                                               ; preds = %49, %25
  %50 = phi ptr [ %53, %49 ], [ %1, %25 ]
  %51 = phi i32 [ %52, %49 ], [ %2, %25 ]
  %52 = add i32 %51, -1
  store i64 %26, ptr %50, align 1
  %53 = getelementptr i8, ptr %50, i32 8
  %54 = icmp eq i32 %52, 0
  br i1 %54, label %55, label %49

55:                                               ; preds = %49, %43, %37, %31, %23, %19, %7, %5, %3
  %56 = phi i32 [ 0, %19 ], [ -22, %3 ], [ 0, %5 ], [ -22, %7 ], [ 0, %23 ], [ 0, %31 ], [ 0, %37 ], [ 0, %43 ], [ 0, %49 ]
  ret i32 %56
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_hw_limit_rates(ptr nocapture noundef %0) #4 {
  %2 = load i32, ptr getelementptr inbounds (%struct.snd_pcm_hw_constraint_list, ptr @snd_pcm_known_rates, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %20

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.snd_pcm_hardware, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  br label %7

7:                                                ; preds = %17, %4
  %8 = phi i32 [ 0, %4 ], [ %18, %17 ]
  %9 = shl nuw i32 1, %8
  %10 = and i32 %6, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @snd_pcm_known_rates, align 4
  %14 = getelementptr i32, ptr %13, i32 %8
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.snd_pcm_hardware, ptr %0, i32 0, i32 3
  store i32 %15, ptr %16, align 4
  br label %20

17:                                               ; preds = %7
  %18 = add nuw nsw i32 %8, 1
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %20, label %7

20:                                               ; preds = %17, %12, %1
  %21 = getelementptr inbounds %struct.snd_pcm_hardware, ptr %0, i32 0, i32 2
  br label %22

22:                                               ; preds = %26, %20
  %23 = phi i32 [ %2, %20 ], [ %24, %26 ]
  %24 = add i32 %23, -1
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i32, ptr %21, align 8
  %28 = shl nuw i32 1, %24
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %22, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr @snd_pcm_known_rates, align 4
  %33 = getelementptr i32, ptr %32, i32 %24
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.snd_pcm_hardware, ptr %0, i32 0, i32 4
  store i32 %34, ptr %35, align 8
  br label %36

36:                                               ; preds = %31, %22
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_rate_to_rate_bit(i32 noundef %0) #5 {
  %2 = load i32, ptr getelementptr inbounds (%struct.snd_pcm_hw_constraint_list, ptr @snd_pcm_known_rates, i32 0, i32 1), align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @snd_pcm_known_rates, align 4
  br label %6

6:                                                ; preds = %13, %4
  %7 = phi i32 [ 0, %4 ], [ %14, %13 ]
  %8 = getelementptr i32, ptr %5, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = shl nuw i32 1, %7
  br label %16

13:                                               ; preds = %6
  %14 = add nuw i32 %7, 1
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %16, label %6

16:                                               ; preds = %13, %11, %1
  %17 = phi i32 [ %12, %11 ], [ -2147483648, %1 ], [ -2147483648, %13 ]
  ret i32 %17
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_rate_bit_to_rate(i32 noundef %0) #5 {
  %2 = load i32, ptr getelementptr inbounds (%struct.snd_pcm_hw_constraint_list, ptr @snd_pcm_known_rates, i32 0, i32 1), align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %12, %1
  %5 = phi i32 [ %13, %12 ], [ 0, %1 ]
  %6 = shl nuw i32 1, %5
  %7 = icmp eq i32 %6, %0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = load ptr, ptr @snd_pcm_known_rates, align 4
  %10 = getelementptr i32, ptr %9, i32 %5
  %11 = load i32, ptr %10, align 4
  br label %15

12:                                               ; preds = %4
  %13 = add nuw i32 %5, 1
  %14 = icmp eq i32 %13, %2
  br i1 %14, label %15, label %4

15:                                               ; preds = %12, %8, %1
  %16 = phi i32 [ %11, %8 ], [ 0, %1 ], [ 0, %12 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_pcm_rate_mask_intersect(i32 noundef %0, i32 noundef %1) #6 {
  %3 = and i32 %0, 1073741824
  %4 = icmp eq i32 %3, 0
  %5 = tail call i32 @llvm.umin.i32(i32 %0, i32 -2147483648) #8
  %6 = select i1 %4, i32 %5, i32 1073741824
  %7 = and i32 %1, 1073741824
  %8 = icmp eq i32 %7, 0
  %9 = tail call i32 @llvm.umin.i32(i32 %1, i32 -2147483648) #8
  %10 = select i1 %8, i32 %9, i32 1073741824
  %11 = and i32 %6, 1073741824
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = and i32 %10, 1073741824
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = icmp sgt i32 %6, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = tail call i32 @llvm.smax.i32(i32 %10, i32 -1)
  %20 = and i32 %19, %6
  br label %21

21:                                               ; preds = %18, %16, %13, %2
  %22 = phi i32 [ %10, %2 ], [ %6, %13 ], [ %10, %16 ], [ %20, %18 ]
  ret i32 %22
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_rate_range_to_bits(i32 noundef %0, i32 noundef %1) #5 {
  %3 = load i32, ptr getelementptr inbounds (%struct.snd_pcm_hw_constraint_list, ptr @snd_pcm_known_rates, i32 0, i32 1), align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @snd_pcm_known_rates, align 4
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %18, %7 ]
  %9 = phi i32 [ 0, %5 ], [ %17, %7 ]
  %10 = getelementptr i32, ptr %6, i32 %8
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, %0
  %13 = icmp ugt i32 %11, %1
  %14 = or i1 %12, %13
  %15 = shl nuw i32 1, %8
  %16 = select i1 %14, i32 0, i32 %15
  %17 = or i32 %16, %9
  %18 = add nuw i32 %8, 1
  %19 = icmp eq i32 %18, %3
  br i1 %19, label %20, label %7

20:                                               ; preds = %7
  %21 = icmp eq i32 %17, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %20, %2
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ -2147483648, %22 ], [ %17, %20 ]
  ret i32 %24
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }

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
