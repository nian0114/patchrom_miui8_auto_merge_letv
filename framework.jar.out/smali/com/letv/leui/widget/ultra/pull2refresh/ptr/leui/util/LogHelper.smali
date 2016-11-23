.class public Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;
.super Ljava/lang/Object;
.source "LogHelper.java"


# static fields
.field public static final LEVEL_DEBUG:I = 0x1

.field public static final LEVEL_ERROR:I = 0x4

.field public static final LEVEL_FATAL:I = 0x5

.field public static final LEVEL_INFO:I = 0x2

.field public static final LEVEL_VERBOSE:I = 0x0

.field public static final LEVEL_WARNING:I = 0x3

.field private static sLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x5

    sput v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->sLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 79
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->sLevel:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 110
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->sLevel:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 93
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->sLevel:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 96
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    .line 97
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 99
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 210
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->sLevel:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 214
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 241
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->sLevel:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 224
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->sLevel:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 227
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    .line 228
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 230
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 254
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->sLevel:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 285
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->sLevel:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 289
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 268
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->sLevel:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 275
    :goto_0
    return-void

    .line 271
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    .line 272
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 274
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 123
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->sLevel:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 153
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->sLevel:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 137
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->sLevel:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 140
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    .line 141
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 143
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setLogLevel(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 25
    sput p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->sLevel:I

    .line 26
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 35
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->sLevel:I

    if-lez v0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 49
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->sLevel:I

    if-lez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 63
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->sLevel:I

    if-lez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 66
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    .line 67
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 69
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 166
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->sLevel:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 197
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->sLevel:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 180
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->sLevel:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 187
    :goto_0
    return-void

    .line 183
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    .line 184
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 186
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
