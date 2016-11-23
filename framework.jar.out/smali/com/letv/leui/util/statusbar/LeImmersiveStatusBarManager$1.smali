.class Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$1;
.super Lcom/letv/leui/util/statusbar/PickerColorUtils;
.source "LeImmersiveStatusBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;


# direct methods
.method constructor <init>(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$1;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    invoke-direct {p0}, Lcom/letv/leui/util/statusbar/PickerColorUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public update(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$1;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    # invokes: Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->setImmersiveStatusBarColor(I)V
    invoke-static {v0, p1}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->access$100(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;I)V

    .line 46
    return-void
.end method
