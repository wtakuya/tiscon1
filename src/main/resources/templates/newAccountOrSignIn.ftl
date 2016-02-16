<#import "layout.ftl" as layout>
<#import "spring.ftl" as spring/>

<@layout.layout "Register">
            <div class="container">

                <div class="col-md-12">
                    <div>ログインができていません。</br>新規会員登録またはログインをやり直してください</div></br>
                    <ul class="breadcrumb">
                        <li><a href="/">Home</a>
                        </li>
                        <li>New account / Sign in</li>
                    </ul>

                </div>

                <div class="col-md-6">
                    <div class="box">
                        <h1>新規会員登録</h1>

                        <p class="lead">会員登録はお済みですか?</p>
                        <!--とりあえずコメントアウト<p>With registration with us new world of fashion, fantastic discounts and much more opens to you! The whole process will not take you more than a minute!</p>-->
                        <p class="text-muted">ご質問等ございましたら,気軽に<a href="contact.html">こちらから</a>ご連絡下さい。当社の顧客サービスセンターは24時間いつでもご利用いただけます。</p>

                        <hr>

                        <form action="/register" method="post">
                            <@spring.bind "accountRegisterForm.name"/>
                            <#assign error><#if spring.status.error> has-error</#if></#assign>

                            <div class="form-group${error}">
                                <label for="name">名前(アカウント名として使います)</label>
                                <input type="text" class="form-control" id="name" name="name" value="${spring.stringStatusValue}">
                                <@spring.showErrors "<br/>", "help-block"/>
                            </div>

                            <@spring.bind "accountRegisterForm.email"/>
                            <#assign error><#if spring.status.error> has-error</#if></#assign>

                            <div class="form-group${error}">
                                <label for="email">メールアドレス</label>
                                <input type="text" class="form-control" id="email" name="email" value="${spring.stringStatusValue}">
                                <@spring.showErrors "<br/>", "help-block"/>
                            </div>

                            <@spring.bind "accountRegisterForm.password"/>
                            <#assign error><#if spring.status.error> has-error</#if></#assign>

                            <div class="form-group${error}">

                                <label for="password">パスワード</label>
                                <input type="password" class="form-control" id="password" name="password" value="${spring.stringStatusValue}">
                                <@spring.showErrors "<br/>", "help-block"/>
                            </div>


                            <div class="text-center">
                                <button type="submit" class="btn btn-primary"><i class="fa fa-user-md"></i> 会員登録</button>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="box">
                        <h1>ログイン</h1>

                        <p class="lead">既に会員登録がお済の方は、こちらからログインして下さい</p>
                        <!--<p class="text-muted">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies
                            mi vitae est. Mauris placerat eleifend leo.</p>-->

                        <hr>

                        <form action="/login" method="post">
                            <div class="form-group">
                                <label for="name">アカウント名</label>
                                <input type="text" name="account" class="form-control" id="account">
                            </div>
                            <div class="form-group">
                                <label for="password">パスワード</label>
                                <input type="password" name="password" class="form-control" id="password">
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary"><i class="fa fa-sign-in"></i> ログイン</button>
                            </div>
                        </form>
                    </div>
                </div>


            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->


</@layout.layout>
