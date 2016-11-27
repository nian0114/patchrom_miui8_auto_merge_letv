.class public Lcom/letv/leui/util/appsnapshot/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ScreenScrollShoot"

.field public static mode_for_release:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/letv/leui/util/appsnapshot/L;->mode_for_release:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # I

    .prologue
    sget-boolean v1, Lcom/letv/leui/util/appsnapshot/L;->mode_for_release:Z

    if-nez v1, :cond_0

    const-string v1, "[%s][%s]%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "des":Ljava/lang/String;
    const-string v1, "ScreenScrollShoot"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "des":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    sget-boolean v1, Lcom/letv/leui/util/appsnapshot/L;->mode_for_release:Z

    if-nez v1, :cond_0

    const-string v1, "[%s][%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "des":Ljava/lang/String;
    const-string v1, "ScreenScrollShoot"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "des":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    sget-boolean v1, Lcom/letv/leui/util/appsnapshot/L;->mode_for_release:Z

    if-nez v1, :cond_0

    const-string v1, "[%s][%s]%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "des":Ljava/lang/String;
    const-string v1, "ScreenScrollShoot"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "des":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Z

    .prologue
    sget-boolean v1, Lcom/letv/leui/util/appsnapshot/L;->mode_for_release:Z

    if-nez v1, :cond_0

    const-string v2, "[%s][%s]%d"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    const/4 v4, 0x2

    if-eqz p2, :cond_1

    const-string v1, "true"

    :goto_0
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "des":Ljava/lang/String;
    const-string v1, "ScreenScrollShoot"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "des":Ljava/lang/String;
    :cond_0
    return-void

    :cond_1
    const-string v1, "false"

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, ""

    invoke-static {p0, v0, p1}, Lcom/letv/leui/util/appsnapshot/L;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # I

    .prologue
    sget-boolean v1, Lcom/letv/leui/util/appsnapshot/L;->mode_for_release:Z

    if-nez v1, :cond_0

    const-string v1, "[%s][%s]%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "des":Ljava/lang/String;
    const-string v1, "ScreenScrollShoot"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "des":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    sget-boolean v1, Lcom/letv/leui/util/appsnapshot/L;->mode_for_release:Z

    if-nez v1, :cond_0

    const-string v1, "[%s][%s]%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "des":Ljava/lang/String;
    const-string v1, "ScreenScrollShoot"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "des":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Z

    .prologue
    sget-boolean v1, Lcom/letv/leui/util/appsnapshot/L;->mode_for_release:Z

    if-nez v1, :cond_0

    const-string v2, "[%s][%s]%s"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    const/4 v4, 0x2

    if-eqz p2, :cond_1

    const-string v1, "true"

    :goto_0
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "des":Ljava/lang/String;
    const-string v1, "ScreenScrollShoot"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "des":Ljava/lang/String;
    :cond_0
    return-void

    :cond_1
    const-string v1, "false"

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/letv/leui/util/appsnapshot/L;->mode_for_release:Z

    if-nez v0, :cond_0

    const-string v0, "ScreenScrollShoot"

    const-string v1, "[%s]%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # I

    .prologue
    sget-boolean v1, Lcom/letv/leui/util/appsnapshot/L;->mode_for_release:Z

    if-nez v1, :cond_0

    const-string v1, "[%s][%s]%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "des":Ljava/lang/String;
    const-string v1, "ScreenScrollShoot"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "des":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    sget-boolean v1, Lcom/letv/leui/util/appsnapshot/L;->mode_for_release:Z

    if-nez v1, :cond_0

    const-string v1, "[%s][%s]%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "des":Ljava/lang/String;
    const-string v1, "ScreenScrollShoot"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "des":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "msg1"    # Ljava/lang/String;

    .prologue
    sget-boolean v1, Lcom/letv/leui/util/appsnapshot/L;->mode_for_release:Z

    if-nez v1, :cond_0

    const-string v1, "[%s][%s]%s%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "des":Ljava/lang/String;
    const-string v1, "ScreenScrollShoot"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "des":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Z

    .prologue
    sget-boolean v1, Lcom/letv/leui/util/appsnapshot/L;->mode_for_release:Z

    if-nez v1, :cond_0

    const-string v2, "[%s][%s]%s"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    const/4 v4, 0x2

    if-eqz p2, :cond_1

    const-string v1, "true"

    :goto_0
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "des":Ljava/lang/String;
    const-string v1, "ScreenScrollShoot"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "des":Ljava/lang/String;
    :cond_0
    return-void

    :cond_1
    const-string v1, "false"

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    sget-boolean v1, Lcom/letv/leui/util/appsnapshot/L;->mode_for_release:Z

    if-nez v1, :cond_0

    const-string v1, "[%s][%s]%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "des":Ljava/lang/String;
    const-string v1, "ScreenScrollShoot"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "des":Ljava/lang/String;
    :cond_0
    return-void
.end method
