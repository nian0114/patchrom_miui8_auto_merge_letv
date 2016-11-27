.class public final Landroid/content/pm/ActivityInfo$AccessControlInfo;
.super Ljava/lang/Object;
.source "ActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccessControlInfo"
.end annotation


# static fields
.field public static final ACCESS_CONTROL_MOVE_TASK:I = 0x1

.field public static final ACCESS_CONTROL_RESUME_ACTIVITY:I = 0x2

.field public static final ACCESS_CONTROL_START_ACTIVITY:I = 0x0

.field public static final ACCESS_CONTROL_START_ACTIVITY_FROM_RECENTS:I = 0x3

.field public static final ACCESS_CONTROL_START_ACTIVITY_IN_EXISTING_TASK:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/ActivityInfo$AccessControlInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public options:Landroid/os/Bundle;

.field public pkgName:Ljava/lang/String;

.field public reason:I

.field public requestCode:I

.field public targetIntent:Landroid/content/Intent;

.field public taskId:I

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/content/pm/ActivityInfo$AccessControlInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo$AccessControlInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "reason"    # I

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->reason:I

    iput p1, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->taskId:I

    iput-object p2, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->title:Ljava/lang/String;

    iput-object p3, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->pkgName:Ljava/lang/String;

    iput p4, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->reason:I

    iput-object v1, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->targetIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->requestCode:I

    iput-object v1, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->options:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "pkgName"    # Ljava/lang/String;
    .param p6, "reason"    # I

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->reason:I

    iput-object p1, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->targetIntent:Landroid/content/Intent;

    iput p2, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->requestCode:I

    iput-object p3, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->options:Landroid/os/Bundle;

    iput-object p4, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->title:Ljava/lang/String;

    iput-object p5, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->pkgName:Ljava/lang/String;

    iput p6, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->reason:I

    iput v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->taskId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ActivityInfo$AccessControlInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/ActivityInfo$AccessControlInfo;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->reason:I

    iget-object v0, p1, Landroid/content/pm/ActivityInfo$AccessControlInfo;->targetIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->targetIntent:Landroid/content/Intent;

    iget v0, p1, Landroid/content/pm/ActivityInfo$AccessControlInfo;->requestCode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->requestCode:I

    iget-object v0, p1, Landroid/content/pm/ActivityInfo$AccessControlInfo;->options:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->options:Landroid/os/Bundle;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo$AccessControlInfo;->title:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->title:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo$AccessControlInfo;->pkgName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->pkgName:Ljava/lang/String;

    iget v0, p1, Landroid/content/pm/ActivityInfo$AccessControlInfo;->taskId:I

    iput v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->taskId:I

    iget v0, p1, Landroid/content/pm/ActivityInfo$AccessControlInfo;->reason:I

    iput v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->reason:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->reason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->targetIntent:Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->requestCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->options:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->taskId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->reason:I

    return-void
.end method

.method public static final typeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "unknow"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "start_activity"

    goto :goto_0

    :pswitch_1
    const-string v0, "move_task"

    goto :goto_0

    :pswitch_2
    const-string v0, "resume_activity"

    goto :goto_0

    :pswitch_3
    const-string v0, "start_activity_from_recents"

    goto :goto_0

    :pswitch_4
    const-string v0, "start_activity_in_existing_task"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->targetIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->targetIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->requestCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->options:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->taskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->reason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
