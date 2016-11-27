.class Lcom/letv/leui/widget/slide/LeSlideLayout$1;
.super Ljava/lang/Object;
.source "LeSlideLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/slide/LeSlideLayout;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/slide/LeSlideLayout;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    # getter for: Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsInitialize:Z
    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->access$000(Lcom/letv/leui/widget/slide/LeSlideLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    const/4 v1, 0x1

    # setter for: Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsInitialize:Z
    invoke-static {v0, v1}, Lcom/letv/leui/widget/slide/LeSlideLayout;->access$002(Lcom/letv/leui/widget/slide/LeSlideLayout;Z)Z

    .line 132
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    # getter for: Lcom/letv/leui/widget/slide/LeSlideLayout;->mEnableSlideToOpen:Z
    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->access$100(Lcom/letv/leui/widget/slide/LeSlideLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->slideToOpen()V

    .line 137
    :cond_0
    return-void
.end method
