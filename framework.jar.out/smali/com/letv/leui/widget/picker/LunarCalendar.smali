.class public Lcom/letv/leui/widget/picker/LunarCalendar;
.super Ljava/lang/Object;
.source "LunarCalendar.java"


# static fields
.field private static final DAYS_BEFORE_MONTH:[I

.field private static final LUNAR_INFO:[I

.field public static final MAX_YEAR:I = 0x833

.field public static final MIN_YEAR:I = 0x76c


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/letv/leui/widget/picker/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    .line 36
    const/16 v0, 0xc8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/letv/leui/widget/picker/LunarCalendar;->LUNAR_INFO:[I

    return-void

    .line 28
    nop

    :array_0
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
        0x16d
    .end array-data

    .line 36
    :array_1
    .array-data 4
        0x84b6bf
        0x4ae53
        0xa5748
        0x5526bd
        0xd2650
        0xd9544
        0x46aab9
        0x56a4d
        0x9ad42
        0x24aeb6
        0x4ae4a
        0x6a4dbe
        0xa4d52
        0xd2546
        0x5d52ba
        0xb544e
        0xd6a43
        0x296d37
        0x95b4b
        0x749bc1
        0x49754
        0xa4b48
        0x5b25bc
        0x6a550
        0x6d445
        0x4adab8
        0x2b64d
        0x95742
        0x2497b7
        0x4974a
        0x664b3e
        0xd4a51
        0xea546
        0x56d4ba
        0x5ad4e
        0x2b644
        0x393738
        0x92e4b
        0x7c96bf
        0xc9553
        0xd4a48
        0x6da53b
        0xb554f
        0x56a45
        0x4aadb9
        0x25d4d
        0x92d42
        0x2c95b6
        0xa954a
        0x7b4abd
        0x6ca51
        0xb5546
        0x555abb
        0x4da4e
        0xa5b43
        0x352bb8
        0x52b4c
        0x8a953f
        0xe9552
        0x6aa48
        0x6ad53c
        0xab54f
        0x4b645
        0x4a5739
        0xa574d
        0x52642
        0x3e9335
        0xd9549
        0x75aabe
        0x56a51
        0x96d46
        0x54aebb
        0x4ad4f
        0xa4d43
        0x4d26b7
        0xd254b
        0x8d52bf
        0xb5452
        0xb6a47
        0x696d3c
        0x95b50
        0x49b45
        0x4a4bb9
        0xa4b4d
        0xab25c2
        0x6a554
        0x6d449
        0x6ada3d
        0xab651
        0x95746
        0x5497bb
        0x4974f
        0x64b44
        0x36a537
        0xea54a
        0x86b2bf
        0x5ac53
        0xab647
        0x5936bc
        0x92e50
        0xc9645
        0x4d4ab8
        0xd4a4c
        0xda541
        0x25aab6
        0x56a49
        0x7aadbd
        0x25d52
        0x92d47
        0x5c95ba
        0xa954e
        0xb4a43
        0x4b5537
        0xad54a
        0x955abf
        0x4ba53
        0xa5b48
        0x652bbc
        0x52b50
        0xa9345
        0x474ab9
        0x6aa4c
        0xad541
        0x24dab6
        0x4b64a
        0x6a573d
        0xa4e51
        0xd2646
        0x5e933a
        0xd534d
        0x5aa43
        0x36b537
        0x96d4b
        0xb4aebf
        0x4ad53
        0xa4d48
        0x6d25bc
        0xd254f
        0xd5244
        0x5daa38
        0xb5a4c
        0x56d41
        0x24adb6
        0x49b4a
        0x7a4bbe
        0xa4b51
        0xaa546
        0x5b52ba
        0x6d24e
        0xada42
        0x355b37    # 4.900003E-39f
        0x9374b
        0x8497c1
        0x49753
        0x64b48
        0x66a53c
        0xea54f
        0x6aa44
        0x4ab638
        0xaae4c
        0x92e42
        0x3c9735
        0xc9649
        0x7d4abd
        0xd4a51
        0xda545
        0x55aaba
        0x56a4e
        0xa6d43
        0x452eb7
        0x52d4b
        0x8a95bf
        0xa9553
        0xb4a47
        0x6b553b
        0xad54f
        0x55a45
        0x4a5d38
        0xa5b4c
        0x52b42
        0x3a93b6
        0x69349
        0x7729bd
        0x6aa51
        0xad546
        0x54daba
        0x4b64e
        0xa5743
        0x452738
        0xd264a
        0x8e933e
        0xd5252
        0xdaa47
        0x66b53b
        0x56d4f
        0x4ae45
        0x4a4eb9
        0xa4d4c
        0xd1541
        0x2d92b5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static daysInLunarMonth(II)I
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    .line 261
    sget-object v0, Lcom/letv/leui/widget/picker/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v1, p0, -0x76c

    aget v0, v0, v1

    const/high16 v1, 0x100000

    shr-int/2addr v1, p1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 262
    const/16 v0, 0x1d

    .line 264
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method private static daysInLunarYear(I)I
    .locals 5
    .param p0, "year"    # I

    .prologue
    .line 241
    const/16 v2, 0x15c

    .line 242
    .local v2, "sum":I
    invoke-static {p0}, Lcom/letv/leui/widget/picker/LunarCalendar;->leapMonth(I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    const/16 v2, 0x179

    .line 245
    :cond_0
    sget-object v3, Lcom/letv/leui/widget/picker/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v4, p0, -0x76c

    aget v3, v3, v4

    const v4, 0xfff80

    and-int v1, v3, v4

    .line 246
    .local v1, "monthInfo":I
    const/high16 v0, 0x80000

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x7

    if-le v0, v3, :cond_2

    .line 247
    and-int v3, v1, v0

    if-eqz v3, :cond_1

    .line 248
    add-int/lit8 v2, v2, 0x1

    .line 246
    :cond_1
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_2
    return v2
.end method

.method public static final daysInMonth(II)I
    .locals 1
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/letv/leui/widget/picker/LunarCalendar;->daysInMonth(IIZ)I

    move-result v0

    return v0
.end method

.method public static final daysInMonth(IIZ)I
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "leap"    # Z

    .prologue
    .line 216
    invoke-static {p0}, Lcom/letv/leui/widget/picker/LunarCalendar;->leapMonth(I)I

    move-result v0

    .line 217
    .local v0, "leapMonth":I
    const/4 v1, 0x0

    .line 219
    .local v1, "offset":I
    if-eqz v0, :cond_0

    if-le p1, v0, :cond_0

    .line 220
    const/4 v1, 0x1

    .line 223
    :cond_0
    if-nez p2, :cond_1

    .line 224
    add-int v2, p1, v1

    invoke-static {p0, v2}, Lcom/letv/leui/widget/picker/LunarCalendar;->daysInLunarMonth(II)I

    move-result v2

    .line 231
    :goto_0
    return v2

    .line 226
    :cond_1
    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_2

    .line 227
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2}, Lcom/letv/leui/widget/picker/LunarCalendar;->daysInLunarMonth(II)I

    move-result v2

    goto :goto_0

    .line 231
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static leapMonth(I)I
    .locals 2
    .param p0, "year"    # I

    .prologue
    .line 274
    sget-object v0, Lcom/letv/leui/widget/picker/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v1, p0, -0x76c

    aget v0, v0, v1

    const/high16 v1, 0xf00000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method public static lunarStrToSolar(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 20
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 284
    const/4 v13, 0x0

    .line 345
    :goto_0
    return-object v13

    .line 286
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 287
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v13, v0, [I

    .line 288
    .local v13, "solarInfo":[I
    const/4 v15, 0x0

    .line 289
    .local v15, "tempyear":I
    const/4 v9, 0x0

    .line 290
    .local v9, "monthIndex":I
    const/4 v3, 0x0

    .line 291
    .local v3, "dayIndex":I
    const/4 v6, -0x1

    .line 292
    .local v6, "indexofYear":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    .line 293
    .local v14, "strLength":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v10, "monthList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v4, "dayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x10405e3

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 296
    .local v17, "years":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x10405e2

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 297
    .local v12, "run":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 298
    const/4 v13, 0x0

    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1070061

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v10, v0}, Lcom/letv/leui/widget/picker/LunarCalendar;->stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1070065

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/letv/leui/widget/picker/LunarCalendar;->stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 302
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 303
    if-ltz v6, :cond_2

    add-int/lit8 v18, v14, -0x3

    move/from16 v0, v18

    if-ge v0, v6, :cond_3

    .line 304
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 307
    :cond_3
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 313
    .local v16, "yearStr":Ljava/lang/String;
    add-int/lit8 v18, v6, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x2

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 314
    .local v11, "monthStr":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x2

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 316
    .local v5, "dayStr":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 317
    invoke-static {}, Lcom/letv/leui/pim/lunar/Lunar;->getInstance()Lcom/letv/leui/pim/lunar/Lunar;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/letv/leui/pim/lunar/Lunar;->leapMonth(I)I

    move-result v8

    .line 318
    .local v8, "mLeapMonth":I
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 319
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v11, v12, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 320
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v18

    add-int/lit8 v9, v18, 0x1

    .line 327
    :cond_4
    :goto_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 328
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v3, v0, :cond_5

    .line 329
    add-int/lit8 v3, v3, 0x1

    .line 331
    :cond_5
    const/4 v7, 0x0

    .line 332
    .local v7, "isLeapMonth":Z
    const/16 v18, 0x1

    move/from16 v0, v18

    if-lt v8, v0, :cond_6

    const/16 v18, 0xc

    move/from16 v0, v18

    if-gt v8, v0, :cond_6

    if-ne v9, v8, :cond_6

    .line 333
    const/4 v7, 0x1

    .line 336
    :cond_6
    const/16 v18, 0x1

    move/from16 v0, v18

    if-lt v8, v0, :cond_9

    const/16 v18, 0xc

    move/from16 v0, v18

    if-gt v8, v0, :cond_9

    .line 337
    if-ge v9, v8, :cond_8

    .line 338
    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    invoke-static {v15, v0, v3, v7}, Lcom/letv/leui/widget/picker/LunarCalendar;->lunarToSolar(IIIZ)[I

    move-result-object v13

    goto/16 :goto_0

    .line 322
    .end local v7    # "isLeapMonth":Z
    :cond_7
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 323
    if-lez v8, :cond_4

    if-lt v9, v8, :cond_4

    .line 324
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 340
    .restart local v7    # "isLeapMonth":Z
    :cond_8
    invoke-static {v15, v9, v3, v7}, Lcom/letv/leui/widget/picker/LunarCalendar;->lunarToSolar(IIIZ)[I

    move-result-object v13

    goto/16 :goto_0

    .line 343
    :cond_9
    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    invoke-static {v15, v0, v3, v7}, Lcom/letv/leui/widget/picker/LunarCalendar;->lunarToSolar(IIIZ)[I

    move-result-object v13

    goto/16 :goto_0
.end method

.method public static final lunarToSolar(IIIZ)[I
    .locals 12
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "monthDay"    # I
    .param p3, "isLeapMonth"    # Z

    .prologue
    const/high16 v11, 0x80000

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/16 v7, 0x76c

    const/4 v8, 0x2

    .line 71
    if-lt p0, v7, :cond_0

    const/16 v5, 0x833

    if-gt p0, v5, :cond_0

    if-lt p1, v9, :cond_0

    const/16 v5, 0xc

    if-gt p1, v5, :cond_0

    if-lt p2, v9, :cond_0

    const/16 v5, 0x1e

    if-le p2, v5, :cond_1

    .line 72
    :cond_0
    new-array v4, v10, [I

    .line 142
    :goto_0
    return-object v4

    .line 75
    :cond_1
    sget-object v5, Lcom/letv/leui/widget/picker/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v6, p0, -0x76c

    aget v5, v5, v6

    and-int/lit8 v5, v5, 0x1f

    add-int/lit8 v0, v5, -0x1

    .line 77
    .local v0, "dayOffset":I
    sget-object v5, Lcom/letv/leui/widget/picker/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v6, p0, -0x76c

    aget v5, v5, v6

    and-int/lit8 v5, v5, 0x60

    shr-int/lit8 v5, v5, 0x5

    if-ne v5, v8, :cond_2

    .line 78
    add-int/lit8 v0, v0, 0x1f

    .line 80
    :cond_2
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_4

    .line 81
    sget-object v5, Lcom/letv/leui/widget/picker/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v6, p0, -0x76c

    aget v5, v5, v6

    add-int/lit8 v6, v1, -0x1

    shr-int v6, v11, v6

    and-int/2addr v5, v6

    if-nez v5, :cond_3

    .line 82
    add-int/lit8 v0, v0, 0x1d

    .line 80
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 84
    :cond_3
    add-int/lit8 v0, v0, 0x1e

    goto :goto_2

    .line 86
    :cond_4
    add-int/2addr v0, p2

    .line 87
    sget-object v5, Lcom/letv/leui/widget/picker/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v6, p0, -0x76c

    aget v5, v5, v6

    const/high16 v6, 0xf00000

    and-int/2addr v5, v6

    shr-int/lit8 v3, v5, 0x14

    .line 90
    .local v3, "leapMonth":I
    if-eqz v3, :cond_6

    .line 91
    if-gt p1, v3, :cond_5

    if-ne p1, v3, :cond_6

    if-eqz p3, :cond_6

    .line 92
    :cond_5
    sget-object v5, Lcom/letv/leui/widget/picker/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v6, p0, -0x76c

    aget v5, v5, v6

    add-int/lit8 v6, p1, -0x1

    shr-int v6, v11, v6

    and-int/2addr v5, v6

    if-nez v5, :cond_b

    .line 93
    add-int/lit8 v0, v0, 0x1d

    .line 99
    :cond_6
    :goto_3
    const/16 v5, 0x16e

    if-gt v0, v5, :cond_7

    rem-int/lit8 v5, p0, 0x4

    if-eqz v5, :cond_8

    const/16 v5, 0x16d

    if-le v0, v5, :cond_8

    .line 100
    :cond_7
    add-int/lit8 p0, p0, 0x1

    .line 101
    rem-int/lit8 v5, p0, 0x4

    if-nez v5, :cond_c

    if-eq p0, v7, :cond_c

    .line 102
    add-int/lit16 v0, v0, -0x16e

    .line 107
    :cond_8
    :goto_4
    new-array v4, v10, [I

    .line 108
    .local v4, "solarInfo":[I
    const/4 v1, 0x1

    :goto_5
    const/16 v5, 0xd

    if-ge v1, v5, :cond_a

    .line 109
    sget-object v5, Lcom/letv/leui/widget/picker/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    aget v2, v5, v1

    .line 110
    .local v2, "iPos":I
    rem-int/lit8 v5, p0, 0x4

    if-nez v5, :cond_9

    if-le v1, v8, :cond_9

    if-eq p0, v7, :cond_9

    .line 111
    add-int/lit8 v2, v2, 0x1

    .line 114
    :cond_9
    rem-int/lit8 v5, p0, 0x4

    if-nez v5, :cond_d

    if-ne v1, v8, :cond_d

    add-int/lit8 v5, v2, 0x1

    if-ne v5, v0, :cond_d

    if-eq p0, v7, :cond_d

    .line 115
    aput v1, v4, v9

    .line 116
    add-int/lit8 v5, v0, -0x1f

    aput v5, v4, v8

    .line 141
    .end local v2    # "iPos":I
    :cond_a
    :goto_6
    const/4 v5, 0x0

    aput p0, v4, v5

    goto/16 :goto_0

    .line 95
    .end local v4    # "solarInfo":[I
    :cond_b
    add-int/lit8 v0, v0, 0x1e

    goto :goto_3

    .line 104
    :cond_c
    add-int/lit16 v0, v0, -0x16d

    goto :goto_4

    .line 120
    .restart local v2    # "iPos":I
    .restart local v4    # "solarInfo":[I
    :cond_d
    if-lt v2, v0, :cond_12

    .line 121
    aput v1, v4, v9

    .line 122
    sget-object v5, Lcom/letv/leui/widget/picker/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    add-int/lit8 v6, v1, -0x1

    aget v2, v5, v6

    .line 123
    rem-int/lit8 v5, p0, 0x4

    if-nez v5, :cond_e

    if-le v1, v8, :cond_e

    if-eq p0, v7, :cond_e

    .line 124
    add-int/lit8 v2, v2, 0x1

    .line 126
    :cond_e
    if-le v0, v2, :cond_f

    .line 127
    sub-int v5, v0, v2

    aput v5, v4, v8

    goto :goto_6

    .line 128
    :cond_f
    if-ne v0, v2, :cond_11

    .line 129
    rem-int/lit8 v5, p0, 0x4

    if-nez v5, :cond_10

    if-ne v1, v8, :cond_10

    if-eq p0, v7, :cond_10

    .line 130
    sget-object v5, Lcom/letv/leui/widget/picker/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    aget v5, v5, v1

    sget-object v6, Lcom/letv/leui/widget/picker/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    add-int/lit8 v7, v1, -0x1

    aget v6, v6, v7

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v8

    goto :goto_6

    .line 132
    :cond_10
    sget-object v5, Lcom/letv/leui/widget/picker/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    aget v5, v5, v1

    sget-object v6, Lcom/letv/leui/widget/picker/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    add-int/lit8 v7, v1, -0x1

    aget v6, v6, v7

    sub-int/2addr v5, v6

    aput v5, v4, v8

    goto :goto_6

    .line 136
    :cond_11
    aput v0, v4, v8

    goto :goto_6

    .line 108
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public static final solarToLunar(III)[I
    .locals 16
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "monthDay"    # I

    .prologue
    .line 153
    const/4 v12, 0x5

    new-array v9, v12, [I

    .line 154
    .local v9, "lunarDate":[I
    new-instance v12, Ljava/util/GregorianCalendar;

    const/16 v13, 0x76c

    const/4 v14, 0x0

    const/16 v15, 0x1f

    invoke-direct {v12, v13, v14, v15}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v12}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 155
    .local v2, "baseDate":Ljava/util/Date;
    new-instance v12, Ljava/util/GregorianCalendar;

    add-int/lit8 v13, p1, -0x1

    move/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v12, v0, v13, v1}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v12}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v10

    .line 156
    .local v10, "objDate":Ljava/util/Date;
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    sub-long/2addr v12, v14

    const-wide/32 v14, 0x5265c00

    div-long/2addr v12, v14

    long-to-int v11, v12

    .line 159
    .local v11, "offset":I
    const/4 v4, 0x0

    .line 160
    .local v4, "daysOfYear":I
    const/16 v6, 0x76c

    .local v6, "iYear":I
    :goto_0
    const/16 v12, 0x833

    if-gt v6, v12, :cond_0

    if-lez v11, :cond_0

    .line 161
    invoke-static {v6}, Lcom/letv/leui/widget/picker/LunarCalendar;->daysInLunarYear(I)I

    move-result v4

    .line 162
    sub-int/2addr v11, v4

    .line 160
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 164
    :cond_0
    if-gez v11, :cond_1

    .line 165
    add-int/2addr v11, v4

    .line 166
    add-int/lit8 v6, v6, -0x1

    .line 169
    :cond_1
    const/4 v12, 0x0

    aput v6, v9, v12

    .line 170
    invoke-static {v6}, Lcom/letv/leui/widget/picker/LunarCalendar;->leapMonth(I)I

    move-result v8

    .line 171
    .local v8, "leapMonth":I
    const/4 v7, 0x0

    .line 172
    .local v7, "isLeap":Z
    const/4 v3, 0x0

    .line 173
    .local v3, "daysOfMonth":I
    const/4 v5, 0x1

    .local v5, "iMonth":I
    :goto_1
    const/16 v12, 0xd

    if-gt v5, v12, :cond_2

    if-lez v11, :cond_2

    .line 174
    invoke-static {v6, v5}, Lcom/letv/leui/widget/picker/LunarCalendar;->daysInLunarMonth(II)I

    move-result v3

    .line 175
    sub-int/2addr v11, v3

    .line 173
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 177
    :cond_2
    if-eqz v8, :cond_3

    if-le v5, v8, :cond_3

    .line 178
    add-int/lit8 v5, v5, -0x1

    .line 180
    if-ne v5, v8, :cond_3

    .line 181
    const/4 v7, 0x1

    .line 185
    :cond_3
    if-gez v11, :cond_4

    .line 186
    add-int/2addr v11, v3

    .line 187
    add-int/lit8 v5, v5, -0x1

    .line 190
    :cond_4
    const/4 v12, 0x1

    aput v5, v9, v12

    .line 191
    const/4 v12, 0x2

    add-int/lit8 v13, v11, 0x1

    aput v13, v9, v12

    .line 192
    const/4 v13, 0x3

    if-eqz v7, :cond_5

    const/4 v12, 0x1

    :goto_2
    aput v12, v9, v13

    .line 193
    const/4 v12, 0x4

    aput v8, v9, v12

    .line 195
    return-object v9

    .line 192
    :cond_5
    const/4 v12, 0x0

    goto :goto_2
.end method

.method private static stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 349
    .local p0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 350
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 351
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 352
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_1
    return-void
.end method
