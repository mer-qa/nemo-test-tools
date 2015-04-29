Name:       nemo-test-tools
Summary:    Nemo test tools
Version:    0.0.1
Release:    1
Group:      Development/Tools
License:    GPLv2
URL:        https://github.com/mer-qa/nemo-test-tools
Source0:    %{name}-%{version}.tar.gz

Requires:   mce-tools

%description
Helper scripts and binaries for running automated tests.

%prep
%setup -q -n %{name}-%{version}

%build
make -C src %{?jobs:-j%jobs}

%install
install -d %{buildroot}%{_bindir}
install --mode=755 scripts/start-ui-test.sh %{buildroot}%{_bindir}/start-ui-test.sh
install --mode=755 scripts/stop-ui-test.sh %{buildroot}%{_bindir}/stop-ui-test.sh
cd src
%make_install DESTDIR=%{buildroot}

%files
%defattr(-,root,root,-)
%{_bindir}/start-ui-test.sh
%{_bindir}/stop-ui-test.sh
%attr(4755, root, root) /usr/sbin/run-root
