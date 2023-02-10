# Copyright 2021-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module bash-completion-r1

DESCRIPTION="CLI task runner for developers - a better alternative to make"
HOMEPAGE="https://lets-cli.org"

# Building this list can be done by:
# cd $(mktemp -d)
# PV="0.0.50"
# wget "https://github.com/lets-cli/lets/archive/v${PV}.tar.gz"
# tar -xvzf "v${PV}.tar.gz"
# sed -Ee 's/^(.+) h1:.+$/\t"\1"/g' "lets-${PV}/go.sum" > go.sum.out
EGO_SUM=(
	"github.com/codeclysm/extract v2.2.0+incompatible"
	"github.com/codeclysm/extract v2.2.0+incompatible/go.mod"
	"github.com/coreos/go-semver v0.3.0"
	"github.com/coreos/go-semver v0.3.0/go.mod"
	"github.com/cpuguy83/go-md2man/v2 v2.0.2/go.mod"
	"github.com/creack/pty v1.1.9/go.mod"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/fatih/color v1.13.0"
	"github.com/fatih/color v1.13.0/go.mod"
	"github.com/h2non/filetype v1.1.1"
	"github.com/h2non/filetype v1.1.1/go.mod"
	"github.com/inconshreveable/mousetrap v1.0.1"
	"github.com/inconshreveable/mousetrap v1.0.1/go.mod"
	"github.com/juju/ansiterm v0.0.0-20160907234532-b99631de12cf/go.mod"
	"github.com/juju/clock v0.0.0-20190205081909-9c5c9712527c/go.mod"
	"github.com/juju/cmd v0.0.0-20171107070456-e74f39857ca0/go.mod"
	"github.com/juju/collections v0.0.0-20200605021417-0d0ec82b7271/go.mod"
	"github.com/juju/errors v0.0.0-20150916125642-1b5e39b83d18/go.mod"
	"github.com/juju/errors v0.0.0-20200330140219-3fe23663418f"
	"github.com/juju/errors v0.0.0-20200330140219-3fe23663418f/go.mod"
	"github.com/juju/gnuflag v0.0.0-20171113085948-2ce1bb71843d/go.mod"
	"github.com/juju/httpprof v0.0.0-20141217160036-14bf14c30767/go.mod"
	"github.com/juju/loggo v0.0.0-20170605014607-8232ab8918d9/go.mod"
	"github.com/juju/loggo v0.0.0-20200526014432-9ce3a2e09b5e"
	"github.com/juju/loggo v0.0.0-20200526014432-9ce3a2e09b5e/go.mod"
	"github.com/juju/mutex v0.0.0-20171110020013-1fe2a4bf0a3a/go.mod"
	"github.com/juju/retry v0.0.0-20151029024821-62c620325291/go.mod"
	"github.com/juju/retry v0.0.0-20180821225755-9058e192b216/go.mod"
	"github.com/juju/testing v0.0.0-20180402130637-44801989f0f7/go.mod"
	"github.com/juju/testing v0.0.0-20190723135506-ce30eb24acd2/go.mod"
	"github.com/juju/testing v0.0.0-20201216035041-2be42bba85f3"
	"github.com/juju/testing v0.0.0-20201216035041-2be42bba85f3/go.mod"
	"github.com/juju/utils v0.0.0-20180424094159-2000ea4ff043/go.mod"
	"github.com/juju/utils v0.0.0-20200116185830-d40c2fe10647/go.mod"
	"github.com/juju/utils/v2 v2.0.0-20200923005554-4646bfea2ef1/go.mod"
	"github.com/juju/version v0.0.0-20161031051906-1f41e27e54f2/go.mod"
	"github.com/juju/version v0.0.0-20180108022336-b64dbd566305/go.mod"
	"github.com/juju/version v0.0.0-20191219164919-81c1be00b9a6/go.mod"
	"github.com/julienschmidt/httprouter v1.1.1-0.20151013225520-77a895ad01eb/go.mod"
	"github.com/kballard/go-shellquote v0.0.0-20180428030007-95032a82bc51"
	"github.com/kballard/go-shellquote v0.0.0-20180428030007-95032a82bc51/go.mod"
	"github.com/kindermax/docopt.go v0.7.1"
	"github.com/kindermax/docopt.go v0.7.1/go.mod"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/kr/text v0.2.0"
	"github.com/kr/text v0.2.0/go.mod"
	"github.com/lithammer/dedent v1.1.0"
	"github.com/lithammer/dedent v1.1.0/go.mod"
	"github.com/lunixbochs/vtclean v0.0.0-20160125035106-4fbf7632a2c6/go.mod"
	"github.com/masterzen/azure-sdk-for-go v3.2.0-beta.0.20161014135628-ee4f0065d00c+incompatible/go.mod"
	"github.com/masterzen/simplexml v0.0.0-20160608183007-4572e39b1ab9/go.mod"
	"github.com/masterzen/winrm v0.0.0-20161014151040-7a535cd943fc/go.mod"
	"github.com/masterzen/xmlpath v0.0.0-20140218185901-13f4951698ad/go.mod"
	"github.com/mattn/go-colorable v0.0.6/go.mod"
	"github.com/mattn/go-colorable v0.1.9"
	"github.com/mattn/go-colorable v0.1.9/go.mod"
	"github.com/mattn/go-isatty v0.0.0-20160806122752-66b8e73f3f5c/go.mod"
	"github.com/mattn/go-isatty v0.0.12/go.mod"
	"github.com/mattn/go-isatty v0.0.14"
	"github.com/mattn/go-isatty v0.0.14/go.mod"
	"github.com/niemeyer/pretty v0.0.0-20200227124842-a10e7caefd8e"
	"github.com/niemeyer/pretty v0.0.0-20200227124842-a10e7caefd8e/go.mod"
	"github.com/nu7hatch/gouuid v0.0.0-20131221200532-179d4d0c4d8d/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/russross/blackfriday/v2 v2.1.0/go.mod"
	"github.com/sirupsen/logrus v1.9.0"
	"github.com/sirupsen/logrus v1.9.0/go.mod"
	"github.com/spf13/cobra v1.6.1"
	"github.com/spf13/cobra v1.6.1/go.mod"
	"github.com/spf13/pflag v1.0.5"
	"github.com/spf13/pflag v1.0.5/go.mod"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/testify v1.7.0"
	"github.com/stretchr/testify v1.7.0/go.mod"
	"golang.org/x/crypto v0.0.0-20180214000028-650f4a345ab4/go.mod"
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
	"golang.org/x/crypto v0.0.0-20200622213623-75b288015ac9/go.mod"
	"golang.org/x/crypto v0.0.0-20200820211705-5c72a883971a/go.mod"
	"golang.org/x/exp v0.0.0-20221028150844-83b7d23a625f"
	"golang.org/x/exp v0.0.0-20221028150844-83b7d23a625f/go.mod"
	"golang.org/x/net v0.0.0-20180406214816-61147c48b25b/go.mod"
	"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod"
	"golang.org/x/net v0.0.0-20200904194848-62affa334b73/go.mod"
	"golang.org/x/sync v0.0.0-20200317015054-43a5402ce75a"
	"golang.org/x/sync v0.0.0-20200317015054-43a5402ce75a/go.mod"
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
	"golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod"
	"golang.org/x/sys v0.0.0-20200116001909-b77594299b42/go.mod"
	"golang.org/x/sys v0.0.0-20200223170610-d5e6a3e2c0ae/go.mod"
	"golang.org/x/sys v0.0.0-20200323222414-85ca7c5b95cd/go.mod"
	"golang.org/x/sys v0.0.0-20210630005230-0f9fa26af87c/go.mod"
	"golang.org/x/sys v0.0.0-20220715151400-c0bba94af5f8/go.mod"
	"golang.org/x/sys v0.1.0"
	"golang.org/x/sys v0.1.0/go.mod"
	"golang.org/x/text v0.3.0/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20160105164936-4f90aeace3a2/go.mod"
	"gopkg.in/check.v1 v1.0.0-20200902074654-038fdea0a05b"
	"gopkg.in/check.v1 v1.0.0-20200902074654-038fdea0a05b/go.mod"
	"gopkg.in/errgo.v1 v1.0.0-20161222125816-442357a80af5/go.mod"
	"gopkg.in/httprequest.v1 v1.1.1/go.mod"
	"gopkg.in/mgo.v2 v2.0.0-20160818015218-f2b6f6c918c4/go.mod"
	"gopkg.in/mgo.v2 v2.0.0-20190816093944-a6b53ec6cb22"
	"gopkg.in/mgo.v2 v2.0.0-20190816093944-a6b53ec6cb22/go.mod"
	"gopkg.in/tomb.v1 v1.0.0-20141024135613-dd632973f1e7/go.mod"
	"gopkg.in/yaml.v2 v2.0.0-20170712054546-1be3d31502d6/go.mod"
	"gopkg.in/yaml.v2 v2.3.0"
	"gopkg.in/yaml.v2 v2.3.0/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c/go.mod"
	"gopkg.in/yaml.v3 v3.0.1"
	"gopkg.in/yaml.v3 v3.0.1/go.mod"
	"launchpad.net/gocheck v0.0.0-20140225173054-000000000087/go.mod"
	"launchpad.net/xmlpath v0.0.0-20130614043138-000000000004/go.mod"
)


SOURCE_PN="github.com/lets-cli/lets"

go-module_set_globals

SRC_URI="https://${SOURCE_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
	${EGO_SUM_SRC_URI}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=">=dev-lang/go-1.17.0"

DOCS=( "${S}/docs/docs" )

src_compile() {
	go build -o ${PN} -v -work -x -ldflags \
		"-X main.version=${PV}" \
		|| die "compile failed"
	mkdir -p completions
	./${PN} completion -s bash >completions/${PN}-completion.bash
}

src_test() {
	go test ./... -v \
		|| die "tests failed"
}

src_install() {
	einstalldocs
	dobin ${PN}

	newbashcomp completions/${PN}-completion.bash "${PN}"
}
