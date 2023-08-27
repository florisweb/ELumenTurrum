import { Service } from '../../service.jsx';

// import panelConstructor from './panel.jsx';
// import pageConstructor from './page.jsx';

export default new class extends Service {
	get iconSrc() {
		return this.state.lampOn ? 'images/lightBolbOn.png' : 'images/lightBolbOff.png';
	}

	constructor() {
		super({
			id: 'ELumenTurrum',
			name: 'ELumen Turrum',
			iconSrc: 'images/lightBolbOn.png',
			// panelConstructor: panelConstructor,
			// pageConstructor: pageConstructor,
		});
	}

	onEvent(_event){	
	}
}