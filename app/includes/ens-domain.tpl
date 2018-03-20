<div class="block">
      <!-- ENS Title -->
      <article class="cont-md">
        <h1 class="text-center" translate="NAV_ENS">
          ENS
        </h1>
        <p>
          The
          <a href="http://ens.readthedocs.io/en/latest/introduction.html" target="_blank" rel="noopener noreferrer">
            Ethereum Name Service
          </a>
          is a distributed, open, and extensible naming system based on the Ethereum blockchain.
          Once you have a name, you can tell your friends to send ETH to <code>mewtopia.eth</code> instead of <code>0x7cB57B5A97eAbe942.....</code>.
        </p>
      </article>
      <!-- / ENS Title -->

      <br />

      <!-- IF ENS CHAIN: Check Status of Name -->
      <article class="row" ng-show="showENS()">
        <section class="col-xs-12 col-sm-6 col-sm-offset-3 text-center">
          <div class="input-group">
            <input class="form-control"
                   type="text"
                   placeholder="mewtopia"
                   ng-model="objENS.name"
                   ng-keyup="$event.keyCode==13 && checkName()"
                   ng-change="nameOnChange()"
                   ng-disabled="objENS.nameReadOnly"
                   ng-class="Validator.isValidENSName(objENS.name) && objENS.name.indexOf('.') == -1 ? 'is-valid' : 'is-invalid'"/>
            <div class="input-group-btn"><a class="btn btn-default">.eth</a></div>
          </div>
          <button class="btn btn-primary" ng-click="checkName()">
            Check ENS Name
          </button>
        </section>
      </article>
      <!-- / IF ENS CHAIN: Check Status of Name -->

  </div>

  <!-- IF NOT ENS CHAIN -->
  <div ng-hide="showENS()" class="alert alert-danger text-center">
    <p>
      The ENS is only available on the ETH and Ropsten (Testnet) chains. You are currently on the {{ajaxReq.type}} chain.
      <br />
      Please use the node switcher in the upper right corner to select "ETH" or "Ropsten".
    </p>
  </div>
  <!-- / IF NOT ENS CHAIN -->
