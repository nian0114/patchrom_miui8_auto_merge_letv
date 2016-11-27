.class final Lcom/android/server/am/ActivityManagerService$BadProcessInfo;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BadProcessInfo"
.end annotation


# instance fields
.field final longMsg:Ljava/lang/String;

.field final shortMsg:Ljava/lang/String;

.field final stack:Ljava/lang/String;

.field final time:J


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "stack"    # Ljava/lang/String;

    .prologue
    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    iput-wide p1, p0, Lcom/android/server/am/ActivityManagerService$BadProcessInfo;->time:J

    .line 646
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$BadProcessInfo;->shortMsg:Ljava/lang/String;

    .line 647
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$BadProcessInfo;->longMsg:Ljava/lang/String;

    .line 648
    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$BadProcessInfo;->stack:Ljava/lang/String;

    .line 649
    return-void
.end method
