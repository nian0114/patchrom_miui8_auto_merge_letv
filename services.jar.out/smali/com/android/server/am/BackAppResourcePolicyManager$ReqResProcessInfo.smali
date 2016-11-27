.class Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;
.super Ljava/lang/Object;
.source "BackAppResourcePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BackAppResourcePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReqResProcessInfo"
.end annotation


# instance fields
.field adj:I

.field pid:I

.field procName:Ljava/lang/String;

.field rejected:Z

.field tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

.field time:J

.field uid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/BackAppResourcePolicyManager;Ljava/lang/String;Ljava/lang/String;IIIJZ)V
    .locals 1
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "procName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "pid"    # I
    .param p6, "adj"    # I
    .param p7, "time"    # J
    .param p9, "rejected"    # Z

    .prologue
    iput-object p1, p0, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->procName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->uid:I

    iput p5, p0, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->pid:I

    iput p6, p0, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->adj:I

    iput-wide p7, p0, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->time:J

    iput-boolean p9, p0, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->rejected:Z

    return-void
.end method
